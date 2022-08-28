// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package title_matchmaking

import (
	"context"
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"
	"strconv"
	"strings"
	"time"

	"aws-lambda/pkg/title-matchmaking/constants"
	"aws-lambda/pkg/title-matchmaking/dao"
	"aws-lambda/pkg/title-matchmaking/dao/redis"
	"aws-lambda/pkg/title-matchmaking/models"
	"aws-lambda/pkg/title-matchmaking/utils"

	sessionDSMC "github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/session"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	sdkUtils "github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"

	"github.com/aws/aws-lambda-go/events"
	"github.com/cenkalti/backoff"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"

	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
)

var (
	configImpl     = *auth.DefaultConfigRepositoryImpl()
	tokenImpl      = *auth.DefaultTokenRepositoryImpl()
	oauth20Service = &iam.OAuth20Service{
		Client:           factory.NewIamClient(&configImpl),
		ConfigRepository: &configImpl,
		TokenRepository:  &tokenImpl,
	}
	dsmcService = &dsmc.SessionService{
		Client:          factory.NewDsmcClient(&configImpl),
		TokenRepository: &tokenImpl,
	}
	sessionBrowserService = sessionbrowser.SessionService{
		Client:          factory.NewSessionbrowserClient(&configImpl),
		TokenRepository: &tokenImpl,
	}
	settings        interface{}
	partyAttributes interface{}
	matchingAllies  []*dsmcclientmodels.ModelsRequestMatchingAlly
	matchingParties []*dsmcclientmodels.ModelsRequestMatchParty
	partyMembers    []*dsmcclientmodels.ModelsRequestMatchMember
)

// TitleMatchmakingService service for matchmaking
type TitleMatchmakingService struct {
	Name            string
	IamBaseURL      string
	Channel         dao.Channel
	TitleMMDAORedis *redis.TitleMMDAORedis
}

// New creates new TitleMatchmakingService
func New(
	name string,
	iamBaseURL string,
	channelList dao.Channel,
	titleMMDAORedis *redis.TitleMMDAORedis,
) *TitleMatchmakingService {
	service := &TitleMatchmakingService{
		Name:            name,
		IamBaseURL:      iamBaseURL,
		Channel:         channelList,
		TitleMMDAORedis: titleMMDAORedis,
	}

	return service
}

// StartMatchmaking is used as handler
func (titleMMService *TitleMatchmakingService) StartMatchmaking(req *events.APIGatewayProxyRequest) (*events.APIGatewayProxyResponse, error) {
	ctx, cancel := context.WithTimeout(context.Background(), constants.DefaultTime)
	defer cancel()

	// parse token
	reqToken := req.Headers["Authorization"]
	splitToken := strings.Split(reqToken, "Bearer ")
	if len(splitToken) == 1 || len(splitToken) > 2 {
		message := "Invalid token. Token split \"Bearer\" and token authorization"
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusBadRequest, Body: message}, nil
	}
	reqToken = splitToken[1]
	log.Print("Token detected: ", reqToken)

	// convert the token from string to be able to save to token repository
	token, err := utils.ConvertTokenToTokenResponseV3(reqToken)
	if err != nil {
		message := "Unable to convert token to response model. " + err.Error()
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}
	log.Print("String token has converted to token model")

	// store the valid token
	errToken := tokenImpl.Store(*token)
	if errToken != nil {
		message := "Unable to store token. " + errToken.Error()
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}
	log.Print("Stored the token...")

	// verify the token
	log.Printf("client Id: %v", oauth20Service.ConfigRepository.GetClientId())
	log.Printf("client Secret: %v", oauth20Service.ConfigRepository.GetClientSecret())
	input := &o_auth2_0.VerifyTokenV3Params{
		Token: *token.AccessToken,
	}
	verifyConvert, errVerify := oauth20Service.VerifyTokenV3Short(input)
	if errVerify != nil {
		message := "Unable to verify the token. " + errVerify.Error() + ""
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}
	log.Print("Verified the token.")
	namespace := *verifyConvert.Namespace
	log.Printf("Namespace %v", namespace)

	// check the userId
	if verifyConvert.UserID == nil {
		message := "Cannot find userId. You may have the wrong token. Please use the user token with password grant."
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusUnauthorized, Body: message}, nil
	}
	userId := *verifyConvert.UserID
	log.Printf("UserId %v", userId)
	namespaceGame := os.Getenv("GAME_NAMESPACE")
	gameMode := os.Getenv("GAME_MODE")

	// store userId as waiting ticket and look for all users in database
	createTicketErr := titleMMService.createTicket(namespace, gameMode, userId, 1, 1)
	if createTicketErr != nil {
		message := "Unable to create ticket. " + createTicketErr.Error()
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}

	// send notification searching to user
	sendNotificationSearchingErr := sendNotificationSearching(namespace, userId)
	if sendNotificationSearchingErr != nil {
		message := "Unable to send notification searching. User is not online. " + sendNotificationSearchingErr.Error()
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}

	// get Matchmaking request queue
	stringKeyRequest := constants.MatchmakingRequestQueue + ":" + namespace + ":" + gameMode
	getStoredTickets, getStoredTicketsErr := titleMMService.TitleMMDAORedis.Redis.LRange(ctx, stringKeyRequest, 0, 50).Result()
	if getStoredTicketsErr != nil {
		message := "Unable to get stored tickets from redis. " + getStoredTicketsErr.Error()
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}

	// unmarshall all tickets from []string redis to models.MatchmakingTicket
	allTickets := make([]models.MatchmakingTicket, 0)
	for _, matchmakingStringReq := range getStoredTickets {
		var ticket models.MatchmakingTicket
		ticketCreatedErr := json.Unmarshal([]byte(matchmakingStringReq), &ticket)
		if ticketCreatedErr != nil {
			message := "Unable to unmarshalling tickets. " + ticketCreatedErr.Error()
			log.Print(message)

			return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
		}
		allTickets = append(allTickets, ticket)
	}

	// get possible possibleAllies (filter the redundant ticket)
	var possibleAllies []string
	var secondTicket models.MatchmakingTicket
	possibleAllies = append(possibleAllies, userId)
	for _, userRedis := range allTickets {
		if userId != userRedis.UserID {
			secondTicket = userRedis
			possibleAllies = append(possibleAllies, secondTicket.UserID)

			break
		}
		secondTicket = allTickets[0]
	}

	// possible allies
	m := fmt.Sprintf("There are %v tickets in database with id: %v", len(allTickets), possibleAllies)
	log.Print(m)
	if len(possibleAllies) <= 1 {
		go func() {
			b := backoff.NewExponentialBackOff()
			b.MaxElapsedTime = 30 * time.Second

			checkDB := func() error {
				foundUserIds, _ := titleMMService.checkAllies(namespace, userId, gameMode)
				if foundUserIds != nil {
					possibleAllies = foundUserIds
				}

				return nil
			}

			err = backoff.Retry(checkDB, b)
			if err != nil {
				log.Fatalf("error after retrying: %v", err)
			}
		}()

		time.Sleep(30 * time.Second)

		// stop here if there is no match
		message := fmt.Sprintf("Not enough player! %v", m)
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}

	// continue if there is a match
	matchId := utils.GenerateUUID()
	log.Printf("MATCH ID: %+v", matchId)
	partyId := secondTicket.PartyID

	// Create session
	createSessionResponse, createSessionErr := createSession(namespaceGame)
	if createSessionErr != nil {
		message := "Unable to create session of session browser in handler. " + createSessionErr.Error()
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}
	sessionID := *createSessionResponse.SessionID
	log.Printf("Created a session in session browser. sessionId: %+v", sessionID)

	// login client to change token for DSMC service
	clientId := oauth20Service.ConfigRepository.GetClientId()
	clientSecret := oauth20Service.ConfigRepository.GetClientSecret()
	errLoginClient := oauth20Service.LoginClient(&clientId, &clientSecret)
	if errLoginClient != nil {
		message := "Unable to login client. " + errLoginClient.Error()
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}
	log.Print("Login client for DSMC.")

	// Register session
	registerSession, registerSessionErr := registerSessionDSMC(sessionID, gameMode, namespaceGame, partyId, possibleAllies)
	if registerSessionErr != nil {
		message := "Unable to register server in handler. " + registerSessionErr.Error()
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}
	log.Printf("Registered the session in DSMC: %+v", *registerSession.Session.ID)

	// Claim server
	time.Sleep(5 * time.Second) // add a waiting time
	claimServerErr := claimServer(namespaceGame, *registerSession.Session.ID)
	if claimServerErr != nil {
		message := "Unable to claim server in handler. " + claimServerErr.Error()
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}

	// Get server info
	getServerResponse, getServerErr := getServer(namespaceGame, sessionID)
	if getServerErr != nil {
		message := "Unable to get server in handler. " + getServerErr.Error()
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}
	server := *getServerResponse.Session.Server

	// Add player to session
	for _, player := range possibleAllies {
		_, addPlayerErr := addPlayer(namespaceGame, player, sessionID)
		if addPlayerErr != nil {
			message := "Unable to add player session browser to server in handler. " + addPlayerErr.Error()
			log.Print(message)

			return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
		}
	}

	// Get session update
	getSessionUpdateResponse, getSessionUpdateResponseErr := getSessionUpdate(namespaceGame, sessionID)
	if getSessionUpdateResponseErr != nil {
		message := "Unable to get session update in handler. " + getSessionUpdateResponseErr.Error()
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}
	// return if session is not join-able in session browser
	if !*getSessionUpdateResponse.Joinable {
		log.Print("Unable to join the session in session browser service in handler.")
		message := fmt.Sprintf("Unable to join the session in session browser service in handler. \n "+
			"namespace : %v, \n "+
			"session  : %v, \n "+
			"current player : %v",
			*getSessionUpdateResponse.Namespace,
			*getSessionUpdateResponse.SessionID,
			*getSessionUpdateResponse.GameSessionSetting.CurrentPlayer)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}

	// Send notification to all players
	ip := server.IP
	port := server.Port
	online, sendNotificationFoundErr := sendNotificationFound(namespace, *ip, *port, possibleAllies)
	if sendNotificationFoundErr != nil {
		message := "Unable tp send notification match found to all players. " + sendNotificationFoundErr.Error()
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}
	// return if player is not online in websocket
	if !online {
		message := fmt.Sprintf("Unable tp send notification match found to all players. Make sure players %+v are online.", possibleAllies)
		log.Print(message)

		return &events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}

	// successful
	message := fmt.Sprintf("Successfully matchmaking with session: %v, ip: %v, port: %v",
		*getSessionUpdateResponse.SessionID, *ip, *port)
	log.Print(message)
	response := &events.APIGatewayProxyResponse{StatusCode: http.StatusOK, Body: message}

	return response, nil
}

// createTicket is used to create a party and store the ticket in Redis
func (titleMMService *TitleMatchmakingService) createTicket(
	namespace,
	gameMode,
	userId string,
	partyCount,
	partyMemberCount int) error {
	ctx, cancel := context.WithTimeout(context.Background(), 30*time.Second)
	defer cancel()

	// Preparation to create a new channel
	matchmakingChannel := models.Channel{
		Slug: namespace + ":" + gameMode,
		Ruleset: models.RuleSet{
			AllianceRule: models.AllianceRule{
				MinNumber:       2,
				MaxNumber:       2,
				PlayerMinNumber: 1,
				PlayerMaxNumber: 1,
			},
			MatchingRule: []models.MatchingRule{},
			FlexingRule:  []models.FlexingRule{},
		},
		ChannelMetadata: models.ChannelMetadata{
			Namespace:        namespace,
			GameMode:         gameMode,
			UpdatedAt:        strconv.FormatInt(time.Now().UTC().Unix(), 10),
			Description:      "",
			FindMatchTimeout: 3600,
		},
	}
	err := titleMMService.Channel.Save(matchmakingChannel)
	if err != nil {
		log.Print(err.Error())
	}

	createdParty := 0
	generatedAllPartyMembers := models.GeneratedAllPartyMembers
	var matchmakingAllStringReq []string
	for {
		generatedPartyID := utils.GenerateUUID()
		generatedMemberCount := 0
		var generatedPartyMembers []models.RequestPartyMember
		for {
			if userId == "" {
				continue
			}
			generatedPartyMembers = append(generatedPartyMembers, models.RequestPartyMember{
				UserID: userId,
			})
			generatedAllPartyMembers = append(generatedAllPartyMembers, models.RequestPartyMember{
				UserID: userId,
			})
			generatedMemberCount++

			if generatedMemberCount == partyMemberCount {
				break
			}
		}

		// create ticket waiting in DB Redis
		matchmakingTicketReq := models.MatchmakingTicket{
			Channel:       namespace + ":" + gameMode,
			UserID:        userId,
			PartyID:       generatedPartyID,
			PartyMembers:  generatedPartyMembers,
			Priority:      0,
			ServerName:    "",
			ClientVersion: "",
		}
		matchmakingReq := models.MatchmakingRequest{MatchmakingTicket: matchmakingTicketReq}
		matchmakingStringReq, matchmakingStringReqErr := json.Marshal(&matchmakingReq)
		if matchmakingStringReqErr != nil {
			log.Print(matchmakingStringReqErr)

			return matchmakingStringReqErr
		}
		matchmakingAllStringReq = append(matchmakingAllStringReq, string(matchmakingStringReq))
		createdParty++

		if createdParty == partyCount {
			break
		}
	}

	// store Matchmaking Request Queue
	stringKeyRequest := constants.MatchmakingRequestQueue + ":" + namespace + ":" + gameMode
	errPush := titleMMService.TitleMMDAORedis.Redis.LPush(ctx, stringKeyRequest, matchmakingAllStringReq).Err()
	if errPush != nil {
		log.Print(errPush)

		return errPush
	}

	return nil
}

func (titleMMService *TitleMatchmakingService) checkAllies(namespace, userId, gameMode string) ([]string, error) {
	ctx, cancel := context.WithTimeout(context.Background(), 30*time.Second)
	defer cancel()

	stringKeyRequest := constants.MatchmakingRequestQueue + ":" + namespace + ":" + gameMode
	getStoredTickets, getStoredTicketsErr := titleMMService.TitleMMDAORedis.Redis.LRange(ctx, stringKeyRequest, 0, 50).Result()
	if getStoredTicketsErr != nil {
		log.Print(getStoredTicketsErr)
	}

	// unmarshall all tickets from []string redis to models.MatchmakingTicket
	allTickets := make([]models.MatchmakingTicket, 0)
	for _, matchmakingStringReq := range getStoredTickets {
		var ticket models.MatchmakingTicket
		ticketCreatedErr := json.Unmarshal([]byte(matchmakingStringReq), &ticket)
		if ticketCreatedErr != nil {
			log.Print(ticketCreatedErr)
		}
		allTickets = append(allTickets, ticket)
	}

	// get possible allUsers (filter the redundant ticket)
	var allUsers []string
	var foundTicket models.MatchmakingTicket
	allUsers = append(allUsers, userId)
	for _, userRedis := range allTickets {
		if userId != userRedis.UserID {
			foundTicket = userRedis
			allUsers = append(allUsers, foundTicket.UserID)

			break
		}
		foundTicket = allTickets[0]
	}

	return allUsers, nil
}

// GO-SDK lobby service
func sendNotificationSearching(namespace, userId string) error {
	message := "searching"
	topic := constants.MatchmakingNotificationTopic
	body := lobbyclientmodels.ModelFreeFormNotificationRequest{
		Message: &message,
		Topic:   &topic,
	}
	input := &notification.FreeFormNotificationByUserIDParams{
		Body:      &body,
		Namespace: namespace,
		UserID:    userId,
	}
	gameNotificationService := lobby.NotificationService{
		Client:          factory.NewLobbyClient(&configImpl),
		TokenRepository: &tokenImpl,
	}
	sendNotificationSearchingErr := gameNotificationService.FreeFormNotificationByUserIDShort(input)
	if sendNotificationSearchingErr != nil {
		m := fmt.Errorf("unable to send notification match searching to user %v. %v", userId, sendNotificationSearchingErr.Error())
		log.Print(m)

		return m
	}

	return nil
}

// GO-SDK session browser service
func createSession(namespaceGame string) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	allowJoinInProgress := true
	maximum := int32(2)
	minimum := int32(0)
	username := os.Getenv("SESSION_BROWSER_USERNAME")
	password := os.Getenv("SESSION_BROWSER_PASSWORD")
	mapName := os.Getenv("SESSION_BROWSER_MAP_NAME")
	mode := os.Getenv("SESSION_BROWSER_MODE")
	sessionType := os.Getenv("SESSION_BROWSER_TYPE")
	gameVersion := os.Getenv("SESSION_BROWSER_GAME_VERSION")
	gameSetting := sessionbrowserclientmodels.ModelsGameSessionSetting{
		AllowJoinInProgress:   &allowJoinInProgress,
		CurrentInternalPlayer: &minimum,
		CurrentPlayer:         &minimum,
		MapName:               &mapName,
		MaxInternalPlayer:     &maximum,
		MaxPlayer:             &minimum,
		Mode:                  &mode,
		NumBot:                &minimum,
		Password:              &password,
		Settings:              &settings,
	}
	body := sessionbrowserclientmodels.ModelsCreateSessionRequest{
		GameSessionSetting: &gameSetting,
		GameVersion:        &gameVersion,
		Namespace:          &namespaceGame,
		SessionType:        &sessionType,
		Username:           &username,
	}
	input := &session.CreateSessionParams{
		Body:      &body,
		Namespace: namespaceGame,
	}
	createSessionResp, err := sessionBrowserService.CreateSessionShort(input)
	if err != nil {
		log.Printf("Unable to create session. namespace : %s. Error: %v", namespaceGame, err)

		return createSessionResp, err
	}

	return createSessionResp, nil
}

// GO-SDK session DSMC service
func registerSessionDSMC(sessionId, gameMode, namespaceGame, partyId string,
	allUsers []string) (*dsmcclientmodels.ModelsSessionResponse, error) {
	for _, user := range allUsers {
		partyMembers = append(partyMembers, &dsmcclientmodels.ModelsRequestMatchMember{UserID: &user})
	}

	matchingParty := dsmcclientmodels.ModelsRequestMatchParty{
		PartyAttributes: partyAttributes,
		PartyID:         &partyId,
		PartyMembers:    partyMembers,
	}
	matchingParties = append(matchingParties, &matchingParty)

	matchingAlly := dsmcclientmodels.ModelsRequestMatchingAlly{MatchingParties: matchingParties}
	matchingAllies = append(matchingAllies, &matchingAlly)

	clientVersion := ""
	configuration := ""
	deployment := os.Getenv("DSMC_DEPLOYMENT")
	podName := ""
	region := ""

	body := dsmcclientmodels.ModelsCreateSessionRequest{
		ClientVersion:  &clientVersion,
		Configuration:  &configuration,
		Deployment:     &deployment,
		GameMode:       &gameMode,
		MatchingAllies: matchingAllies,
		Namespace:      &namespaceGame,
		PodName:        &podName,
		Region:         &region,
		SessionID:      &sessionId,
	}
	input := &sessionDSMC.CreateSessionParams{
		Body:      &body,
		Namespace: namespaceGame,
	}
	registerSession, registerSessionErr := dsmcService.CreateSessionShort(input)
	if registerSessionErr != nil {
		log.Print(registerSessionErr)

		return nil, registerSessionErr
	}

	return registerSession, nil
}

// GO-SDK DSMC service
func claimServer(namespaceGame string, sessionID string) error {
	body := dsmcclientmodels.ModelsClaimSessionRequest{SessionID: &sessionID}
	input := &sessionDSMC.ClaimServerParams{
		Body:      &body,
		Namespace: namespaceGame,
		RetryPolicy: &sdkUtils.Retry{ // override the SDK default retry policy
			Backoff:  sdkUtils.NewConstantBackoff(5 * time.Second),
			MaxTries: 5,
			RetryCodes: map[int]bool{
				425: true, // server is not ready
			},
			Transport: dsmcService.Client.Runtime.Transport,
		},
	}
	claimServerErr := dsmcService.ClaimServerShort(input)
	if claimServerErr != nil {
		log.Print(claimServerErr.Error())

		return claimServerErr
	}

	return nil
}

// GO-SDK DSMC service
func getServer(namespaceGame, sessionID string) (*dsmcclientmodels.ModelsSessionResponse, error) {
	input := &sessionDSMC.GetSessionParams{
		Namespace: namespaceGame,
		SessionID: sessionID,
	}
	getSession, getSessionErr := dsmcService.GetSessionShort(input)
	if getSessionErr != nil {
		log.Print(getSessionErr)

		return nil, getSessionErr
	}

	return getSession, nil
}

// GO-SDK session browser service
func addPlayer(namespaceGame, userId, sessionId string) (*sessionbrowserclientmodels.ModelsAddPlayerResponse, error) {
	asSpectators := false
	body := sessionbrowserclientmodels.ModelsAddPlayerRequest{
		AsSpectator: &asSpectators,
		UserID:      &userId,
	}
	input := &session.AddPlayerToSessionParams{
		Body:      &body,
		Namespace: namespaceGame,
		SessionID: sessionId,
	}
	addPlayerResp, addPlayerErr := sessionBrowserService.AddPlayerToSessionShort(input)
	if addPlayerErr != nil {
		message := fmt.Errorf("Unable to add player to session id %v. namespace : %s. Error: %v", sessionId, namespaceGame, addPlayerErr)
		log.Print(message)

		return nil, message
	}

	log.Printf("Successfully add player. userId: %v. sessionId: %v, namespace: %v", userId, sessionId, namespaceGame)

	return addPlayerResp, nil
}

// GO-SDK session browser service
func getSessionUpdate(namespaceGame, sessionId string) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	input := &session.GetSessionParams{
		Namespace: namespaceGame,
		SessionID: sessionId,
	}
	getSession, getSessionErr := sessionBrowserService.GetSessionShort(input)
	if getSessionErr != nil {
		log.Print(getSessionErr)

		return nil, getSessionErr
	}
	log.Printf("Successfully get session update: %+v", *getSession.SessionID)

	return getSession, nil
}

// GO-SDK lobby service
func sendNotificationFound(namespace, IP string, port int32, allUsers []string) (bool, error) {
	topic := constants.MatchmakingNotificationTopic
	gameNotificationService := lobby.NotificationService{
		Client:          factory.NewLobbyClient(&configImpl),
		TokenRepository: &tokenImpl,
	}
	messageIPPort := fmt.Sprintf("found %v %v", IP, port)
	body := lobbyclientmodels.ModelFreeFormNotificationRequest{
		Message: &messageIPPort,
		Topic:   &topic,
	}
	for _, userIdToSend := range allUsers {
		input := &notification.FreeFormNotificationByUserIDParams{
			Body:      &body,
			Namespace: namespace,
			UserID:    userIdToSend,
		}
		sendNotificationMatchFoundErr := gameNotificationService.FreeFormNotificationByUserIDShort(input)
		if sendNotificationMatchFoundErr != nil {
			log.Print(sendNotificationMatchFoundErr)

			return false, sendNotificationMatchFoundErr
		}
		log.Printf("Match found! Successfully send notification to userId: %+v", userIdToSend)
	}

	return true, nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"aws-lambda/pkg/constants"
	"aws-lambda/pkg/repository"
	"aws-lambda/pkg/repositoryGame"
	"aws-lambda/pkg/title-matchmaking/models"
	"aws-lambda/pkg/utils"
	"context"
	"encoding/json"
	"fmt"
	dsmcSession "github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/session"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"log"
	"net/http"
	"os"
	"strconv"
	"strings"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"

	"github.com/AccelByte/iam-go-sdk"
	"github.com/aws/aws-lambda-go/events"
	"github.com/cenkalti/backoff"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	iamService "github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"

	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
)

var (
	configImpl              repository.ConfigRepositoryImpl
	tokenRepositoryImpl     repository.TokenRepositoryImpl
	oauthService            iamService.OAuth20Service
	configGameImpl          repositoryGame.ConfigRepositoryGameImpl
	tokenRepositoryGameImpl repositoryGame.TokenRepositoryGameImpl
)

// StartMatchmaking is used as handler
func (titleMMService *TitleMatchmakingService) StartMatchmaking(req *events.APIGatewayProxyRequest) (events.APIGatewayProxyResponse, error) {
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()

	// parse token
	reqToken := req.Headers["Authorization"]
	splitToken := strings.Split(reqToken, "Bearer ")
	if len(splitToken) == 1 || len(splitToken) > 2 {
		log.Print("Token split \"Bearer\" and token authorization")
		message := "Invalid token."
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusUnauthorized, Body: message}
		return response, nil
	}
	reqToken = splitToken[1]
	tokenConvert, err := repository.ConvertTokenToTokenResponseV3(reqToken)
	if tokenConvert == nil {
		log.Print("Unable to convert token to response model :", err.Error())
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusUnauthorized, Body: fmt.Sprint(err.Error())}
		return response, nil
	}

	// validate permission
	clientId := os.Getenv("IAM_CLIENT_ID")
	validateResp, validateErr := titleMMService.validatePermissionHandler(reqToken, clientId, tokenConvert)
	if validateResp != http.StatusOK {
		log.Print("Unable to validate permission handler. ", validateErr.Error())
		response := events.APIGatewayProxyResponse{StatusCode: validateResp, Body: fmt.Sprint(validateErr.Error())}
		return response, nil
	}

	// validate token and get userId
	claims, err := titleMMService.IamClient.ValidateAndParseClaims(reqToken)
	if claims == nil {
		log.Print("Claim is empty. Error : ", err.Error())
		message := "Claim is empty"
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusUnauthorized, Body: fmt.Sprint(message)}
		return response, nil
	}
	if err != nil {
		log.Print("Unable to validate and parse token. Error : ", err.Error())
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusUnauthorized, Body: fmt.Sprint(err.Error())}
		return response, nil
	}
	userId := claims.Subject
	namespace := claims.Namespace
	namespaceGame := os.Getenv("GAME_NAMESPACE")
	gameMode := os.Getenv("GAME_MODE")

	// store the valid token
	errToken := tokenRepositoryImpl.Store(*tokenConvert)
	if errToken != nil {
		log.Print("Unable to store token :", errToken.Error())
		message := "Unable to store token"
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
		return response, nil
	}

	// get token from game client for DSMC
	log.Print("Config Repo Game Client Id : ", configGameImpl.GetClientId())
	oauthService = iamService.OAuth20Service{
		Client:           factory.NewIamClient(&configGameImpl),
		ConfigRepository: &configGameImpl,
		TokenRepository:  &tokenRepositoryGameImpl,
	}
	err = oauthService.GrantTokenCredentials("", "")
	if err != nil {
		log.Print("Unable to grant token : ", err.Error())
		message := "Unable to grant token"
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
		return response, nil
	}
	tokenRepo, err := oauthService.TokenRepository.GetToken()
	if err != nil {
		log.Print("Empty error : ", err.Error())
		message := "Unable to get token"
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
		return response, nil
	}
	if tokenRepo == nil {
		log.Print("Empty tokenRepo.")
		message := "Empty token repository"
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
		return response, nil
	}

	// store userId as waiting ticket and look for all users in database
	createTicketErr := titleMMService.createTicket(namespace, gameMode, userId, 1, 1)
	if createTicketErr != nil {
		log.Print(createTicketErr)
		message := "Unable to create ticket."
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
		return response, nil
	}

	// send notification searching to user
	sendNotificationSearchingErr := sendNotificationSearching(namespace, userId)
	if sendNotificationSearchingErr != nil {
		log.Print(sendNotificationSearchingErr.Error())
		message := "Unable to send notification searching. User is not online"
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
		return response, nil
	}

	// get Matchmaking request queue
	stringKeyRequest := constants.MatchmakingRequestQueue + ":" + namespace + ":" + gameMode
	getStoredTickets, getStoredTicketsErr := titleMMService.TitleMMDAORedis.Redis.LRange(ctx, stringKeyRequest, 0, 50).Result()
	if getStoredTicketsErr != nil {
		log.Print(getStoredTicketsErr)
		message := "Unable to get stored tickets from redis."
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
		return response, nil
	}

	// unmarshall all tickets from []string redis to models.MatchmakingTicket
	allTickets := make([]models.MatchmakingTicket, 0)
	for _, matchmakingStringReq := range getStoredTickets {
		var ticket models.MatchmakingTicket
		ticketCreatedErr := json.Unmarshal([]byte(matchmakingStringReq), &ticket)
		if ticketCreatedErr != nil {
			log.Print(ticketCreatedErr)
			message := "Unable to unmarshalling tickets."
			response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
			return response, nil
		}
		allTickets = append(allTickets, ticket)
	}

	// get possible allUsers (filter the redundant ticket)
	var allUsers []string
	var secondTicket models.MatchmakingTicket
	allUsers = append(allUsers, userId)
	for _, userRedis := range allTickets {
		if userId != userRedis.UserID {
			secondTicket = userRedis
			allUsers = append(allUsers, secondTicket.UserID)
			break
		}
		secondTicket = allTickets[0]
	}

	// possible allies
	possibleAllies := len(allTickets)
	log.Printf("There are %v tickets in database with id: %v", possibleAllies, allUsers)
	if len(allUsers) <= 1 {
		go func() {
			b := backoff.NewExponentialBackOff()
			b.MaxElapsedTime = 5 * time.Second

			checkDB := func() error {
				foundUserIds, _ := titleMMService.checkAllies(namespace, userId, gameMode)
				if foundUserIds != nil {
					allUsers = foundUserIds
				}
				return nil
			}

			err = backoff.Retry(checkDB, b)
			if err != nil {
				log.Fatalf("error after retrying: %v", err)
			}
		}()

		time.Sleep(5 * time.Second)

		log.Printf("Not enough player! There is only %v player", possibleAllies)
		message := "Not enough player"
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
		return response, nil
	}
	matchId := utils.GenerateUUID()
	log.Printf("MATCH ID : %+v", matchId)
	partyId := secondTicket.PartyID

	// create session to get sessionID
	createSessionResponse, createSessionErr := createSession(namespaceGame)
	if createSessionErr != nil {
		log.Print(createSessionErr)
		message := "Unable to create session of session browser in handler."
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
		return response, nil
	}
	sessionID := *createSessionResponse.SessionID
	log.Printf("SESSION ID : %+v", sessionID)

	// register session from DSMC
	_, registerSessionErr := registerSessionDSMC(sessionID, gameMode, namespaceGame, partyId, allUsers)
	if registerSessionErr != nil {
		log.Print(registerSessionErr)
		message := "Unable to register server in handler."
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
		return response, nil
	}

	time.Sleep(5 * time.Second)

	// claim server from DSMC
	claimServerErr := claimServer(namespaceGame, &sessionID)
	if claimServerErr != nil {
		log.Print(claimServerErr)
		message := "Unable to claim server in handler."
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
		return response, nil
	}

	// get server from DSMC
	getServerResponse, getServerErr := getServer(namespaceGame, sessionID)
	if getServerErr != nil {
		log.Print(getServerErr)
		message := "Unable to get server in handler."
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
		return response, nil
	}
	server := *getServerResponse.Session.Server

	// add player to server in session browser
	for _, player := range allUsers {
		_, addPlayerErr := addPlayer(namespaceGame, player, sessionID)
		if addPlayerErr != nil {
			log.Print(getServerErr)
			message := "Unable to add player session browser to server in handler."
			response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
			return response, nil
		}
	}

	// get session update from session browser
	getSessionUpdateResponse, getSessionUpdateResponseErr := getSessionUpdate(namespaceGame, sessionID)
	if getSessionUpdateResponseErr != nil {
		log.Print(getSessionUpdateResponseErr)
		message := "Unable to get session update in handler."
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
		return response, nil
	}

	// if session can be joined in session browser
	if !*getSessionUpdateResponse.Joinable {
		log.Print("Unable to join the session in session browser service in handler.")
		log.Printf("Namespace : %v, SESSION  : %v, current player : %v  ",
			*getSessionUpdateResponse.Namespace,
			*getSessionUpdateResponse.SessionID,
			*getSessionUpdateResponse.GameSessionSetting.CurrentPlayer)
		message := fmt.Sprintf("Can't join the session. Namespace : %v, SESSION  : %v, current player : %v  ",
			*getSessionUpdateResponse.Namespace,
			*getSessionUpdateResponse.SessionID,
			*getSessionUpdateResponse.GameSessionSetting.CurrentPlayer)
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
		return response, nil
	}

	// send notification to all user
	IP := server.IP
	port := server.Port
	online, sendNotificationFoundErr := sendNotificationFound(namespace, *IP, *port, allUsers)
	if !online {
		log.Print(sendNotificationFoundErr)
		message := fmt.Sprintf("Unable tp send notification match found to all users. Make sure user %+v are online", allUsers)
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}
		return response, nil
	}

	log.Print("Successfully matchmaking")
	message := fmt.Sprintf("Successfully matchmaking with session: %v, IP: %v, port: %v",
		*getSessionUpdateResponse.SessionID, *IP, *port)
	response := events.APIGatewayProxyResponse{StatusCode: http.StatusOK, Body: message}
	return response, nil
}

// createTicket is used to create a party and store the ticket in Redis
func (titleMMService *TitleMatchmakingService) createTicket(
	namespace,
	gameMode,
	userId string,
	partyCount,
	partyMemberCount int) error {
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
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
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
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

// validating permission using lambda function
func (titleMMService *TitleMatchmakingService) validatePermissionHandler(reqToken, clientId string,
	tokenResponse *iamclientmodels.OauthmodelTokenResponseV3) (int, error) {
	var namespaceRoles []iam.NamespaceRole
	var permissions []iam.Permission

	for _, namespaceRole := range tokenResponse.NamespaceRoles {
		n := iam.NamespaceRole{
			RoleID:    *namespaceRole.RoleID,
			Namespace: *namespaceRole.Namespace,
		}
		namespaceRoles = append(namespaceRoles, n)
	}
	log.Printf("namespaceRoles : %+v", namespaceRoles)

	var rangeSchedule []string
	for _, permission := range tokenResponse.Permissions {
		p := iam.Permission{
			Resource:        *permission.Resource,
			Action:          int(*permission.Action),
			ScheduledAction: int(permission.SchedAction),
			CronSchedule:    "",
			RangeSchedule:   rangeSchedule,
		}
		permissions = append(permissions, p)
	}

	// validate token
	validateAccessToken, err := titleMMService.IamClient.ValidateAccessToken(reqToken)
	if err != nil {
		log.Print("Validate access token error. Token expired.", err.Error())
		return http.StatusBadRequest, err
	}
	if !validateAccessToken {
		log.Print("Validate access token return false. ", err)
		return http.StatusUnauthorized, err
	} else {
		log.Print("Access token is a valid one.")
	}

	// validate permission
	claims := iam.JWTClaims{
		Namespace:             *tokenResponse.Namespace,
		DisplayName:           *tokenResponse.DisplayName,
		Roles:                 tokenResponse.Roles,
		AcceptedPolicyVersion: nil,
		NamespaceRoles:        namespaceRoles,
		Permissions:           permissions,
		Bans:                  nil,
		JusticeFlags:          0,
		Scope:                 "",
		Country:               "",
		ClientID:              clientId,
		IsComply:              false,
		Claims:                iam.JWTClaims{}.Claims,
	}
	resource := make(map[string]string)
	resource["{namespace}"] = claims.Namespace
	validatePermission, err := titleMMService.IamClient.ValidatePermission(
		&claims,
		iam.Permission{
			Resource: "NAMESPACE:{namespace}:MATCHMAKING",
			Action:   iam.ActionCreate,
		},
		resource,
	)

	if err != nil {
		log.Print("Unable to validate permission. Error : ", err.Error())
		return http.StatusForbidden, err
	} else {
		log.Print("Successful validate permission from iam client")
	}

	if !validatePermission {
		log.Print("Insufficient permissions")
		return http.StatusForbidden, err
	} else {
		log.Print("There's enough permission")
	}

	return http.StatusOK, nil
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
		TokenRepository: &tokenRepositoryImpl,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	sendNotificationSearchingErr := gameNotificationService.FreeFormNotificationByUserID(input)
	if sendNotificationSearchingErr != nil {
		log.Printf("Unable to send notification match searching to lobby. userId : %+v", userId)
		log.Print(sendNotificationSearchingErr.Error())
		return sendNotificationSearchingErr
	}

	return nil
}

// GO-SDK session browser service
func createSession(namespaceGame string) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	allowJoinInProgress := true
	currentPlayer := int32(0)
	maxPlayer := int32(0)
	currentInternalPlayer := int32(0)
	maxInternalPlayer := int32(2)
	numBot := int32(0)
	username := os.Getenv("SESSION_BROWSER_USERNAME")
	password := os.Getenv("SESSION_BROWSER_PASSWORD")
	mapName := os.Getenv("SESSION_BROWSER_MAP_NAME")
	mode := os.Getenv("SESSION_BROWSER_MODE")
	sessionType := os.Getenv("SESSION_BROWSER_TYPE")
	gameVersion := os.Getenv("SESSION_BROWSER_GAME_VERSION")
	var settings interface{}
	var sessionResponse *sessionbrowserclientmodels.ModelsSessionResponse
	gameSetting := sessionbrowserclientmodels.ModelsGameSessionSetting{
		AllowJoinInProgress:   &allowJoinInProgress,
		CurrentInternalPlayer: &currentInternalPlayer,
		CurrentPlayer:         &currentPlayer,
		MapName:               &mapName,
		MaxInternalPlayer:     &maxInternalPlayer,
		MaxPlayer:             &maxPlayer,
		Mode:                  &mode,
		NumBot:                &numBot,
		Password:              &password,
		Settings:              &settings,
	}
	sessionBrowserService := sessionbrowser.SessionService{
		Client:          factory.NewSessionbrowserClient(&configImpl),
		TokenRepository: &tokenRepositoryImpl,
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
	//lint:ignore SA1019 Ignore the deprecation warnings
	createSessionResp, err := sessionBrowserService.CreateSession(input)
	if err != nil {
		log.Printf("Unable to create session. namespace : %s. Error: %v", namespaceGame, err)
		return createSessionResp, err
	}
	if createSessionResp == nil {
		log.Print("create session response is nil: ", createSessionResp)
		return nil, nil
	} else {
		createSessionResponse := &sessionbrowserclientmodels.ModelsSessionResponse{
			CreatedAt:          createSessionResp.CreatedAt,
			GameSessionSetting: createSessionResp.GameSessionSetting,
			GameVersion:        createSessionResp.GameVersion,
			Joinable:           createSessionResp.Joinable,
			Match:              createSessionResp.Match,
			Namespace:          createSessionResp.Namespace,
			Server:             createSessionResp.Server,
			SessionID:          createSessionResp.SessionID,
			SessionType:        createSessionResp.SessionType,
			UserID:             createSessionResp.UserID,
			Username:           createSessionResp.Username,
		}
		sessionResponse = createSessionResponse
	}
	return sessionResponse, nil
}

// GO-SDK session DSMC service
func registerSessionDSMC(sessionId, gameMode, namespaceGame, partyId string,
	allUsers []string) (*dsmcclientmodels.ModelsSessionResponse, error) {

	var partyAttributes interface{}
	var matchingAllies []*dsmcclientmodels.ModelsRequestMatchingAlly
	var matchingParties []*dsmcclientmodels.ModelsRequestMatchParty
	var partyMembers []*dsmcclientmodels.ModelsRequestMatchMember

	for _, userId := range allUsers {
		partyMembers = append(partyMembers, &dsmcclientmodels.ModelsRequestMatchMember{UserID: &userId})
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

	dsmcService := dsmc.SessionService{
		Client:          factory.NewDsmcClient(&configGameImpl),
		TokenRepository: oauthService.TokenRepository,
	}
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
	input := &dsmcSession.CreateSessionParams{
		Body:      &body,
		Namespace: namespaceGame,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	registerSession, registerSessionErr := dsmcService.CreateSession(input)
	if registerSessionErr != nil {
		log.Print(registerSessionErr)
	}
	return registerSession, nil
}

// GO-SDK DSMC service
func claimServer(namespaceGame string, sessionID *string) error {
	dsmcService := dsmc.SessionService{
		Client:          factory.NewDsmcClient(&configGameImpl),
		TokenRepository: oauthService.TokenRepository,
	}
	body := dsmcclientmodels.ModelsClaimSessionRequest{SessionID: sessionID}
	input := &dsmcSession.ClaimServerParams{
		Body:      &body,
		Namespace: namespaceGame,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	claimServerErr := dsmcService.ClaimServer(input)
	if claimServerErr != nil {
		log.Print(claimServerErr)
	}

	return nil
}

// GO-SDK DSMC service
func getServer(namespaceGame, sessionID string) (*dsmcclientmodels.ModelsSessionResponse, error) {
	dsmcService := dsmc.SessionService{
		Client:          factory.NewDsmcClient(&configGameImpl),
		TokenRepository: oauthService.TokenRepository,
	}
	input := &dsmcSession.GetSessionParams{
		Namespace: namespaceGame,
		SessionID: sessionID,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	getSession, getSessionErr := dsmcService.GetSession(input)
	if getSessionErr != nil {
		log.Print(getSessionErr)
	}
	if getSession == nil {
		log.Print("get session server from DSMC service is nil")
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
	sessionBrowserService := sessionbrowser.SessionService{
		Client:          factory.NewSessionbrowserClient(&configImpl),
		TokenRepository: &tokenRepositoryImpl,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	addPlayerResp, addPlayerErr := sessionBrowserService.AddPlayerToSession(input)
	if addPlayerErr != nil {
		log.Printf("Unable to add player to session id %v. namespace : %s. Error: %v", sessionId, namespaceGame, addPlayerErr)
		return addPlayerResp, addPlayerErr
	}
	if addPlayerResp == nil {
		log.Print("add player response is nil: ", addPlayerResp)
		return nil, nil
	}

	log.Printf("Successfully add player. userId: %v. sessionId: %v, namespace: %v", userId, sessionId, namespaceGame)
	return addPlayerResp, nil
}

// GO-SDK session browser service
func getSessionUpdate(namespaceGame, sessionId string) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	sessionBrowserService := sessionbrowser.SessionService{
		Client:          factory.NewSessionbrowserClient(&configImpl),
		TokenRepository: &tokenRepositoryImpl,
	}
	input := &session.GetSessionParams{
		Namespace: namespaceGame,
		SessionID: sessionId,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	getSession, getSessionErr := sessionBrowserService.GetSession(input)
	if getSessionErr != nil {
		log.Print(getSessionErr)
		return getSession, getSessionErr
	}
	if getSession == nil {
		log.Print("get session response is nil: ", getSession)
	} else {
		getSessionResponse := &sessionbrowserclientmodels.ModelsSessionResponse{
			CreatedAt:          getSession.CreatedAt,
			GameSessionSetting: getSession.GameSessionSetting,
			GameVersion:        getSession.GameVersion,
			Joinable:           getSession.Joinable,
			Match:              getSession.Match,
			Namespace:          getSession.Namespace,
			Server:             getSession.Server,
			SessionID:          getSession.SessionID,
			SessionType:        getSession.SessionType,
			UserID:             getSession.UserID,
			Username:           getSession.Username,
		}
		getSession = getSessionResponse
	}

	log.Printf("Successfully get session update : %+v", *getSession)
	return getSession, nil
}

// GO-SDK lobby service
func sendNotificationFound(
	namespace,
	IP string,
	port int32,
	allUsers []string) (bool, error) {
	topic := constants.MatchmakingNotificationTopic
	gameNotificationService := lobby.NotificationService{
		Client:          factory.NewLobbyClient(&configImpl),
		TokenRepository: &tokenRepositoryImpl,
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		sendNotificationMatchFoundErr := gameNotificationService.FreeFormNotificationByUserID(input)
		if sendNotificationMatchFoundErr != nil {
			log.Print(sendNotificationMatchFoundErr)
			return false, sendNotificationMatchFoundErr
		}
		log.Printf("Match found! Successfully send notification to userId : %+v", userIdToSend)
	}

	return true, nil
}

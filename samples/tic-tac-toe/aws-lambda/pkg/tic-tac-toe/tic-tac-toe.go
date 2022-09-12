// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package tic_tac_toe

import (
	"context"
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"regexp"
	"strconv"
	"strings"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"

	"github.com/aws/aws-lambda-go/events"

	"tic-tac-toe/pkg/tic-tac-toe/constants"
	"tic-tac-toe/pkg/tic-tac-toe/dao/redis"
	"tic-tac-toe/pkg/tic-tac-toe/models"
	"tic-tac-toe/pkg/tic-tac-toe/utils"
)

// TicTacToeService service for matchmaking
type TicTacToeService struct {
	ticTacToeDAORedis *redis.TicTacToeDAORedis
}

// New creates new TicTacToeService
func New(
	ticTacToeDAORedis *redis.TicTacToeDAORedis,
) *TicTacToeService {
	service := &TicTacToeService{
		ticTacToeDAORedis: ticTacToeDAORedis,
	}

	return service
}

var (
	configImpl     = *auth.DefaultConfigRepositoryImpl()
	tokenImpl      = *auth.DefaultTokenRepositoryImpl()
	oauth20Service = &iam.OAuth20Service{
		Client:           factory.NewIamClient(&configImpl),
		ConfigRepository: &configImpl,
		TokenRepository:  &tokenImpl,
	}
	gameNotificationService = &lobby.NotificationService{
		Client:          factory.NewLobbyClient(&configImpl),
		TokenRepository: &tokenImpl,
	}
)

// Service is used as handler
func (t *TicTacToeService) Service(req *events.APIGatewayProxyRequest) (events.APIGatewayProxyResponse, error) {
	// parse token
	reqToken := req.Headers["Authorization"]
	splitToken := strings.Split(reqToken, "Bearer ")
	if len(splitToken) == 1 || len(splitToken) > 2 {
		message := "Invalid token. Token split \"Bearer\" and token authorization"
		log.Print(message)

		return events.APIGatewayProxyResponse{StatusCode: http.StatusBadRequest, Body: message}, nil
	}
	reqToken = splitToken[1]
	log.Print("Token detected.")

	// convert the token
	tokenConvert, err := utils.ConvertTokenToTokenResponseV3(reqToken)
	if err != nil {
		message := "Unable to convert token to response model. " + err.Error()
		log.Print(message)

		return events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}

	// store the valid token
	errToken := tokenImpl.Store(*tokenConvert)
	if errToken != nil {
		message := "Unable to store token. " + errToken.Error()
		log.Print(message)

		return events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}, nil
	}
	log.Printf("Successfully store the token")

	// verify token and get userID
	input := &o_auth2_0.VerifyTokenV3Params{
		Token: reqToken,
	}
	claims, errClaims := oauth20Service.VerifyTokenV3Short(input)
	if claims == nil {
		message := "Claim is empty. " + err.Error()

		return events.APIGatewayProxyResponse{StatusCode: http.StatusUnauthorized, Body: fmt.Sprint(message)}, nil
	}
	if errClaims != nil {
		message := "Unable to validate and parse token. " + errClaims.Error()
		log.Print(message)

		return events.APIGatewayProxyResponse{StatusCode: http.StatusUnauthorized, Body: fmt.Sprint(errClaims.Error())}, nil
	}
	userID := claims.UserID
	namespace := *claims.Namespace

	log.Printf("userID request: %s", userID)
	log.Printf("namespace request: %s", namespace)

	// route the API Gateway
	pathVariable := req.PathParameters["proxy"]
	log.Printf("path variable value is %s", pathVariable)

	switch pathVariable {
	case "match":
		if req.HTTPMethod == http.MethodPost {
			response := t.createMatchHandler(userID, namespace)

			return response, nil
		}
	case "stat":
		if req.HTTPMethod == http.MethodGet {
			response := t.getStatHandler(userID)

			return response, nil
		}
	case "move":
		if req.HTTPMethod == http.MethodPost {
			response := t.makeMoveHandler(req.Body, namespace, userID)

			return response, nil
		}
	}

	return events.APIGatewayProxyResponse{
		StatusCode: http.StatusOK,
	}, nil
}

// GO-SDK lobby service
func sendFreeformNotification(namespace, userID, message string) error {
	topic := constants.NotificationTopic
	content := lobbyclientmodels.ModelFreeFormNotificationRequest{
		Message: &message,
		Topic:   &topic,
	}
	input := &notification.FreeFormNotificationByUserIDParams{
		Body:      &content,
		Namespace: namespace,
		UserID:    userID,
	}
	sendNotificationSearchingErr := gameNotificationService.FreeFormNotificationByUserIDShort(input)
	if sendNotificationSearchingErr != nil {
		log.Printf("Unable to send notification match searching to lobby. userID: %+v", userID)
		log.Print(sendNotificationSearchingErr.Error())

		return sendNotificationSearchingErr
	}

	return nil
}

// for path variable MATCH
func (t *TicTacToeService) createMatchHandler(userID, namespace string) events.APIGatewayProxyResponse {
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()

	keyPrefix := constants.Match
	keys, err := t.ticTacToeDAORedis.Redis.Keys(ctx, "*match*").Result()
	log.Printf("length of db is %d", len(keys))

	// check available players
	if len(keys) == 1 {
		log.Print("There is already 1 player")
		log.Printf("this is pRequester key %s", keys[0])

		// get player data
		pRequesterRawData, errRequesterRawData := t.ticTacToeDAORedis.Redis.Get(ctx, keys[0]).Result()
		if errRequesterRawData != nil {
			log.Print(errRequesterRawData.Error())

			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: errRequesterRawData.Error(),
			}
		}
		log.Printf("this is pRequesterRawData. key2 %s", pRequesterRawData)

		pRequesterData := models.MatchTable{}
		err = json.Unmarshal([]byte(pRequesterRawData), &pRequesterData)
		if err != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: err.Error(),
			}
		}

		// update player data
		pRequesterData.MatchStatus = constants.Playing
		opponentData := models.MatchTable{
			UserID:      userID,
			MatchStatus: constants.Playing,
			Winner:      -1,
			PlayerTurn:  1,
			PlayerNum:   2,
			BoardStatus: "000000000",
		}
		pRequesterMarshall, errRequesterMarshall := json.Marshal(pRequesterData)
		if errRequesterMarshall != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: errRequesterMarshall.Error(),
			}
		}
		opponentMarshall, errOpponentMarshall := json.Marshal(opponentData)
		if errOpponentMarshall != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: errOpponentMarshall.Error(),
			}
		}
		t.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+pRequesterData.UserID, pRequesterMarshall, redis.RedisExpTime)
		t.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+opponentData.UserID, opponentMarshall, redis.RedisExpTime)

		// call lobby free form to userid 1 and user id 2 that match found
		log.Printf("player 1 = %s", pRequesterData.UserID)
		log.Printf("player 2 = %s", opponentData.UserID)
		err = sendFreeformNotification(namespace, pRequesterData.UserID, "found 1")
		if err != nil {
			log.Printf("Cannot send free form notif to userID %s, error : %s", pRequesterData.UserID, err.Error())
		}
		err = sendFreeformNotification(namespace, opponentData.UserID, "found 2")
		if err != nil {
			log.Printf("Cannot send free form notif to userID %s, error : %s", pRequesterData.UserID, err.Error())
		}

		// response the match request to user id 2
		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusOK,
		}
	} else if len(keys) >= 2 {
		log.Print("There is already 2 player")
		t.ticTacToeDAORedis.Redis.FlushAll(ctx)
		t.saveInitDB(ctx, userID)

		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusOK,
		}
	} else if len(keys) == 0 {
		log.Print("0 player")
		t.saveInitDB(ctx, userID)

		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusOK,
		}
	}

	return events.APIGatewayProxyResponse{
		StatusCode: http.StatusInternalServerError, Body: "cannot save to redis. " + err.Error(),
	}
}

// for path variable MOVE
func (t *TicTacToeService) makeMoveHandler(requestBody, namespace, userID string) events.APIGatewayProxyResponse {
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()

	// prepare the move request
	keyPrefix := constants.Match
	moveRequest := models.MoveRequest{}
	err := json.Unmarshal([]byte(requestBody), &moveRequest)
	if err != nil {
		log.Println(err.Error())

		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError, Body: err.Error(),
		}
	}
	log.Printf("this is request: index: %d, playerNum: %d", moveRequest.Index, moveRequest.PlayerNum)

	// get the player data
	keyUserID := keyPrefix + userID
	pRequesterRawData, errRequesterRawData := t.ticTacToeDAORedis.Redis.Get(ctx, keyUserID).Result()
	if errRequesterRawData != nil {
		log.Println(errRequesterRawData.Error())

		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError, Body: errRequesterRawData.Error(),
		}
	}
	log.Printf("this is p1Data. key2 %s", pRequesterRawData)

	// get a match
	pRequesterData := models.MatchTable{}
	err = json.Unmarshal([]byte(pRequesterRawData), &pRequesterData)
	if err != nil {
		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error unmarshall with error: %s", err.Error()),
		}
	}
	log.Printf("matchdataP1 userid: %s", pRequesterData.UserID)
	log.Printf("request userid: %s", userID)
	if pRequesterData.UserID != userID {
		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusNotFound, Body: "User Not Found",
		}
	}
	if pRequesterData.PlayerTurn != pRequesterData.PlayerNum {
		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusForbidden, Body: "It's not your turn",
		}
	}
	if pRequesterData.MatchStatus != constants.Playing {
		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusForbidden, Body: "Match is " + pRequesterData.MatchStatus,
		}
	}
	if !isMoveAllowed(moveRequest.Index, pRequesterData.BoardStatus) {
		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusForbidden, Body: fmt.Sprintf("Cannot sign for player %d at index %d", moveRequest.PlayerNum, moveRequest.Index),
		}
	}

	// get opponent data
	key, errKey := t.ticTacToeDAORedis.Redis.Keys(ctx, "*").Result()
	if errKey != nil {
		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error get data from redis: %s", errKey.Error()),
		}
	}
	var opponentKey string
	for i := 0; i < 2; i++ {
		if key[i] != keyPrefix+userID {
			opponentKey = key[i]
		}
	}
	log.Printf("this is key: %s", key[0])
	opponentRawData, errOpponentRawData := t.ticTacToeDAORedis.Redis.Get(ctx, opponentKey).Result()
	if errOpponentRawData != nil {
		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error get data from redis: %s", errOpponentRawData.Error()),
		}
	}
	opponentData := models.MatchTable{}
	err = json.Unmarshal([]byte(opponentRawData), &opponentData)
	if err != nil {
		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall with error: %s", err.Error()),
		}
	}
	log.Printf("this is opponentRawData: %s", opponentRawData)
	log.Printf("this is requesterRawData: %s", pRequesterRawData)
	updatedBoard := replaceAtIndex(pRequesterData.BoardStatus, fmt.Sprint(pRequesterData.PlayerNum), moveRequest.Index)
	if pRequesterData.PlayerTurn == 1 {
		pRequesterData.PlayerTurn = 2
		opponentData.PlayerTurn = 2
	} else {
		pRequesterData.PlayerTurn = 1
		opponentData.PlayerTurn = 1
	}
	log.Printf("this is updatedBoard: %s", pRequesterData.BoardStatus)
	pRequesterData.BoardStatus = updatedBoard
	opponentData.BoardStatus = updatedBoard

	// check winner
	checkWinnerUpdate := checkWinner(updatedBoard)
	pRequesterData.Winner = checkWinnerUpdate
	opponentData.Winner = checkWinnerUpdate
	moveResponse := &models.MoveResponse{
		BoardStatus: pRequesterData.BoardStatus,
		Winner:      checkWinnerUpdate,
	}
	if checkWinnerUpdate == 1 || checkWinnerUpdate == 2 {
		pRequesterData.MatchStatus = constants.GameOver
		opponentData.MatchStatus = constants.GameOver
		moveResponse.MatchStatus = constants.GameOver
		marshal, errMarshal := json.Marshal(moveResponse)
		if errMarshal != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall p1 with error: %s", errMarshal.Error()),
			}
		}
		pRequesterMarshall, errRequesterMarshall := json.Marshal(pRequesterData)
		if errRequesterMarshall != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall p1 with error: %s", errRequesterMarshall.Error()),
			}
		}
		opponentMarshall, errOpponentMarshall := json.Marshal(opponentData)
		if errOpponentMarshall != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall opponentData with error: %s", errOpponentMarshall.Error()),
			}
		}
		log.Printf("this is pRequesterMarshall: %s", string(pRequesterMarshall))
		log.Printf("this is opponentMarshall: %s", string(opponentMarshall))
		t.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+userID, string(pRequesterMarshall), redis.RedisExpTime)
		t.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+opponentData.UserID, string(opponentMarshall), redis.RedisExpTime)
		if pRequesterData.PlayerNum == checkWinnerUpdate {
			err = sendFreeformNotification(namespace, opponentData.UserID, constants.Lose+" "+opponentData.BoardStatus)
			if err != nil {
				log.Printf("Cannot send free form notif to userID %s, error : %s", opponentData.UserID, err.Error())
			}
		}

		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusOK, Body: string(marshal),
		}
	} else if checkWinnerUpdate == 0 {
		pRequesterData.MatchStatus = constants.Playing
		opponentData.MatchStatus = constants.Playing
		moveResponse.MatchStatus = constants.Playing
		marshal, errMarshal := json.Marshal(moveResponse)
		if errMarshal != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall p1 with error: %s", errMarshal.Error()),
			}
		}
		pRequesterMarshall, errRequesterMarshall := json.Marshal(pRequesterData)
		if errRequesterMarshall != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall p1 with error: %s", errRequesterMarshall.Error()),
			}
		}
		opponentMarshall, errOpponentMarshall := json.Marshal(opponentData)
		if errOpponentMarshall != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall opponentData with error: %s", errOpponentMarshall.Error()),
			}
		}
		log.Printf("this is pRequesterMarshall: %s", string(pRequesterMarshall))
		log.Printf("this is opponentMarshall: %s", string(opponentMarshall))
		t.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+userID, string(pRequesterMarshall), redis.RedisExpTime)
		t.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+opponentData.UserID, string(opponentMarshall), redis.RedisExpTime)
		err = sendFreeformNotification(namespace, opponentData.UserID, constants.Playing+fmt.Sprint(opponentData.PlayerNum)+" "+opponentData.BoardStatus)
		if err != nil {
			log.Printf("Cannot send free form notif to userID %s, error : %s", opponentData.UserID, err.Error())
		}
		if err != nil {
			return events.APIGatewayProxyResponse{}
		}

		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusOK, Body: string(marshal),
		}
	} else {
		pRequesterData.MatchStatus = constants.GameOver
		opponentData.MatchStatus = constants.GameOver
		moveResponse.MatchStatus = constants.GameOver
		marshal, errMarshal := json.Marshal(moveResponse)
		if errMarshal != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall with error: %s", errMarshal.Error()),
			}
		}
		pRequesterMarshall, errRequesterMarshall := json.Marshal(pRequesterData)
		if errRequesterMarshall != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall pRequesterData with error: %s", errRequesterMarshall.Error()),
			}
		}
		opponentMarshall, errOpponentMarshall := json.Marshal(opponentData)
		if errOpponentMarshall != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall opponentData with error: %s", errOpponentMarshall.Error()),
			}
		}
		log.Printf("this is pRequesterMarshall: %s", string(pRequesterMarshall))
		log.Printf("this is opponentMarshall: %s", string(opponentMarshall))
		t.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+userID, string(pRequesterMarshall), redis.RedisExpTime)
		t.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+opponentData.UserID, string(opponentMarshall), redis.RedisExpTime)
		err = sendFreeformNotification(namespace, opponentData.UserID, constants.Draw+" "+pRequesterData.BoardStatus)
		if err != nil {
			log.Printf("Cannot send free form notif to userID %s, error : %s", opponentData.UserID, err.Error())
		}
		if err != nil {
			return events.APIGatewayProxyResponse{}
		}

		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusOK, Body: string(marshal),
		}
	}
}

// for path variable STAT
func (t *TicTacToeService) getStatHandler(userID string) events.APIGatewayProxyResponse {
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()

	// get player data
	keyPrefix := constants.Match
	keyUserID := keyPrefix + userID
	playerData, err := t.ticTacToeDAORedis.Redis.Get(ctx, keyUserID).Result()
	if err != nil {
		return events.APIGatewayProxyResponse{}
	}

	return events.APIGatewayProxyResponse{
		StatusCode: 200, Body: playerData,
	}
}

// helper function
func (t *TicTacToeService) saveInitDB(ctx context.Context, userID string) events.APIGatewayProxyResponse {
	keyPrefix := constants.Match
	pRequesterData := models.MatchTable{
		UserID:      userID,
		MatchStatus: constants.NotStarted,
		Winner:      -1,
		PlayerTurn:  1,
		PlayerNum:   1,
		BoardStatus: "000000000",
	}
	pRequesterMarshall, err := json.Marshal(pRequesterData)
	if err != nil {
		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError, Body: err.Error(),
		}
	}
	t.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+pRequesterData.UserID, string(pRequesterMarshall), redis.RedisExpTime)

	return events.APIGatewayProxyResponse{
		StatusCode: http.StatusOK, Body: string(pRequesterMarshall),
	}
}

// return 0 : still playing, 1 : requester player win, 2 : opponent win, 3 : draw
func checkWinner(boardState string) int {
	var winningCombos = [][]int{
		{0, 1, 2},
		{3, 4, 5},
		{6, 7, 8},
		{0, 3, 6},
		{1, 4, 7},
		{2, 5, 8},
		{0, 4, 8},
		{2, 4, 6},
	}
	for _, val := range winningCombos {
		a := val[0]
		b := val[1]
		c := val[2]
		checkNum, err := strconv.Atoi(string(boardState[a]))
		if err != nil {
			log.Fatalf("Error convert string to int %s: ", err)
		}
		if checkNum != 0 && (checkNum == 1 || checkNum == 2) {
			if boardState[a] == boardState[b] && boardState[b] == boardState[c] && boardState[a] == boardState[c] {
				log.Printf("Congratulation! player %s win the game", string(boardState[a]))
				number, errNumber := strconv.Atoi(string(boardState[a]))
				if errNumber != nil {
					log.Printf("Error convert string to int. %s", errNumber.Error())
				}

				return number
			}
		}
	}
	isMatchDraw, err := regexp.MatchString(`0+`, boardState)
	if err != nil {
		return 0
	}
	if !isMatchDraw {
		return 3
	}

	return 0
}

func replaceAtIndex(in string, newChar string, i int) string {
	r := []rune(newChar)
	out := []rune(in)
	out[i] = r[0]

	return string(out)
}

func isMoveAllowed(index int, currentBoard string) bool {
	return string(currentBoard[index]) == "0"
}

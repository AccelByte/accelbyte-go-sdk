// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

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

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"tic-tac-toe/pkg/constants"
	"tic-tac-toe/pkg/repository"
	"tic-tac-toe/pkg/tic-tac-toe/dao/redis/constant"
	"tic-tac-toe/pkg/tic-tac-toe/models"

	"github.com/aws/aws-lambda-go/events"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
)

var (
	configImpl *auth.ConfigRepositoryImpl
	tokenImpl  *auth.TokenRepositoryImpl
)

const (
	NotStarted = "Not Started"
	Playing    = "Playing"
	GameOver   = "Match Over"
	Lose       = "Lose"
	Draw       = "Draw"
)

// Service is used as handler
func (ticTacToeService *TicTacToeService) Service(req *events.APIGatewayProxyRequest) (events.APIGatewayProxyResponse, error) {
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
	// validate token
	validateAccessToken, err := ticTacToeService.IamClient.ValidateAccessToken(reqToken)
	if err != nil {
		log.Print("Validate access token error. Token expired.", err.Error())
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusBadRequest, Body: fmt.Sprint(err.Error())}

		return response, nil
	}
	if !validateAccessToken {
		log.Print("Validate access token return false. ", err)
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusUnauthorized, Body: fmt.Sprint(err.Error())}

		return response, nil
	} else {
		log.Print("Access token is a valid one.")
	}

	// validate token and get userID
	claims, err := ticTacToeService.IamClient.ValidateAndParseClaims(reqToken)
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
	userID := claims.Subject
	namespace := claims.Namespace

	log.Printf("this is userID request: %s", userID)
	log.Printf("this is namespace request: %s", namespace)

	// store the valid token
	errToken := tokenImpl.Store(*tokenConvert)
	if errToken != nil {
		log.Print("Unable to store token :", errToken.Error())
		message := "Unable to store token"
		response := events.APIGatewayProxyResponse{StatusCode: http.StatusInternalServerError, Body: message}

		return response, nil
	}

	//route the API Gateway
	pathVariable := req.PathParameters["proxy"]
	log.Printf("path variable value is %s", pathVariable)

	switch pathVariable {
	case "match":
		if req.HTTPMethod == http.MethodPost {
			response := ticTacToeService.createMatchHandler(userID, namespace)

			return response, nil
		}
	case "stat":
		if req.HTTPMethod == http.MethodGet {
			response := ticTacToeService.getStatHandler(userID)

			return response, nil
		}
	case "move":
		if req.HTTPMethod == http.MethodPost {
			response := ticTacToeService.makeMoveHandler(req.Body, namespace, userID)

			return response, nil
		}
	}

	return events.APIGatewayProxyResponse{
		StatusCode: http.StatusInternalServerError, Body: "cannot save to redis",
	}, nil
}

// GO-SDK lobby service
func sendFreeformNotification(namespace, userID, message string) error {
	topic := constants.NotificationTopic
	content := lobbyclientmodels.ModelFreeFormNotificationRequest{
		Message: &message,
		Topic:   &topic,
	}
	gameNotificationService := lobby.NotificationService{
		Client:          factory.NewLobbyClient(configImpl),
		TokenRepository: tokenImpl,
	}
	input := &notification.FreeFormNotificationByUserIDParams{
		Body:      &content,
		Namespace: namespace,
		UserID:    userID,
	}
	sendNotificationSearchingErr := gameNotificationService.FreeFormNotificationByUserIDShort(input)
	if sendNotificationSearchingErr != nil {
		log.Printf("Unable to send notification match searching to lobby. userID : %+v", userID)
		log.Print(sendNotificationSearchingErr.Error())

		return sendNotificationSearchingErr
	}

	return nil
}

func (ticTacToeService *TicTacToeService) createMatchHandler(userID, namespace string) events.APIGatewayProxyResponse {
	keyPrefix := constants.Match
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()
	keys, err := ticTacToeService.ticTacToeDAORedis.Redis.Keys(ctx, "*match*").Result()
	log.Printf("length of db is %d", len(keys))
	if len(keys) == 1 {
		log.Print("There is already 1 player")
		log.Printf("this is pRequester key %s", keys[0])
		if err != nil {
			log.Println(err.Error())
		}
		pRequesterRawData, err := ticTacToeService.ticTacToeDAORedis.Redis.Get(ctx, keys[0]).Result()
		if err != nil {
			log.Print(err.Error())
		} else {
			log.Println("key2", pRequesterRawData)
		}
		log.Printf("this is pRequesterRawData %s", pRequesterRawData)
		pRequesterData := models.MatchTable{}
		err = json.Unmarshal([]byte(pRequesterRawData), &pRequesterData)
		if err != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: err.Error(),
			}
		}
		pRequesterData.MatchStatus = Playing
		opponentData := models.MatchTable{
			UserID:      userID,
			MatchStatus: Playing,
			Winner:      -1,
			PlayerTurn:  1,
			PlayerNum:   2,
			BoardStatus: "000000000",
		}
		pRequesterMarshall, err := json.Marshal(pRequesterData)
		if err != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: err.Error(),
			}
		}
		opponentMarshall, err := json.Marshal(opponentData)
		if err != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: err.Error(),
			}
		}
		ticTacToeService.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+pRequesterData.UserID, pRequesterMarshall, constant.RedisExpTime)
		ticTacToeService.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+opponentData.UserID, opponentMarshall, constant.RedisExpTime)

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
		ticTacToeService.ticTacToeDAORedis.Redis.FlushAll(ctx)
		ticTacToeService.saveInitDB(ctx, userID)

		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusOK,
		}
	} else if len(keys) == 0 {
		log.Print("0 player")
		ticTacToeService.saveInitDB(ctx, userID)

		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusOK,
		}
	}

	return events.APIGatewayProxyResponse{
		StatusCode: http.StatusInternalServerError, Body: "cannot save to redis",
	}
}

func (ticTacToeService *TicTacToeService) makeMoveHandler(requestBody, namespace, userID string) events.APIGatewayProxyResponse {
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()
	keyPrefix := constants.Match
	moveRequest := models.MoveRequest{}
	err := json.Unmarshal([]byte(requestBody), &moveRequest)
	if err != nil {
		log.Println(err.Error())
	}
	log.Printf("this is request: index : %d, playerNum : %d", moveRequest.Index, moveRequest.PlayerNum)
	keyUserID := keyPrefix + userID
	pRequesterRawData, err := ticTacToeService.ticTacToeDAORedis.Redis.Get(ctx, keyUserID).Result()
	if err != nil {
		log.Println(err.Error())
	} else {
		log.Println("key2", pRequesterRawData)
	}
	log.Printf("this is p1Data %s", pRequesterRawData)
	pRequesterData := models.MatchTable{}
	err = json.Unmarshal([]byte(pRequesterRawData), &pRequesterData)
	if err != nil {
		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall with error: %s", err.Error()),
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
	if pRequesterData.MatchStatus != Playing {
		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusForbidden, Body: "Match is " + pRequesterData.MatchStatus,
		}
	}
	if !isMoveAllowed(moveRequest.Index, pRequesterData.BoardStatus) {
		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusForbidden, Body: fmt.Sprintf("Cannot sign for player %d at index %d", moveRequest.PlayerNum, moveRequest.Index),
		}
	}

	//get opponent data
	key, err := ticTacToeService.ticTacToeDAORedis.Redis.Keys(ctx, "*").Result()
	if err != nil {
		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error get data from redis: %s", err.Error()),
		}
	}
	var opponentKey string
	for i := 0; i < 2; i++ {
		if key[i] != keyPrefix+userID {
			opponentKey = key[i]
		}
	}
	log.Printf("this is key: %s", key[0])
	opponentRawData, err := ticTacToeService.ticTacToeDAORedis.Redis.Get(ctx, opponentKey).Result()
	if err != nil {
		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error get data from redis: %s", err.Error()),
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
	checkWinner := checkWinner(updatedBoard)
	pRequesterData.Winner = checkWinner
	opponentData.Winner = checkWinner
	moveResponse := &models.MoveResponse{
		BoardStatus: pRequesterData.BoardStatus,
		Winner:      checkWinner,
	}
	if checkWinner == 1 || checkWinner == 2 {
		pRequesterData.MatchStatus = GameOver
		opponentData.MatchStatus = GameOver
		moveResponse.MatchStatus = GameOver
		marshal, err := json.Marshal(moveResponse)
		if err != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall p1 with error: %s", err.Error()),
			}
		}
		pRequesterMarshall, err := json.Marshal(pRequesterData)
		if err != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall p1 with error: %s", err.Error()),
			}
		}
		opponentMarshall, err := json.Marshal(opponentData)
		if err != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall opponentData with error: %s", err.Error()),
			}
		}
		log.Printf("this is pRequesterMarshall: %s", string(pRequesterMarshall))
		log.Printf("this is opponentMarshall: %s", string(opponentMarshall))
		ticTacToeService.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+userID, string(pRequesterMarshall), constant.RedisExpTime)
		ticTacToeService.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+opponentData.UserID, string(opponentMarshall), constant.RedisExpTime)
		if pRequesterData.PlayerNum == checkWinner {
			err = sendFreeformNotification(namespace, opponentData.UserID, Lose+" "+opponentData.BoardStatus)
			if err != nil {
				log.Printf("Cannot send free form notif to userID %s, error : %s", opponentData.UserID, err.Error())
			}
		}

		return events.APIGatewayProxyResponse{
			StatusCode: http.StatusOK, Body: string(marshal),
		}
	} else if checkWinner == 0 {
		pRequesterData.MatchStatus = Playing
		opponentData.MatchStatus = Playing
		moveResponse.MatchStatus = Playing
		marshal, err := json.Marshal(moveResponse)
		if err != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall p1 with error: %s", err.Error()),
			}
		}
		pRequesterMarshall, err := json.Marshal(pRequesterData)
		if err != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall p1 with error: %s", err.Error()),
			}
		}
		opponentMarshall, err := json.Marshal(opponentData)
		if err != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall opponentData with error: %s", err.Error()),
			}
		}
		log.Printf("this is pRequesterMarshall: %s", string(pRequesterMarshall))
		log.Printf("this is opponentMarshall: %s", string(opponentMarshall))
		ticTacToeService.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+userID, string(pRequesterMarshall), constant.RedisExpTime)
		ticTacToeService.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+opponentData.UserID, string(opponentMarshall), constant.RedisExpTime)
		err = sendFreeformNotification(namespace, opponentData.UserID, Playing+fmt.Sprint(opponentData.PlayerNum)+" "+opponentData.BoardStatus)
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
		pRequesterData.MatchStatus = GameOver
		opponentData.MatchStatus = GameOver
		moveResponse.MatchStatus = GameOver
		marshal, err := json.Marshal(moveResponse)
		if err != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall with error: %s", err.Error()),
			}
		}
		pRequesterMarshall, err := json.Marshal(pRequesterData)
		if err != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall pRequesterData with error: %s", err.Error()),
			}
		}
		opponentMarshall, err := json.Marshal(opponentData)
		if err != nil {
			return events.APIGatewayProxyResponse{
				StatusCode: http.StatusInternalServerError, Body: fmt.Sprintf("Error marshall opponentData with error: %s", err.Error()),
			}
		}
		log.Printf("this is pRequesterMarshall: %s", string(pRequesterMarshall))
		log.Printf("this is opponentMarshall: %s", string(opponentMarshall))
		ticTacToeService.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+userID, string(pRequesterMarshall), constant.RedisExpTime)
		ticTacToeService.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+opponentData.UserID, string(opponentMarshall), constant.RedisExpTime)
		err = sendFreeformNotification(namespace, opponentData.UserID, Draw+" "+pRequesterData.BoardStatus)
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

func (ticTacToeService *TicTacToeService) getStatHandler(userID string) events.APIGatewayProxyResponse {
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()
	keyPrefix := constants.Match
	keyUserID := keyPrefix + userID
	playerData, err := ticTacToeService.ticTacToeDAORedis.Redis.Get(ctx, keyUserID).Result()
	if err != nil {
		return events.APIGatewayProxyResponse{}
	}

	return events.APIGatewayProxyResponse{
		StatusCode: 200, Body: playerData,
	}
}

func (ticTacToeService *TicTacToeService) saveInitDB(ctx context.Context, userID string) events.APIGatewayProxyResponse {
	keyPrefix := constants.Match
	pRequesterData := models.MatchTable{
		UserID:      userID,
		MatchStatus: NotStarted,
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
	ticTacToeService.ticTacToeDAORedis.Redis.Set(ctx, keyPrefix+pRequesterData.UserID, string(pRequesterMarshall), constant.RedisExpTime)

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
				number, err := strconv.Atoi(string(boardState[a]))
				if err != nil {
					log.Printf("Error convert string to int %s: ", err)
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

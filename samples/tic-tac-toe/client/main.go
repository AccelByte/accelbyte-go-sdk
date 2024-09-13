// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
	"os"
	"strconv"
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/model"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/parser"
	"github.com/sirupsen/logrus"

	"client/pkg/models"
	"client/pkg/utils"
)

const (
	loginCmd             = "a"
	createMatchmakingCmd = "b"
	userInfoCmd          = "c"
	logoutCmd            = "d"
	getStatCmd           = "e"
	NotStarted           = "Not Started"
	Playing              = "Playing"
	Win                  = "Win"
	Lose                 = "Lose"
	Draw                 = "Draw"
	GameOver             = "Match Over"
)

var (
	playerNum                    int
	gameStatus                   string
	boardStatus                  string
	reader                       *bufio.Reader
	ticTacToeServiceHostEndpoint = "http://127.0.0.1:3000"
	moveEndpoint                 = ticTacToeServiceHostEndpoint + "/move"
	createMatchEndpoint          = ticTacToeServiceHostEndpoint + "/match"
	getStatEndpoint              = ticTacToeServiceHostEndpoint + "/stat"
	configImpl                   = *auth.DefaultConfigRepositoryImpl()
	tokenImpl                    = *auth.DefaultTokenRepositoryImpl()
	oauthService                 = iam.OAuth20Service{
		Client:           factory.NewIamClient(&configImpl),
		ConfigRepository: &configImpl,
		TokenRepository:  &tokenImpl,
	}
	connMgr *utils.ConnectionManagerImpl
)

func main() {
	reader = bufio.NewReader(os.Stdin)
	gameStatus = NotStarted
	serve()
}

var websocketMessageHandler = func(dataByte []byte) {
	// for handling websocket message that come from lobby service
	message, err := parser.UnmarshalResponse(dataByte)
	if err != nil {
		logrus.Errorf("Error while unmarshall websocket message: %s", err.Error())
	}
	switch message.Type() {
	case model.TypeNotificationMessage:
		unmarshal, err := parser.UnmarshalResponse(dataByte)
		if err != nil {
			logrus.Error(err)
		}
		data := unmarshal.(*model.NotificationMessage)

		// This is custom contract between client and tic-tac-toe service
		if data.Topic == "NOTIF" {
			defer func() {
				if err := recover(); err != nil {
					logrus.Fatalf("panic occurred: %s", err)
				}
			}()
			message := strings.Fields(data.Payload)
			if message[0] == "found" {
				logrus.Infof("Match found!")
				//render board with initial condition
				renderBoard("000000000")
				playNumStr, err := strconv.Atoi(message[1])
				if err != nil {
					logrus.Errorf("Error while convert str to int. Error msg : %s", err.Error())

					return
				}
				playerNum = playNumStr
				gameStatus = Playing
				if playerNum == 1 {
					logrus.Info("It's your turn (" + getSymbol(playerNum) + "), input index:")
				} else {
					logrus.Info("Waiting your opponent move")
				}
			} else {
				boardStatus = message[1]
				renderBoard(boardStatus)
				if message[0] == Lose {
					logrus.Info("Your opponent has moved!")
					logrus.Infof("Oh no, you lose!")
					gameStatus = Lose
				} else if message[0] == Win {
					logrus.Infof("You win!")
					gameStatus = Win
				} else if message[0] == Draw {
					logrus.Infof("Draw")
					gameStatus = Draw
				} else {
					logrus.Info("It's your turn (" + getSymbol(playerNum) + "), input index:")
				}
			}
		}

		return
	}
}

func getInput() string {
	text, err := reader.ReadString('\n')
	if err != nil {
		return ""
	}
	// convert CRLF to LF
	text = strings.Replace(text, "\n", "", -1)
	text = strings.Replace(text, "\r", "", -1)

	return text
}

func serve() {
	for {
		if gameStatus == Playing {
			command := getInput()
			playingGame(command)
		} else {
			printHelp()
			command := getInput()
			switch command {
			case userInfoCmd:
				userInfo()
			case loginCmd:
				login()
			case logoutCmd:
				logout()
			case createMatchmakingCmd:
				err := createMatchmaking()
				if err != nil {
					logrus.Errorf("Error while create match: %s", err.Error())
				}
			case getStatCmd:
				stat, err := getStat()
				if err != nil {
					logrus.Infof("Error get game status with error: %s", err.Error())
				} else {
					logrus.Infof("This is status of the game: \"%+v\\n\"", stat)
				}
			}
		}
	}
}

func printHelp() {
	fmt.Printf(`
Commands:
# Tic-tac-toe client app
%s: Login
%s: Create Matchmaking
%s: User info
%s: Logout
%s: Get game stat
`,
		loginCmd,
		createMatchmakingCmd,
		userInfoCmd,
		logoutCmd,
		getStatCmd,
	)
}

func userInfo() {
	token, err := oauthService.TokenRepository.GetToken()
	if err != nil {
		logrus.Info("You are not log in")

		return
	}
	logrus.Infof(
		`
User Token: %s
User ID: %s
Namespace: %s
Permissions: %v
Display Name: %s
`,
		*token.AccessToken,
		token.UserID,
		*token.Namespace,
		token.Permissions,
		token.DisplayName,
	)
}

func login() {
	//input for login
	fmt.Println("Username/E-mail: ")
	username := getInput()
	fmt.Println("Password: ")
	password := getInput()

	//request to IAM to login using AccelByte Go SDK
	err := oauthService.Login(username, password)
	if err != nil {
		logrus.Error("Login Failed")

		return
	}
	logrus.Info("Login Successful")

	// listening message from lobby using AccelByte Go SDK
	logrus.Info("Enter websocket mode")
	connMgr = &utils.ConnectionManagerImpl{}
	connection, err := connectionutils.NewWSConnection(
		oauthService.ConfigRepository,
		oauthService.TokenRepository,
		connectionutils.WithMessageHandler(websocketMessageHandler))
	if err != nil {
		panic(err)
	}
	lobbyClient := connectionutils.NewLobbyWebSocketClient(connection)
	_, err = lobbyClient.Connect(false)
	if err != nil {
		panic(err)
	}
	connMgr.Save(connection)
}

func logout() {
	if err := oauthService.Logout(); err != nil {
		logrus.Error("Logout failed")

		return
	}
	logrus.Info("Logout successful")
}

func createMatchmaking() error {
	token, err := oauthService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = utils.SimpleHTTPCall(utils.GetClient(), createMatchEndpoint, "POST", "Bearer "+*token.AccessToken, nil)
	if err != nil {
		return err
	}
	logrus.Info("Successful create matchmaking for tic-tac-toe! Waiting for opponent...")

	return nil
}

func makeMove(request models.MoveRequest) (*models.MoveResponse, error) {
	token, err := oauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	reqBody, errReqBody := json.Marshal(request)
	if errReqBody != nil {
		return nil, errReqBody
	}
	resp, errResp := utils.SimpleHTTPCall(utils.GetClient(), moveEndpoint, "POST", "Bearer "+*token.AccessToken, reqBody)
	if errResp != nil {
		return nil, errResp
	}
	respBody, errRespBody := ioutil.ReadAll(resp.Body)
	if errRespBody != nil {
		return nil, errRespBody
	}
	if resp.StatusCode == http.StatusOK {
		moveResp := &models.MoveResponse{}
		err = json.Unmarshal(respBody, moveResp)
		if err != nil {
			return nil, err
		}

		return moveResp, nil
	} else if resp.StatusCode == http.StatusForbidden {
		logrus.Info(string(respBody))

		return nil, fmt.Errorf("forbidden move, try again: ")
	} else {
		logrus.Info(string(respBody))

		return nil, err
	}
}

func getStat() (*models.MatchTable, error) {
	token, err := oauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	resp, errResp := utils.SimpleHTTPCall(utils.GetClient(), getStatEndpoint, "GET", "Bearer "+*token.AccessToken, nil)
	if errResp != nil {
		return nil, errResp
	}
	respBody, errRespBody := ioutil.ReadAll(resp.Body)
	if errRespBody != nil {
		return nil, errRespBody
	}
	matchTable := models.MatchTable{}
	errUnmarshal := json.Unmarshal(respBody, &matchTable)
	if errUnmarshal != nil {
		return nil, errUnmarshal
	}

	return &matchTable, nil
}

func renderBoard(boardStatus string) {
	fmt.Printf("\n-----------------------------------------------------\n")
	for i := 0; i < 9; i++ {
		if boardStatus[i] == '1' {
			fmt.Printf("O")
		} else if boardStatus[i] == '2' {
			fmt.Printf("X")
		} else {
			fmt.Print(i)
		}
		if (i+1)%3 == 0 && i < 6 {
			fmt.Print("\n_________\n\n")
		}
		if (i+1)%3 != 0 {
			fmt.Print(" | ")
		}
	}
	fmt.Printf("\n-----------------------------------------------------\n")
}

func playingGame(input string) {
	intIndex, err := strconv.Atoi(input)
	if err != nil {
		logrus.Error("error convert")

		return
	}
	move := &models.MoveRequest{
		Index:     intIndex,
		PlayerNum: playerNum,
	}
	resp, errResp := makeMove(*move)
	if errResp != nil {
		logrus.Errorf("Error while make move: %s", errResp.Error())

		return
	}
	renderBoard(resp.BoardStatus)
	if resp.MatchStatus == GameOver {
		if resp.Winner == playerNum {
			logrus.Infof("You win!")
			gameStatus = Win
		} else if resp.Winner == 3 {
			logrus.Infof("Draw!")
			gameStatus = Draw
		} else {
			logrus.Infof("Oh no, you lose!")
			gameStatus = Lose
		}
	} else if resp.MatchStatus == Playing {
		logrus.Info("Waiting for your opponent move")
	}
}

func getSymbol(playerNum int) string {
	if playerNum == 1 {
		return "O"
	}

	return "X"
}

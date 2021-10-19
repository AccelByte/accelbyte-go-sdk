package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/model"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/parser"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/utils"
	"github.com/sirupsen/logrus"
	"io/ioutil"
	"log"
	"net"
	"net/http"
	"os"
	"strconv"
	"strings"
)

const (
	loginCmd             = "1"
	createMatchmakingCmd = "2"
	userInfoCmd          = "3"
	logoutCmd            = "4"
)

var (
	reader       *bufio.Reader
	oauthService = service.OauthService{
		IamService:       factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
		ConfigRepository: &repository.ConfigRepositoryImpl{},
		TokenRepository:  &repository.TokenRepositoryImpl{},
	}
	userService = &service.UserService{
		IamService:      factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
		BasicService:    factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
		TokenRepository: &repository.TokenRepositoryImpl{},
		OauthService:    &oauthService,
	}
	connMgr               *utils.ConnectionManagerImpl
	notificationService   *service.NotificationServiceWebsocket
	matchmakingServiceURL = os.Getenv("CREATE_MATCHMAKING_ENDPOINT")
)

func main() {
	reader = bufio.NewReader(os.Stdin)
	serve()
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
			createMatchmaking()
		}
	}
}

func printHelp() {
	fmt.Printf(`
Commands:
# PoC Matchmaking
%s: Login
%s: Create Matchmaking
%s: User info
%s: Logout
`,
		loginCmd,
		createMatchmakingCmd,
		userInfoCmd,
		logoutCmd,
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
		*token.UserID,
		*token.Namespace,
		token.Permissions,
		*token.DisplayName,
	)
}

func login() {
	fmt.Println("Username/E-mail: ")
	username := getInput()
	fmt.Println("Password: ")
	password := getInput()
	err := userService.Login(username, password)
	if err != nil {
		logrus.Error("Login Failed")
		return
	}
	logrus.Info("Login Successful")
}

func logout() {
	err := userService.Logout()
	if err != nil {
		logrus.Error("Logout failed")
		return
	}
	logrus.Info("Logout successful")
}

func createMatchmaking() {
	// listening message from lobby
	reader = bufio.NewReader(os.Stdin)
	logrus.Info("Enter websocket mode")
	connMgr = &utils.ConnectionManagerImpl{}
	connection, err := connectionutils.NewWebsocketConnection(oauthService.ConfigRepository, oauthService.TokenRepository, lobbyMessageHandler)
	if err != nil {
		panic(err)
	}
	connMgr.Save(connection)
	notificationService = &service.NotificationServiceWebsocket{
		ConfigRepository:  oauthService.ConfigRepository,
		TokenRepository:   oauthService.TokenRepository,
		ConnectionManager: connMgr,
	}
	err = notificationService.GetNotificationMessage()
	if err != nil {
		logrus.Error(err)
		return
	}
	logrus.Info("Listening to lobby via websocket...")

	// send request to custom MM service via AWS API Gateway
	token, err := oauthService.TokenRepository.GetToken()
	if err != nil {
		return
	}
	client := utils.GetClient()
	req, err := http.NewRequest("POST", matchmakingServiceURL, nil)
	if err != nil {
		logrus.Error("invalid request")
		return
	}
	req.Header.Set("Content-Type", "application/json")
	req.Header.Set("Authorization", "Bearer "+*token.AccessToken)
	resp, err := client.Do(req)
	logrus.Info("doing request to " + os.Getenv("CREATE_MATCHMAKING_ENDPOINT"))
	var body []byte
	if resp != nil {
		body, err = ioutil.ReadAll(resp.Body)
	}
	if err != nil {
		logrus.Error("http call error")
	} else {
		logrus.Infof("Response from Title MM service with status code: %s , and response body: \n %s", resp.Status, body)
	}
}

var lobbyMessageHandler = func(dataByte []byte) {
	var msgType string
	msg := decodeWSMessage(string(dataByte))

	if v, ok := msg["type"]; ok {
		msgType = v
	}
	switch msgType {
	case model.TypeNotificationMessage:
		logrus.Infof("Receive response type %v", model.TypeNotificationMessage)
		unmarshal, err := parser.UnmarshalResponse(dataByte)
		if err != nil {
			logrus.Error(err)
		}
		data := unmarshal.(*model.NotificationMessage)

		// This is custom contract between client and MM service
		if data.Topic == "NOTIF" {
			logrus.Infof("Received data with topic name : %s", data.Topic)
			if data.Payload == "searching" {
				logrus.Info("Match searching...")
			} else {
				defer func() {
					if err := recover(); err != nil {
						log.Println("panic occurred:", err)
					}
				}()
				message := strings.Fields(data.Payload)
				if message[0] == "found" {
					if isIPValid(message[1]) && isInteger(message[2]) {
						logrus.Infof("Match found !\nDS info :\nIP : %s  \nPort : %s", message[1], message[2])
					}
				}
			}
		}
		marshal, err := json.Marshal(data)
		if err != nil {
			logrus.Error(err)
		}
		logrus.Infof("Response content %v", string(marshal))
		return
	}
}

func decodeWSMessage(msg string) map[string]string {
	scanner := bufio.NewScanner(strings.NewReader(msg))
	res := make(map[string]string)

	for scanner.Scan() {
		str := scanner.Text()
		keyValue := strings.Split(str, ": ")
		if len(keyValue) == 2 {
			res[keyValue[0]] = keyValue[1]
		}
	}

	if err := scanner.Err(); err != nil {
		logrus.Errorf("error reading websocket message: %v", err)
	}

	return res
}

func isIPValid(ip string) bool {
	if net.ParseIP(ip) == nil {
		logrus.Errorf("Invalid IP Addres : %s", ip)
		return false
	} else {
		return true
	}
}

func isInteger(s string) bool {
	if _, err := strconv.Atoi(s); err == nil {
		return true
	}
	logrus.Errorf("Invalid port : %s", s)
	return false
}

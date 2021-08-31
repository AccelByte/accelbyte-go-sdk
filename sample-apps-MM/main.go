package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/model"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg"
	"github.com/gorilla/websocket"

	customUtils "github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/parser"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/utils"
	"github.com/sirupsen/logrus"
	"io/ioutil"
	"net/http"
	"os"
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
	matchmakingServiceURL = oauthService.ConfigRepository.GetJusticeBaseUrl() + "/social/" + "/v1/admin/namespaces/{namespace}/stats"
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
Permissions: %q
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

	// send request to custom MM service (AWS API Gateway)
	token, err := oauthService.TokenRepository.GetToken()
	client := utils.GetClient()
	req, err := http.NewRequest("POST", matchmakingServiceURL, nil)
	if err != nil {
		logrus.Error("invalid request")
		return
	}
	req.Header.Set("Content-Type", "application/json")
	req.Header.Set("Authorization", "Bearer "+*token.AccessToken)
	resp, err := client.Do(req)
	logrus.Info("doing request to ")
	var body []byte
	if resp != nil {
		body, err = ioutil.ReadAll(resp.Body)
	}
	if err != nil {
		logrus.Error("http call error")
	} else {
		logrus.Infof("Code: %s", resp.Status)
		logrus.Infof("Body: %s", body)
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
			return
		}
		data := unmarshal.(*model.NotificationMessage)
		if data.Topic == "NOTIF" {
			if data.Payload == "searching" {
				logrus.Info("match searching....")
			} else {
				message := strings.Fields(data.Payload)
				logrus.Infof("match found\nconnecting to DS with IP : %s and Port : %s ...", message[1], message[2])
				err := connectToDS(message[1], message[2])
				if err != nil {
					return 
				}
			}
		}

		marshal, err := json.Marshal(data)
		if err != nil {
			return
		}
		logrus.Infof("Response content %v", string(marshal))
		break
	}
}


var dsMessageHandler = func(dataByte []byte) {
	var msgType string
	msg := decodeWSMessage(string(dataByte))

	if v, ok := msg["type"]; ok {
		msgType = v
	}
	switch msgType {
	case model.TypeDSNotif:
		logrus.Infof("Receive response type %v", model.TypeDSNotif)
		unmarshal, err := parser.UnmarshalResponse(dataByte)
		if err != nil {
			logrus.Error(err)
			return
		}
		data := unmarshal.(*model.DSNotification)
		marshal, err := json.Marshal(data)
		if err != nil {
			return
		}
		logrus.Infof("Response content %v", string(marshal))
		break
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

func connectToDS(ip, port string) error {
	con, err := pkg.NewWebsocketConnection(ip, port, oauthService.TokenRepository, dsMessageHandler)
	if err != nil {
		return err
	}
	logrus.Debug("GetDSMessage")
	messageID := customUtils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s", model.TypeDSNotif, messageID)
	err = con.Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}
	err = connMgr.Close()
	if err != nil {
		return err
	}
	return nil
}

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
	"os"
	"strings"
)

const (
	userInfoCmd          = "1"
	loginCmd             = "2"
	logoutCmd            = "3"
	createMatchmakingCmd = "4"
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
	connMgr       *utils.ConnectionManagerImpl
	partyService  *service.PartyService
	friendService *service.FriendServiceWebsocket
	chatService   *service.ChatService
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
%s: User info
%s: Login
%s: Logout
%s: Create Matchmaking

`,
		userInfoCmd,
		loginCmd,
		logoutCmd,
		createMatchmakingCmd,
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
	//contentType := "application/json"
	//client := utils.GetClient()
	//a := oauthService.ConfigRepository.GetJusticeBaseUrl() + "/social/" + "/v1/admin/namespaces/{namespace}/stats"
	//logrus.Info(a)
	//resp, err := client.Post(oauthService.ConfigRepository.GetJusticeBaseUrl()+"/social"+"/v1/admin/namespaces/{namespace}/stats", contentType, nil)
	//var body []byte
	//t, _ := oauthService.TokenRepository.GetToken()
	//var userID string
	//if t == nil {
	//	logrus.Error("token is null")
	//} else {
	//	userID = *t.UserID
	//}
	//logrus.Infof("UserID: %s", userID)
	//if resp != nil {
	//	body, err = ioutil.ReadAll(resp.Body)
	//}
	//if err != nil {
	//	logrus.Error("http call error")
	//} else {
	//	logrus.Infof("Code: %s", resp.Status)
	//	logrus.Infof("Body: %s", body)
	//}
	reader = bufio.NewReader(os.Stdin)
	logrus.Info("Enter websocket mode")
	connMgr = &utils.ConnectionManagerImpl{}
	configRepo := &repository.ConfigRepositoryImpl{}
	tokenRepo := &repository.TokenRepositoryImpl{}
	connection, err := connectionutils.NewWebsocketConnection(configRepo, tokenRepo, messageHandler)
	if err != nil {
		panic(err)
	}
	connMgr.Save(connection)
	partyService = &service.PartyService{
		ConfigRepository:  configRepo,
		TokenRepository:   tokenRepo,
		ConnectionManager: connMgr,
	}
	friendService = &service.FriendServiceWebsocket{
		ConfigRepository:  configRepo,
		TokenRepository:   tokenRepo,
		ConnectionManager: connMgr,
	}
	chatService = &service.ChatService{
		ConfigRepository:  configRepo,
		TokenRepository:   tokenRepo,
		ConnectionManager: connMgr,
	}

	err = partyService.CreateParty()
	if err != nil {
		logrus.Error(err)
		return
	}

	defer connMgr.Close()
	logrus.Info("Done")
}

var messageHandler = func(dataByte []byte) {
	var msgType string
	msg := decodeWSMessage(string(dataByte))

	if v, ok := msg["type"]; ok {
		msgType = v
	}
	switch msgType {
	case model.TypeInfoResponse:
		logrus.Infof("Receive response type %v", model.TypeInfoResponse)
		unmarshal, err := parser.UnmarshalResponse(dataByte)
		if err != nil {
			logrus.Error(err)
			return
		}
		data := unmarshal.(*model.InfoResponse)
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

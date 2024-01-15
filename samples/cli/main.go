// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"os"
	"strconv"
	"strings"
	"time"

	"github.com/gorilla/websocket"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/model"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/parser"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/utils"
)

var (
	reader              *bufio.Reader
	connMgr             *utils.ConnectionManagerImpl
	partyService        *service.PartyServiceWebsocket
	friendService       *service.FriendServiceWebsocket
	chatService         *service.ChatServiceWebsocket
	notificationService *service.NotificationServiceWebsocket
	lobbyService        *service.LobbyServiceWebsocket
)

const (
	infoCmd                   = "1"
	createCmd                 = "2"
	leaveCmd                  = "3"
	inviteCmd                 = "4"
	joinCmd                   = "5"
	kickCmd                   = "6"
	rejectCmd                 = "7"
	promoteLeaderCmd          = "8"
	chatCmd                   = "9"
	partyChatCmd              = "10"
	getOfflineNotificationCmd = "11"
	getFriendsCmd             = "12"
	setUserStatusCmd          = "13"
	requestFriendsCmd         = "14"
	listIncomingFriendsCmd    = "15"
	listOutgoingFriendsCmd    = "16"
	acceptFriendsCmd          = "17"
	rejectFriendsCmd          = "18"
	cancelFriendsRequestCmd   = "19"
	unfriendCmd               = "20"
	listOfFriendsCmd          = "21"
	getFriendshipStatusCmd    = "22"
	personalChatHistoryCmd    = "23"
	joinDefaultChatChannelCmd = "24"
	sendChatChannelCmd        = "25"
	blockCmd                  = "26"
	unblockCmd                = "27"
	quitCmd                   = "99"
)

func main() {
	args := os.Args
	if standbyModeFlag := args[1]; standbyModeFlag == "--wsMode" {
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
		partyService = &service.PartyServiceWebsocket{
			ConfigRepository:  configRepo,
			TokenRepository:   tokenRepo,
			ConnectionManager: connMgr,
		}
		friendService = &service.FriendServiceWebsocket{
			ConfigRepository:  configRepo,
			TokenRepository:   tokenRepo,
			ConnectionManager: connMgr,
		}
		chatService = &service.ChatServiceWebsocket{
			ConfigRepository:  configRepo,
			TokenRepository:   tokenRepo,
			ConnectionManager: connMgr,
		}
		notificationService = &service.NotificationServiceWebsocket{
			ConfigRepository:  configRepo,
			TokenRepository:   tokenRepo,
			ConnectionManager: connMgr,
		}
		serve()

		defer connMgr.Close()
		logrus.Info("Done")
	} else if standbyModeFlag = args[1]; standbyModeFlag == "--wsModeStandalone" {
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
		partyService = &service.PartyServiceWebsocket{
			ConfigRepository:  configRepo,
			TokenRepository:   tokenRepo,
			ConnectionManager: connMgr,
		}
		friendService = &service.FriendServiceWebsocket{
			ConfigRepository:  configRepo,
			TokenRepository:   tokenRepo,
			ConnectionManager: connMgr,
		}
		chatService = &service.ChatServiceWebsocket{
			ConfigRepository:  configRepo,
			TokenRepository:   tokenRepo,
			ConnectionManager: connMgr,
		}
		notificationService = &service.NotificationServiceWebsocket{
			ConfigRepository:  configRepo,
			TokenRepository:   tokenRepo,
			ConnectionManager: connMgr,
		}
		lobbyService = &service.LobbyServiceWebsocket{
			ConfigRepository:  configRepo,
			TokenRepository:   tokenRepo,
			ConnectionManager: connMgr,
		}

		serveStandalone()

		time.Sleep(2 * time.Second)

		defer connMgr.Close()
		logrus.Info("Done")
	} else {
		cmd.Execute()
	}
}

//messageHandler is callback function how to handle incoming ws message
var messageHandler = func(dataByte []byte) {
	message, err := parser.UnmarshalResponse(dataByte)
	if err != nil {
		logrus.Error(err)

		return
	}
	// print all incoming message type
	logrus.Infof("Message type: %v", message.Type())

	marshal, err := json.Marshal(message)
	if err != nil {
		return
	}
	// print all incoming message content
	logrus.Infof("Message content: %v", string(marshal))
}

func printHelp() {
	fmt.Printf(`
Commands:
# Party
%s: User party info
%s: Create party
%s: Leave party
%s: Invite friend
%s: Join party
%s: Kick member
%s: Reject party invitation
%s: Promote new leader

# Chat
%s: 1to1 Chat
%s: Party Chat

# Presence
%s: Get offline notifications
%s: Get Friends Status
%s: Set User Status

# Friends
%s: Request Friends
%s: List of Incoming Friends
%s: List of Outgoing Friends
%s: Accept Friends
%s: Reject Friends
%s: Cancel Friends Request
%s: Unfriend
%s: List of Friends
%s: Get Friendship Status
%s: Load Personal Chat History
%s: Join Default Chat Channel
%s: Send Channel Chat
%s: Block Player
%s: Unblock Player

# Lobby
%s: Quit

`,
		infoCmd,
		createCmd,
		leaveCmd,
		inviteCmd,
		joinCmd,
		kickCmd,
		rejectCmd,
		promoteLeaderCmd,
		chatCmd,
		partyChatCmd,
		getOfflineNotificationCmd,
		getFriendsCmd,
		setUserStatusCmd,
		requestFriendsCmd,
		listIncomingFriendsCmd,
		listOutgoingFriendsCmd,
		acceptFriendsCmd,
		rejectFriendsCmd,
		cancelFriendsRequestCmd,
		unfriendCmd,
		listOfFriendsCmd,
		getFriendshipStatusCmd,
		personalChatHistoryCmd,
		joinDefaultChatChannelCmd,
		sendChatChannelCmd,
		blockCmd,
		unblockCmd,
		quitCmd)
}

func serve() {
	for {
		printHelp()
		command := getInput()
		switch command {
		// as long as ws connection in connMgr not closed,
		case infoCmd:
			err := partyService.GetPartyInfo()
			if err != nil {
				logrus.Error(err)

				return
			}
		case createCmd:
			err := partyService.CreateParty()
			if err != nil {
				logrus.Error(err)

				return
			}
		case leaveCmd:
			err := partyService.LeaveParty()
			if err != nil {
				logrus.Error(err)

				return
			}
		case inviteCmd:
			fmt.Println("Friend ID:")
			friendID := getInput()
			logrus.Debug("Sending invite message")
			err := partyService.InviteParty(friendID)
			if err != nil {
				logrus.Error(err)

				return
			}
		case joinCmd:
			fmt.Println("Party ID:")
			partyID := getInput()
			fmt.Println("Invitation token:")
			token := getInput()
			logrus.Debug("Sending join message")
			err := partyService.JoinParty(partyID, token)
			if err != nil {
				logrus.Error(err)

				return
			}
		case kickCmd:
			fmt.Println("Member ID:")
			id := getInput()
			logrus.Debug("Sending kick message")
			err := partyService.KickPartyMember(id)
			if err != nil {
				logrus.Error(err)

				return
			}
		case rejectCmd:
			fmt.Println("Party ID:")
			partyID := getInput()
			fmt.Println("Invitation token:")
			token := getInput()
			logrus.Debug("Sending reject message")
			err := partyService.RejectPartyInvitation(partyID, token)
			if err != nil {
				logrus.Error(err)

				return
			}
		case promoteLeaderCmd:
			fmt.Println("New leader User ID:")
			leaderUserID := getInput()
			logrus.Debug("Sending kick message")
			err := partyService.PromotePartyLeader(leaderUserID)
			if err != nil {
				logrus.Error(err)

				return
			}
		case chatCmd:
			fmt.Println("Friend ID:")
			friendID := getInput()
			fmt.Println("Message:")
			content := getInput()
			err := chatService.SendPersonalChat(friendID, content)
			if err != nil {
				logrus.Error(err)
			}
		case partyChatCmd:
			fmt.Println("Message:")
			content := getInput()
			err := chatService.SendPartyChat(content)
			if err != nil {
				logrus.Error(err)
			}
		case joinDefaultChatChannelCmd:
			err := chatService.JoinDefaultChannel()
			if err != nil {
				logrus.Error(err)
			}
		case getOfflineNotificationCmd:
			err := notificationService.GetOfflineNotification()
			if err != nil {
				logrus.Error(err)
			}
		case getFriendsCmd:
			err := friendService.GetFriendPresenceStatus()
			if err != nil {
				logrus.Error(err)
			}
		case setUserStatusCmd:
			fmt.Println("Availability:")
			availability := getInput()
			fmt.Println("Activity:")
			activity := getInput()
			i, err := strconv.Atoi(availability)
			if err != nil {
				logrus.Error(err)

				return
			}
			err = friendService.SetUserStatus(i, activity)
			if err != nil {
				logrus.Error(err)
			}
		case requestFriendsCmd:
			fmt.Println("Friend ID:")
			friendID := getInput()
			err := friendService.RequestFriend(friendID)
			if err != nil {
				logrus.Error(err)
			}
		case listIncomingFriendsCmd:
			err := friendService.GetIncomingFriendRequest()
			if err != nil {
				logrus.Error(err)
			}
		case listOutgoingFriendsCmd:
			err := friendService.GetOutgoingFriendRequest()
			if err != nil {
				logrus.Error(err)
			}
		case acceptFriendsCmd:
			fmt.Println("Friend ID:")
			friendID := getInput()
			err := friendService.AcceptFriendRequest(friendID)
			if err != nil {
				logrus.Error(err)
			}
		case rejectFriendsCmd:
			fmt.Println("Friend ID:")
			friendID := getInput()
			err := friendService.RejectFriendRequest(friendID)
			if err != nil {
				logrus.Error(err)
			}
		case cancelFriendsRequestCmd:
			fmt.Println("Friend ID:")
			friendID := getInput()
			err := friendService.CancelFriendRequest(friendID)
			if err != nil {
				logrus.Error(err)
			}
		case unfriendCmd:
			fmt.Println("Friend ID:")
			friendID := getInput()
			err := friendService.Unfriend(friendID)
			if err != nil {
				logrus.Error(err)
			}
		case listOfFriendsCmd:
			err := friendService.GetFriends()
			if err != nil {
				logrus.Error(err)
			}
		case getFriendshipStatusCmd:
			fmt.Println("Friend ID:")
			friendID := getInput()
			err := friendService.GetFriendshipStatus(friendID)
			if err != nil {
				logrus.Error(err)
			}
		case personalChatHistoryCmd:
			fmt.Println("Friend ID:")
			friendID := getInput()
			err := chatService.GetPersonalChatHistory(friendID)
			if err != nil {
				logrus.Error(err)
			}
		case sendChatChannelCmd:
			fmt.Println("Channel Slug:")
			channelSlug := getInput()
			fmt.Println("Content:")
			content := getInput()
			err := chatService.SendChannelChat(channelSlug, content)
			if err != nil {
				logrus.Error(err)
			}
		case blockCmd:
			fmt.Println("Namespace:")
			namespace := getInput()
			fmt.Println("UserID:")
			userID := getInput()
			fmt.Println("Blocked user ID:")
			blockedUserID := getInput()
			err := friendService.Block(namespace, userID, blockedUserID)
			if err != nil {
				logrus.Error(err)
			}
		case unblockCmd:
			fmt.Println("Namespace:")
			namespace := getInput()
			fmt.Println("UserID:")
			userID := getInput()
			fmt.Println("Blocked user ID:")
			blockedUserID := getInput()
			err := friendService.Unblock(namespace, userID, blockedUserID)
			if err != nil {
				logrus.Error(err)
			}
		case quitCmd:
			logrus.Print("disconnect message: ")
			msg := getInput()
			_ = connMgr.Get().Conn.WriteMessage(websocket.CloseMessage,
				websocket.FormatCloseMessage(websocket.CloseNormalClosure, msg))

			return
		}
	}
}

func serveStandalone() {
	args := os.Args
	getArgs := strings.Split(args[2], "\\n")
	getType := strings.Split(getArgs[0], " ")
	command := getType[1]
	switch command {
	case model.TypeAcceptFriendsNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		friendId := m["friendId"]
		err := lobbyService.AcceptFriendsNotif(friendId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeAcceptFriendsRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		friendId := m["friendId"]
		id := m["id"]
		err := lobbyService.AcceptFriendsRequest(&friendId, &id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeAcceptFriendsResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.AcceptFriendsResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeBlockPlayerNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		blockedUserId := m["blockedUserId"]
		userId := m["userId"]
		err := lobbyService.BlockPlayerNotif(blockedUserId, userId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeBlockPlayerRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		blockUserId := m["blockUserId"]
		id := m["id"]
		namespace := m["namespace"]
		err := lobbyService.BlockPlayerRequest(&blockUserId, &id, &namespace)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeBlockPlayerResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		blockUserId := m["blockUserId"]
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		namespace := m["namespace"]
		err := lobbyService.BlockPlayerResponse(blockUserId, code, id, namespace)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeCancelFriendsNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		userId := m["userId"]
		err := lobbyService.CancelFriendsNotif(userId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeCancelFriendsRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		friendId := m["friendId"]
		id := m["id"]
		err := lobbyService.CancelFriendsRequest(&friendId, &id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeCancelFriendsResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.CancelFriendsResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeCancelMatchmakingRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		gameMode := m["gameMode"]
		id := m["id"]
		isTempPartyString := m["isTempParty"]
		isTempParty, _ := strconv.ParseBool(isTempPartyString)
		err := lobbyService.CancelMatchmakingRequest(&gameMode, &id, &isTempParty)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeCancelMatchmakingResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.CancelMatchmakingResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeChannelChatNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		channelSlug := m["channelSlug"]
		from := m["from"]
		payload := m["payload"]
		sentAt := m["sentAt"]
		err := lobbyService.ChannelChatNotif(channelSlug, from, payload, sentAt)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeClientResetRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		namespace := m["namespace"]
		userId := m["userId"]
		err := lobbyService.ClientResetRequest(&namespace, &userId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeConnectNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		lobbySessionId := m["lobbySessionId"]
		err := lobbyService.ConnectNotif(lobbySessionId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeDisconnectNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		connectionId := m["connectionId"]
		namespace := m["namespace"]
		err := lobbyService.DisconnectNotif(connectionId, namespace)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeDsNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		alternateIpsString := m["alternateIps"]
		var alternateIps []string
		alternateIps = append(alternateIps, alternateIpsString)
		customAttribute := m["customAttribute"]
		deployment := m["deployment"]
		gameVersion := m["gameVersion"]
		imageVersion := m["imageVersion"]
		ip := m["ip"]
		isOKString := m["isOK"]
		isOK, _ := strconv.ParseBool(isOKString)
		isOverrideGameVersionString := m["isOverrideGameVersion"]
		isOverrideGameVersion, _ := strconv.ParseBool(isOverrideGameVersionString)
		lastUpdate := m["lastUpdate"]
		matchId := m["matchId"]
		message := m["message"]
		namespace := m["namespace"]
		podName := m["podName"]
		portString := m["port"]
		port, _ := strconv.ParseInt(portString, 10, 64)
		ports := m["ports"]
		protocol := m["protocol"]
		provider := m["provider"]
		region := m["region"]
		sessionId := m["sessionId"]
		status := m["status"]
		err := lobbyService.DsNotif(alternateIps, customAttribute, deployment, gameVersion, imageVersion, ip, isOK, isOverrideGameVersion, lastUpdate, matchId, message, namespace, podName, port, ports, protocol, provider, region, sessionId, status)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeErrorNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		message := m["message"]
		err := lobbyService.ErrorNotif(message)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeExitAllChannel:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		namespace := m["namespace"]
		userId := m["userId"]
		err := lobbyService.ExitAllChannel(namespace, userId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeFriendsStatusRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		err := lobbyService.FriendsStatusRequest(&id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeFriendsStatusResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		activityString := m["activity"]
		var activity []string
		activity = append(activity, activityString)
		availabilityString := m["availability"]
		var availability []string
		availability = append(availability, availabilityString)
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		friendIdsString := m["friendIds"]
		var friendIds []string
		friendIds = append(friendIds, friendIdsString)
		id := m["id"]
		lastSeenAtString := m["lastSeenAt"]
		var lastSeenAt []string
		lastSeenAt = append(lastSeenAt, lastSeenAtString)
		err := lobbyService.FriendsStatusResponse(activity, availability, code, friendIds, id, lastSeenAt)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeGetAllSessionAttributeRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		err := lobbyService.GetAllSessionAttributeRequest(&id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeGetAllSessionAttributeResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		attributes := m["attributes"]
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.GetAllSessionAttributeResponse(attributes, code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeGetFriendshipStatusRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		friendId := m["friendId"]
		id := m["id"]
		err := lobbyService.GetFriendshipStatusRequest(&friendId, &id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeGetFriendshipStatusResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		friendshipStatus := m["friendshipStatus"]
		id := m["id"]
		err := lobbyService.GetFriendshipStatusResponse(code, friendshipStatus, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeGetSessionAttributeRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		key := m["key"]
		err := lobbyService.GetSessionAttributeRequest(&id, &key)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeGetSessionAttributeResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		value := m["value"]
		err := lobbyService.GetSessionAttributeResponse(code, id, value)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeHeartbeat:
		err := lobbyService.Heartbeat()
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeJoinDefaultChannelRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		err := lobbyService.JoinDefaultChannelRequest(&id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeJoinDefaultChannelResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		channelSlug := m["channelSlug"]
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.JoinDefaultChannelResponse(channelSlug, code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeListIncomingFriendsRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		err := lobbyService.ListIncomingFriendsRequest(&id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeListIncomingFriendsResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		userIdsString := m["userIds"]
		var userIds []string
		userIds = append(userIds, userIdsString)
		err := lobbyService.ListIncomingFriendsResponse(code, id, userIds)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeListOfFriendsRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		friendId := m["friendId"]
		id := m["id"]
		err := lobbyService.ListOfFriendsRequest(&friendId, &id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeListOfFriendsResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		friendIdsString := m["friendIds"]
		var friendIds []string
		friendIds = append(friendIds, friendIdsString)
		id := m["id"]
		err := lobbyService.ListOfFriendsResponse(code, friendIds, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeListOnlineFriendsRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		err := lobbyService.ListOnlineFriendsRequest(&id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeListOutgoingFriendsRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		err := lobbyService.ListOutgoingFriendsRequest(&id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeListOutgoingFriendsResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		friendIdsString := m["friendIds"]
		var friendIds []string
		friendIds = append(friendIds, friendIdsString)
		id := m["id"]
		err := lobbyService.ListOutgoingFriendsResponse(code, friendIds, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeMatchmakingNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		counterPartyMemberString := m["counterPartyMember"]
		var counterPartyMember []string
		counterPartyMember = append(counterPartyMember, counterPartyMemberString)
		matchId := m["matchId"]
		message := m["message"]
		partyMemberString := m["partyMember"]
		var partyMember []string
		partyMember = append(partyMember, partyMemberString)
		readyDurationString := m["readyDuration"]
		readyDuration, _ := strconv.ParseInt(readyDurationString, 10, 64)
		status := m["status"]
		err := lobbyService.MatchmakingNotif(counterPartyMember, matchId, message, partyMember, readyDuration, status)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeMessageNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		from := m["from"]
		id := m["id"]
		payload := m["payload"]
		sentAtString := m["sentAt"]
		sentAt, _ := strconv.ParseInt(sentAtString, 10, 64)
		to := m["to"]
		topic := m["topic"]
		err := lobbyService.MessageNotif(from, id, payload, sentAt, to, topic)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeOfflineNotificationRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		err := lobbyService.OfflineNotificationRequest(&id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeOfflineNotificationResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.OfflineNotificationResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeOnlineFriends:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		onlineFriendIdsString := m["onlineFriendIds"]
		var onlineFriendIds []string
		onlineFriendIds = append(onlineFriendIds, onlineFriendIdsString)
		err := lobbyService.OnlineFriends(code, id, onlineFriendIds)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyChatNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		from := m["from"]
		id := m["id"]
		payload := m["payload"]
		receivedAtString := m["receivedAt"]
		receivedAt, _ := strconv.ParseInt(receivedAtString, 10, 64)
		to := m["to"]
		err := lobbyService.PartyChatNotif(from, id, payload, receivedAt, to)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyChatRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		from := m["from"]
		id := m["id"]
		payload := m["payload"]
		receivedAtString := m["receivedAt"]
		receivedAt, _ := strconv.ParseInt(receivedAtString, 10, 64)
		to := m["to"]
		err := lobbyService.PartyChatRequest(&from, &id, &payload, &receivedAt, &to)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyChatResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.PartyChatResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyCreateRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		err := lobbyService.PartyCreateRequest(&id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyCreateResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		invitationToken := m["invitationToken"]
		invitees := m["invitees"]
		leaderId := m["leaderId"]
		members := m["members"]
		partyId := m["partyId"]
		err := lobbyService.PartyCreateResponse(code, id, invitationToken, invitees, leaderId, members, partyId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyDataUpdateNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		customAttributes := m["customAttributes"]
		inviteesString := m["invitees"]
		var invitees []string
		invitees = append(invitees, inviteesString)
		leader := m["leader"]
		membersString := m["members"]
		var members []string
		members = append(members, membersString)
		namespace := m["namespace"]
		partyId := m["partyId"]
		updatedAtString := m["updatedAt"]
		updatedAt, _ := strconv.ParseInt(updatedAtString, 10, 64)
		err := lobbyService.PartyDataUpdateNotif(customAttributes, invitees, leader, members, namespace, partyId, updatedAt)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyGetInvitedNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		from := m["from"]
		invitationToken := m["invitationToken"]
		partyId := m["partyId"]
		err := lobbyService.PartyGetInvitedNotif(from, invitationToken, partyId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyInfoRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		err := lobbyService.PartyInfoRequest(&id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyInfoResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		customAttributes := m["customAttributes"]
		id := m["id"]
		invitationToken := m["invitationToken"]
		invitees := m["invitees"]
		leaderId := m["leaderId"]
		members := m["members"]
		partyId := m["partyId"]
		err := lobbyService.PartyInfoResponse(code, customAttributes, id, invitationToken, invitees, leaderId, members, partyId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyInviteNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		inviteeId := m["inviteeId"]
		inviterId := m["inviterId"]
		err := lobbyService.PartyInviteNotif(inviteeId, inviterId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyInviteRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		friendId := m["friendId"]
		id := m["id"]
		err := lobbyService.PartyInviteRequest(&friendId, &id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyInviteResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.PartyInviteResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyJoinNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		userId := m["userId"]
		err := lobbyService.PartyJoinNotif(userId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyJoinRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		invitationToken := m["invitationToken"]
		partyId := m["partyId"]
		err := lobbyService.PartyJoinRequest(&id, &invitationToken, &partyId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyJoinResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		invitationToken := m["invitationToken"]
		invitees := m["invitees"]
		leaderId := m["leaderId"]
		members := m["members"]
		partyId := m["partyId"]
		err := lobbyService.PartyJoinResponse(code, id, invitationToken, invitees, leaderId, members, partyId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyKickNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		leaderId := m["leaderId"]
		partyId := m["partyId"]
		userId := m["userId"]
		err := lobbyService.PartyKickNotif(leaderId, partyId, userId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyKickRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		memberId := m["memberId"]
		err := lobbyService.PartyKickRequest(&id, &memberId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyKickResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.PartyKickResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyLeaveNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		leaderId := m["leaderId"]
		userId := m["userId"]
		err := lobbyService.PartyLeaveNotif(leaderId, userId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyLeaveRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		ignoreUserRegistryString := m["ignoreUserRegistry"]
		ignoreUserRegistry, _ := strconv.ParseBool(ignoreUserRegistryString)
		err := lobbyService.PartyLeaveRequest(&id, &ignoreUserRegistry)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyLeaveResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.PartyLeaveResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyPromoteLeaderRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		newLeaderUserId := m["newLeaderUserId"]
		err := lobbyService.PartyPromoteLeaderRequest(&id, &newLeaderUserId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyPromoteLeaderResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		invitationToken := m["invitationToken"]
		invitees := m["invitees"]
		leaderId := m["leaderId"]
		members := m["members"]
		partyId := m["partyId"]
		err := lobbyService.PartyPromoteLeaderResponse(code, id, invitationToken, invitees, leaderId, members, partyId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyRejectNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		leaderId := m["leaderId"]
		partyId := m["partyId"]
		userId := m["userId"]
		err := lobbyService.PartyRejectNotif(leaderId, partyId, userId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyRejectRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		invitationToken := m["invitationToken"]
		partyId := m["partyId"]
		err := lobbyService.PartyRejectRequest(&id, &invitationToken, &partyId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePartyRejectResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		partyId := m["partyId"]
		err := lobbyService.PartyRejectResponse(code, id, partyId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePersonalChatHistoryRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		friendId := m["friendId"]
		id := m["id"]
		err := lobbyService.PersonalChatHistoryRequest(&friendId, &id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePersonalChatHistoryResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		chat := m["chat"]
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		friendId := m["friendId"]
		id := m["id"]
		err := lobbyService.PersonalChatHistoryResponse(chat, code, friendId, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePersonalChatNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		from := m["from"]
		id := m["id"]
		payload := m["payload"]
		receivedAtString := m["receivedAt"]
		receivedAt, _ := strconv.ParseInt(receivedAtString, 10, 64)
		to := m["to"]
		err := lobbyService.PersonalChatNotif(from, id, payload, receivedAt, to)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePersonalChatRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		from := m["from"]
		id := m["id"]
		payload := m["payload"]
		receivedAtString := m["receivedAt"]
		receivedAt, _ := strconv.ParseInt(receivedAtString, 10, 64)
		to := m["to"]
		err := lobbyService.PersonalChatRequest(&from, &id, &payload, &receivedAt, &to)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypePersonalChatResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.PersonalChatResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeRefreshTokenRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		token := m["token"]
		err := lobbyService.RefreshTokenRequest(&id, &token)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeRefreshTokenResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.RefreshTokenResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeRejectFriendsNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		userId := m["userId"]
		err := lobbyService.RejectFriendsNotif(userId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeRejectFriendsRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		friendId := m["friendId"]
		id := m["id"]
		err := lobbyService.RejectFriendsRequest(&friendId, &id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeRejectFriendsResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.RejectFriendsResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeRematchmakingNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		banDurationString := m["banDuration"]
		banDuration, _ := strconv.ParseInt(banDurationString, 10, 64)
		err := lobbyService.RematchmakingNotif(banDuration)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeRequestFriendsNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		friendId := m["friendId"]
		err := lobbyService.RequestFriendsNotif(friendId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeRequestFriendsRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		friendId := m["friendId"]
		id := m["id"]
		err := lobbyService.RequestFriendsRequest(&friendId, &id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeRequestFriendsResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.RequestFriendsResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeSendChannelChatRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		channelSlug := m["channelSlug"]
		id := m["id"]
		payload := m["payload"]
		err := lobbyService.SendChannelChatRequest(&channelSlug, &id, &payload)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeSendChannelChatResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.SendChannelChatResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeSetReadyConsentNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		matchId := m["matchId"]
		userId := m["userId"]
		err := lobbyService.SetReadyConsentNotif(matchId, userId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeSetReadyConsentRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		matchId := m["matchId"]
		err := lobbyService.SetReadyConsentRequest(&id, &matchId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeSetReadyConsentResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.SetReadyConsentResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeSetSessionAttributeRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		key := m["key"]
		namespace := m["namespace"]
		value := m["value"]
		err := lobbyService.SetSessionAttributeRequest(&id, &key, &namespace, &value)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeSetSessionAttributeResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.SetSessionAttributeResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeSetUserStatusRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		activity := m["activity"]
		availabilityString := m["availability"]
		availability, _ := strconv.ParseInt(availabilityString, 10, 64)
		id := m["id"]
		err := lobbyService.SetUserStatusRequest(&activity, &availability, &id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeSetUserStatusResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.SetUserStatusResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeShutdownNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		message := m["message"]
		err := lobbyService.ShutdownNotif(message)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeSignalingP2PNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		destinationId := m["destinationId"]
		message := m["message"]
		err := lobbyService.SignalingP2PNotif(destinationId, message)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeStartMatchmakingRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		extraAttributes := m["extraAttributes"]
		gameMode := m["gameMode"]
		id := m["id"]
		partyAttributes := m["partyAttributes"]
		priorityString := m["priority"]
		priority, _ := strconv.ParseInt(priorityString, 10, 64)
		tempParty := m["tempParty"]
		err := lobbyService.StartMatchmakingRequest(&extraAttributes, &gameMode, &id, partyAttributes, &priority, &tempParty)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeStartMatchmakingResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.StartMatchmakingResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeUnblockPlayerNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		unblockedUserId := m["unblockedUserId"]
		userId := m["userId"]
		err := lobbyService.UnblockPlayerNotif(unblockedUserId, userId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeUnblockPlayerRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		namespace := m["namespace"]
		unblockedUserId := m["unblockedUserId"]
		err := lobbyService.UnblockPlayerRequest(&id, &namespace, &unblockedUserId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeUnblockPlayerResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		namespace := m["namespace"]
		unblockedUserId := m["unblockedUserId"]
		err := lobbyService.UnblockPlayerResponse(code, id, namespace, unblockedUserId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeUnfriendNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		friendId := m["friendId"]
		err := lobbyService.UnfriendNotif(friendId)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeUnfriendRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		friendId := m["friendId"]
		id := m["id"]
		err := lobbyService.UnfriendRequest(&friendId, &id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeUnfriendResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		err := lobbyService.UnfriendResponse(code, id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeUserBannedNotification:
		err := lobbyService.UserBannedNotification()
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeUserMetricRequest:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		id := m["id"]
		err := lobbyService.UserMetricRequest(&id)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeUserMetricResponse:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		codeString := m["code"]
		code, _ := strconv.ParseInt(codeString, 10, 64)
		id := m["id"]
		playerCountString := m["playerCount"]
		playerCount, _ := strconv.ParseInt(playerCountString, 10, 64)
		err := lobbyService.UserMetricResponse(code, id, playerCount)
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeUserStatusNotif:
		m := make(map[string]string)
		if len(getArgs) >= 1 {
			m = getParam(getArgs)
		}
		activity := m["activity"]
		availabilityString := m["availability"]
		availability, _ := strconv.ParseInt(availabilityString, 10, 64)
		lastSeenAt := m["lastSeenAt"]
		userId := m["userId"]
		err := lobbyService.UserStatusNotif(activity, availability, lastSeenAt, userId)
		if err != nil {
			logrus.Error(err)

			return
		}
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

func getParam(getArgs []string) map[string]string {
	m := make(map[string]string)
	allParams := getArgs[1:]
	for _, param := range allParams {
		splitParam := strings.Split(param, ": ")
		m[splitParam[0]] = splitParam[1]
	}

	return m
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"os"
	"strconv"
	"strings"

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

		serveStandalone()

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

	// if you want to specify the message type and write logic for each of it
	switch message.Type() {
	case model.TypeNotificationMessage:
		notificationMsg := message.(model.NotificationMessage)
		logrus.Infof("Notification is coming from %s to %s", notificationMsg.From, notificationMsg.To)
	case model.TypeKickResponse:
		kickMessage := message.(model.KickResponse)
		logrus.Infof("Message id is: %s", kickMessage.MessageID)
	}
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
	command := args[3]
	logrus.Infof("second command: %v", command)
	switch command {
	// as long as ws connection in connMgr not closed,
	case model.TypeFriendsPresenceRequest:
		err := friendService.GetFriendPresenceStatus()
		if err != nil {
			logrus.Error(err)

			return
		}
	case model.TypeInfoRequest:
		err := partyService.GetPartyInfo()
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

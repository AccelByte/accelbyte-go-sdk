// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/model"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"
	"github.com/gorilla/websocket"
	"github.com/sirupsen/logrus"
)

type FriendServiceWebsocket struct {
	ConfigRepository  repository.ConfigRepository
	TokenRepository   repository.TokenRepository
	ConnectionManager connectionutils.ConnectionManager
}

func (friendService *FriendServiceWebsocket) GetFriends() error {
	logrus.Debug("get list of friends")

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s", model.TypeListOfFriendsRequest, messageID)

	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) RequestFriend(friendID string) error {
	logrus.Debug("request friend")

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeRequestFriendsRequest, messageID, friendID)

	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) GetIncomingFriendRequest() error {
	logrus.Debug("get incoming request friend")

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s", model.TypeListIncomingFriendsRequest, messageID)

	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) GetOutgoingFriendRequest() error {
	logrus.Debug("GetOutgoingFriendRequest")

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s", model.TypeListOutgoingFriendsRequest, messageID)

	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) AcceptFriendRequest(friendID string) error {
	logrus.Debug("accept friend request")

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeAcceptFriendsRequest, messageID, friendID)

	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) RejectFriendRequest(friendID string) error {
	logrus.Debug("reject friend request")

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeRejectFriendsRequest, messageID, friendID)

	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) Unfriend(friendID string) error {
	logrus.Debug("unfriend")

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeUnfriendRequest, messageID, friendID)

	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) CancelFriendRequest(friendID string) error {
	logrus.Debug("CancelFriendRequest")

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeCancelFriendsRequest, messageID, friendID)

	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) GetFriendshipStatus(friendID string) error {
	logrus.Debug("GetFriendshipStatus")

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeGetFriendshipStatusRequest, messageID, friendID)

	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) GetOnlineFriends() error {
	logrus.Debug("GetOnlineFriends")

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s", model.TypeListOnlineFriendsRequest, messageID)

	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}

	return nil
}

func (friendService *FriendServiceWebsocket) GetOfflineNotification() error {
	logrus.Debug("GetOfflineNotification")

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s", model.TypeGetOfflineNotificationRequest, messageID)

	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (friendService *FriendServiceWebsocket) GetFriendPresenceStatus() error {
	logrus.Debug("GetFriendPresenceStatus")

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s", model.TypeFriendsPresenceRequest, messageID)

	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) Block(namespace, userID, blockedUserID string) error {

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s\nuserId: %s\nnamespace: %s\nblockedUserId: %s", model.TypeBlockPlayerRequest, messageID, userID, namespace, blockedUserID)

	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) Unblock(namespace, userID, unblockedUserID string) error {

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s\nuserId: %s\nnamespace: %s\nblockedUserId: %s", model.TypeUnblockPlayerRequest, messageID, userID, namespace, unblockedUserID)

	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) SetUserStatus(availability int, activity string) error {

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s\navailability: %d\nactivity: %s", model.TypeSetUserStatusRequest, messageID, availability, activity)

	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}
	return nil
}

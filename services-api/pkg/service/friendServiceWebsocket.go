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
	logrus.Debug("GetFriends")
	text := fmt.Sprintf("type: %s\n%s", model.TypeListOfFriendsRequest, utils.GenerateMessageID())
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) RequestFriend(friendID string) error {
	logrus.Debug("RequestFriend")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeRequestFriendsRequest, utils.GenerateMessageID(), friendID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) GetIncomingFriendRequest() error {
	logrus.Debug("GetIncomingFriendRequest")
	text := fmt.Sprintf("type: %s\n%s", model.TypeListIncomingFriendsRequest, utils.GenerateMessageID())
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) GetOutgoingFriendRequest() error {
	logrus.Debug("GetOutgoingFriendRequest")
	text := fmt.Sprintf("type: %s\n%s", model.TypeListOutgoingFriendsRequest, utils.GenerateMessageID())
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) AcceptFriendRequest(friendID string) error {
	logrus.Debug("AcceptFriendRequest")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeAcceptFriendsRequest, utils.GenerateMessageID(), friendID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) RejectFriendRequest(friendID string) error {
	logrus.Debug("RejectFriendRequest")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeRejectFriendsRequest, utils.GenerateMessageID(), friendID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) Unfriend(friendID string) error {
	logrus.Debug("Unfriend")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeUnfriendRequest, utils.GenerateMessageID(), friendID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) CancelFriendRequest(friendID string) error {
	logrus.Debug("CancelFriendRequest")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeCancelFriendsRequest, utils.GenerateMessageID(), friendID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) GetFriendshipStatus(friendID string) error {
	logrus.Debug("GetFriendshipStatus")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeGetFriendshipStatusRequest, utils.GenerateMessageID(), friendID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) GetFriendPresenceStatus() error {
	logrus.Debug("GetFriendPresenceStatus")
	text := fmt.Sprintf("type: %s\n%s", model.TypeFriendsPresenceRequest, utils.GenerateMessageID())
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) Block(namespace, userID, blockedUserID string) error {
	logrus.Debug("Block")
	text := fmt.Sprintf("type: %s\n%s\nuserId: %s\nnamespace: %s\nblockedUserId: %s", model.TypeBlockPlayerRequest, utils.GenerateMessageID(), userID, namespace, blockedUserID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) Unblock(namespace, userID, unblockedUserID string) error {
	logrus.Debug("Block")
	text := fmt.Sprintf("type: %s\n%s\nuserId: %s\nnamespace: %s\nblockedUserId: %s", model.TypeUnblockPlayerRequest, utils.GenerateMessageID(), userID, namespace, unblockedUserID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}
	return nil
}

func (friendService *FriendServiceWebsocket) SetUserStatus(availability int, activity string) error {
	logrus.Debug("SetUserStatus")
	text := fmt.Sprintf("type: %s\n%s\navailability: %d\nactivity: %s", model.TypeSetUserStatusRequest, utils.GenerateMessageID(), availability, activity)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}
	return nil
}

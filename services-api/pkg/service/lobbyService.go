// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
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

type LobbyServiceWebsocket struct {
	ConfigRepository  repository.ConfigRepository
	TokenRepository   repository.TokenRepository
	ConnectionManager connectionutils.ConnectionManager
}

func (lobbyService *LobbyServiceWebsocket) AcceptFriendsNotif(friendId string) error {
	logrus.Debug("AcceptFriendsNotif")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %v", model.TypeAcceptFriendsNotif, utils.GenerateMessageID(), friendId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) AcceptFriendsRequest(friendId *string, id *string) error {
	logrus.Debug("AcceptFriendsRequest")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %v\nid: %v", model.TypeAcceptFriendsRequest, utils.GenerateMessageID(), friendId, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) AcceptFriendsResponse(code int64, id string) error {
	logrus.Debug("AcceptFriendsResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypeAcceptFriendsResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) BlockPlayerNotif(blockedUserId string, userId string) error {
	logrus.Debug("BlockPlayerNotif")
	text := fmt.Sprintf("type: %s\n%s\nblockedUserId: %v\nuserId: %v", model.TypeBlockPlayerNotif, utils.GenerateMessageID(), blockedUserId, userId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) BlockPlayerRequest(blockUserId *string, id *string, namespace *string) error {
	logrus.Debug("BlockPlayerRequest")
	text := fmt.Sprintf("type: %s\n%s\nblockUserId: %v\nid: %v\nnamespace: %v", model.TypeBlockPlayerRequest, utils.GenerateMessageID(), blockUserId, id, namespace)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) BlockPlayerResponse(blockUserId string, code int64, id string, namespace string) error {
	logrus.Debug("BlockPlayerResponse")
	text := fmt.Sprintf("type: %s\n%s\nblockUserId: %v\ncode: %v\nid: %v\nnamespace: %v", model.TypeBlockPlayerResponse, utils.GenerateMessageID(), blockUserId, code, id, namespace)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) CancelFriendsNotif(userId string) error {
	logrus.Debug("CancelFriendsNotif")
	text := fmt.Sprintf("type: %s\n%s\nuserId: %v", model.TypeCancelFriendsNotif, utils.GenerateMessageID(), userId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) CancelFriendsRequest(friendId *string, id *string) error {
	logrus.Debug("CancelFriendsRequest")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %v\nid: %v", model.TypeCancelFriendsRequest, utils.GenerateMessageID(), friendId, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) CancelFriendsResponse(code int64, id string) error {
	logrus.Debug("CancelFriendsResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypeCancelFriendsResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) CancelMatchmakingRequest(gameMode *string, id *string, isTempParty *bool) error {
	logrus.Debug("CancelMatchmakingRequest")
	text := fmt.Sprintf("type: %s\n%s\ngameMode: %v\nid: %v\nisTempParty: %v", model.TypeCancelMatchmakingRequest, utils.GenerateMessageID(), gameMode, id, isTempParty)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) CancelMatchmakingResponse(code int64, id string) error {
	logrus.Debug("CancelMatchmakingResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypeCancelMatchmakingResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) ChannelChatNotif(channelSlug string, from string, payload string, sentAt string) error {
	logrus.Debug("ChannelChatNotif")
	text := fmt.Sprintf("type: %s\n%s\nchannelSlug: %v\nfrom: %v\npayload: %v\nsentAt: %v", model.TypeChannelChatNotif, utils.GenerateMessageID(), channelSlug, from, payload, sentAt)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) ClientResetRequest(namespace *string, userId *string) error {
	logrus.Debug("ClientResetRequest")
	text := fmt.Sprintf("type: %s\n%s\nnamespace: %v\nuserId: %v", model.TypeClientResetRequest, utils.GenerateMessageID(), namespace, userId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) ConnectNotif(lobbySessionId string) error {
	logrus.Debug("ConnectNotif")
	text := fmt.Sprintf("type: %s\n%s\nlobbySessionId: %v", model.TypeConnectNotif, utils.GenerateMessageID(), lobbySessionId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) DisconnectNotif(connectionId string, namespace string) error {
	logrus.Debug("DisconnectNotif")
	text := fmt.Sprintf("type: %s\n%s\nconnectionId: %v\nnamespace: %v", model.TypeDisconnectNotif, utils.GenerateMessageID(), connectionId, namespace)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) DsNotif(alternateIps []string, customAttribute string, deployment string, gameVersion string, imageVersion string, ip string, isOK bool, isOverrideGameVersion bool, lastUpdate string, matchId string, message string, namespace string, podName string, port int64, ports string, protocol string, provider string, region string, sessionId string, status string) error {
	logrus.Debug("DsNotif")
	text := fmt.Sprintf("type: %s\n%s\nalternateIps: %v\ncustomAttribute: %v\ndeployment: %v\ngameVersion: %v\nimageVersion: %v\nip: %v\nisOK: %v\nisOverrideGameVersion: %v\nlastUpdate: %v\nmatchId: %v\nmessage: %v\nnamespace: %v\npodName: %v\nport: %v\nports: %v\nprotocol: %v\nprovider: %v\nregion: %v\nsessionId: %v\nstatus: %v", model.TypeDsNotif, utils.GenerateMessageID(), alternateIps, customAttribute, deployment, gameVersion, imageVersion, ip, isOK, isOverrideGameVersion, lastUpdate, matchId, message, namespace, podName, port, ports, protocol, provider, region, sessionId, status)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) ErrorNotif(message string) error {
	logrus.Debug("ErrorNotif")
	text := fmt.Sprintf("type: %s\n%s\nmessage: %v", model.TypeErrorNotif, utils.GenerateMessageID(), message)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) ExitAllChannel(namespace string, userId string) error {
	logrus.Debug("ExitAllChannel")
	text := fmt.Sprintf("type: %s\n%s\nnamespace: %v\nuserId: %v", model.TypeExitAllChannel, utils.GenerateMessageID(), namespace, userId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) FriendsStatusRequest(id *string) error {
	logrus.Debug("FriendsStatusRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v", model.TypeFriendsStatusRequest, utils.GenerateMessageID(), id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) FriendsStatusResponse(activity []string, availability []int64, code int64, friendIds []string, id string, lastSeenAt []string) error {
	logrus.Debug("FriendsStatusResponse")
	text := fmt.Sprintf("type: %s\n%s\nactivity: %v\navailability: %v\ncode: %v\nfriendIds: %v\nid: %v\nlastSeenAt: %v", model.TypeFriendsStatusResponse, utils.GenerateMessageID(), activity, availability, code, friendIds, id, lastSeenAt)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) GetAllSessionAttributeRequest(id *string) error {
	logrus.Debug("GetAllSessionAttributeRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v", model.TypeGetAllSessionAttributeRequest, utils.GenerateMessageID(), id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) GetAllSessionAttributeResponse(attributes string, code int64, id string) error {
	logrus.Debug("GetAllSessionAttributeResponse")
	text := fmt.Sprintf("type: %s\n%s\nattributes: %v\ncode: %v\nid: %v", model.TypeGetAllSessionAttributeResponse, utils.GenerateMessageID(), attributes, code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) GetFriendshipStatusRequest(friendId *string, id *string) error {
	logrus.Debug("GetFriendshipStatusRequest")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %v\nid: %v", model.TypeGetFriendshipStatusRequest, utils.GenerateMessageID(), friendId, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) GetFriendshipStatusResponse(code int64, friendshipStatus string, id string) error {
	logrus.Debug("GetFriendshipStatusResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nfriendshipStatus: %v\nid: %v", model.TypeGetFriendshipStatusResponse, utils.GenerateMessageID(), code, friendshipStatus, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) GetSessionAttributeRequest(id *string, key *string) error {
	logrus.Debug("GetSessionAttributeRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v\nkey: %v", model.TypeGetSessionAttributeRequest, utils.GenerateMessageID(), id, key)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) GetSessionAttributeResponse(code int64, id string, value string) error {
	logrus.Debug("GetSessionAttributeResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v\nvalue: %v", model.TypeGetSessionAttributeResponse, utils.GenerateMessageID(), code, id, value)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) Heartbeat() error {
	logrus.Debug("ehm Heartbeat")
	text := fmt.Sprintf("type: %s\n%s", model.TypeHeartbeat, utils.GenerateMessageID())
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) JoinDefaultChannelRequest(id *string) error {
	logrus.Debug("JoinDefaultChannelRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v", model.TypeJoinDefaultChannelRequest, utils.GenerateMessageID(), id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) JoinDefaultChannelResponse(channelSlug string, code int64, id string) error {
	logrus.Debug("JoinDefaultChannelResponse")
	text := fmt.Sprintf("type: %s\n%s\nchannelSlug: %v\ncode: %v\nid: %v", model.TypeJoinDefaultChannelResponse, utils.GenerateMessageID(), channelSlug, code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) ListIncomingFriendsRequest(id *string) error {
	logrus.Debug("ListIncomingFriendsRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v", model.TypeListIncomingFriendsRequest, utils.GenerateMessageID(), id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) ListIncomingFriendsResponse(code int64, id string, userIds []string) error {
	logrus.Debug("ListIncomingFriendsResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v\nuserIds: %v", model.TypeListIncomingFriendsResponse, utils.GenerateMessageID(), code, id, userIds)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) ListOfFriendsRequest(friendId *string, id *string) error {
	logrus.Debug("ListOfFriendsRequest")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %v\nid: %v", model.TypeListOfFriendsRequest, utils.GenerateMessageID(), friendId, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) ListOfFriendsResponse(code int64, friendIds []string, id string) error {
	logrus.Debug("ListOfFriendsResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nfriendIds: %v\nid: %v", model.TypeListOfFriendsResponse, utils.GenerateMessageID(), code, friendIds, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) ListOnlineFriendsRequest(id *string) error {
	logrus.Debug("ListOnlineFriendsRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v", model.TypeListOnlineFriendsRequest, utils.GenerateMessageID(), id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) ListOutgoingFriendsRequest(id *string) error {
	logrus.Debug("ListOutgoingFriendsRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v", model.TypeListOutgoingFriendsRequest, utils.GenerateMessageID(), id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) ListOutgoingFriendsResponse(code int64, friendIds []string, id string) error {
	logrus.Debug("ListOutgoingFriendsResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nfriendIds: %v\nid: %v", model.TypeListOutgoingFriendsResponse, utils.GenerateMessageID(), code, friendIds, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) MatchmakingNotif(counterPartyMember []string, matchId string, message string, partyMember []string, readyDuration int64, status string) error {
	logrus.Debug("MatchmakingNotif")
	text := fmt.Sprintf("type: %s\n%s\ncounterPartyMember: %v\nmatchId: %v\nmessage: %v\npartyMember: %v\nreadyDuration: %v\nstatus: %v", model.TypeMatchmakingNotif, utils.GenerateMessageID(), counterPartyMember, matchId, message, partyMember, readyDuration, status)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) MessageNotif(from string, id string, payload string, sentAt int64, to string, topic string) error {
	logrus.Debug("MessageNotif")
	text := fmt.Sprintf("type: %s\n%s\nfrom: %v\nid: %v\npayload: %v\nsentAt: %v\nto: %v\ntopic: %v", model.TypeMessageNotif, utils.GenerateMessageID(), from, id, payload, sentAt, to, topic)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) OfflineNotificationRequest(id *string) error {
	logrus.Debug("OfflineNotificationRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v", model.TypeOfflineNotificationRequest, utils.GenerateMessageID(), id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) OfflineNotificationResponse(code int64, id string) error {
	logrus.Debug("OfflineNotificationResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypeOfflineNotificationResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) OnlineFriends(code int64, id string, onlineFriendIds []string) error {
	logrus.Debug("OnlineFriends")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v\nonlineFriendIds: %v", model.TypeOnlineFriends, utils.GenerateMessageID(), code, id, onlineFriendIds)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyChatNotif(from string, id string, payload string, receivedAt int64, to string) error {
	logrus.Debug("PartyChatNotif")
	text := fmt.Sprintf("type: %s\n%s\nfrom: %v\nid: %v\npayload: %v\nreceivedAt: %v\nto: %v", model.TypePartyChatNotif, utils.GenerateMessageID(), from, id, payload, receivedAt, to)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyChatRequest(from *string, id *string, payload *string, receivedAt *int64, to *string) error {
	logrus.Debug("PartyChatRequest")
	text := fmt.Sprintf("type: %s\n%s\nfrom: %v\nid: %v\npayload: %v\nreceivedAt: %v\nto: %v", model.TypePartyChatRequest, utils.GenerateMessageID(), from, id, payload, receivedAt, to)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyChatResponse(code int64, id string) error {
	logrus.Debug("PartyChatResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypePartyChatResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyCreateRequest(id *string) error {
	logrus.Debug("PartyCreateRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v", model.TypePartyCreateRequest, utils.GenerateMessageID(), id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyCreateResponse(code int64, id string, invitationToken string, invitees string, leaderId string, members string, partyId string) error {
	logrus.Debug("PartyCreateResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v\ninvitationToken: %v\ninvitees: %v\nleaderId: %v\nmembers: %v\npartyId: %v", model.TypePartyCreateResponse, utils.GenerateMessageID(), code, id, invitationToken, invitees, leaderId, members, partyId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyDataUpdateNotif(customAttributes string, invitees []string, leader string, members []string, namespace string, partyId string, updatedAt int64) error {
	logrus.Debug("PartyDataUpdateNotif")
	text := fmt.Sprintf("type: %s\n%s\ncustomAttributes: %v\ninvitees: %v\nleader: %v\nmembers: %v\nnamespace: %v\npartyId: %v\nupdatedAt: %v", model.TypePartyDataUpdateNotif, utils.GenerateMessageID(), customAttributes, invitees, leader, members, namespace, partyId, updatedAt)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyGetInvitedNotif(from string, invitationToken string, partyId string) error {
	logrus.Debug("PartyGetInvitedNotif")
	text := fmt.Sprintf("type: %s\n%s\nfrom: %v\ninvitationToken: %v\npartyId: %v", model.TypePartyGetInvitedNotif, utils.GenerateMessageID(), from, invitationToken, partyId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyInfoRequest(id *string) error {
	logrus.Debug("PartyInfoRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v", model.TypePartyInfoRequest, utils.GenerateMessageID(), id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyInfoResponse(code int64, customAttributes string, id string, invitationToken string, invitees string, leaderId string, members string, partyId string) error {
	logrus.Debug("PartyInfoResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\ncustomAttributes: %v\nid: %v\ninvitationToken: %v\ninvitees: %v\nleaderId: %v\nmembers: %v\npartyId: %v", model.TypePartyInfoResponse, utils.GenerateMessageID(), code, customAttributes, id, invitationToken, invitees, leaderId, members, partyId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyInviteNotif(inviteeId string, inviterId string) error {
	logrus.Debug("PartyInviteNotif")
	text := fmt.Sprintf("type: %s\n%s\ninviteeId: %v\ninviterId: %v", model.TypePartyInviteNotif, utils.GenerateMessageID(), inviteeId, inviterId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyInviteRequest(friendId *string, id *string) error {
	logrus.Debug("PartyInviteRequest")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %v\nid: %v", model.TypePartyInviteRequest, utils.GenerateMessageID(), friendId, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyInviteResponse(code int64, id string) error {
	logrus.Debug("PartyInviteResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypePartyInviteResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyJoinNotif(userId string) error {
	logrus.Debug("PartyJoinNotif")
	text := fmt.Sprintf("type: %s\n%s\nuserId: %v", model.TypePartyJoinNotif, utils.GenerateMessageID(), userId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyJoinRequest(id *string, invitationToken *string, partyId *string) error {
	logrus.Debug("PartyJoinRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v\ninvitationToken: %v\npartyId: %v", model.TypePartyJoinRequest, utils.GenerateMessageID(), id, invitationToken, partyId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyJoinResponse(code int64, id string, invitationToken string, invitees string, leaderId string, members string, partyId string) error {
	logrus.Debug("PartyJoinResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v\ninvitationToken: %v\ninvitees: %v\nleaderId: %v\nmembers: %v\npartyId: %v", model.TypePartyJoinResponse, utils.GenerateMessageID(), code, id, invitationToken, invitees, leaderId, members, partyId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyKickNotif(leaderId string, partyId string, userId string) error {
	logrus.Debug("PartyKickNotif")
	text := fmt.Sprintf("type: %s\n%s\nleaderId: %v\npartyId: %v\nuserId: %v", model.TypePartyKickNotif, utils.GenerateMessageID(), leaderId, partyId, userId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyKickRequest(id *string, memberId *string) error {
	logrus.Debug("PartyKickRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v\nmemberId: %v", model.TypePartyKickRequest, utils.GenerateMessageID(), id, memberId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyKickResponse(code int64, id string) error {
	logrus.Debug("PartyKickResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypePartyKickResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyLeaveNotif(leaderId string, userId string) error {
	logrus.Debug("PartyLeaveNotif")
	text := fmt.Sprintf("type: %s\n%s\nleaderId: %v\nuserId: %v", model.TypePartyLeaveNotif, utils.GenerateMessageID(), leaderId, userId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyLeaveRequest(id *string, ignoreUserRegistry *bool) error {
	logrus.Debug("PartyLeaveRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v\nignoreUserRegistry: %v", model.TypePartyLeaveRequest, utils.GenerateMessageID(), id, ignoreUserRegistry)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyLeaveResponse(code int64, id string) error {
	logrus.Debug("PartyLeaveResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypePartyLeaveResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyPromoteLeaderRequest(id *string, newLeaderUserId *string) error {
	logrus.Debug("PartyPromoteLeaderRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v\nnewLeaderUserId: %v", model.TypePartyPromoteLeaderRequest, utils.GenerateMessageID(), id, newLeaderUserId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyPromoteLeaderResponse(code int64, id string, invitationToken string, invitees string, leaderId string, members string, partyId string) error {
	logrus.Debug("PartyPromoteLeaderResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v\ninvitationToken: %v\ninvitees: %v\nleaderId: %v\nmembers: %v\npartyId: %v", model.TypePartyPromoteLeaderResponse, utils.GenerateMessageID(), code, id, invitationToken, invitees, leaderId, members, partyId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyRejectNotif(leaderId string, partyId string, userId string) error {
	logrus.Debug("PartyRejectNotif")
	text := fmt.Sprintf("type: %s\n%s\nleaderId: %v\npartyId: %v\nuserId: %v", model.TypePartyRejectNotif, utils.GenerateMessageID(), leaderId, partyId, userId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyRejectRequest(id *string, invitationToken *string, partyId *string) error {
	logrus.Debug("PartyRejectRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v\ninvitationToken: %v\npartyId: %v", model.TypePartyRejectRequest, utils.GenerateMessageID(), id, invitationToken, partyId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PartyRejectResponse(code int64, id string, partyId string) error {
	logrus.Debug("PartyRejectResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v\npartyId: %v", model.TypePartyRejectResponse, utils.GenerateMessageID(), code, id, partyId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PersonalChatHistoryRequest(friendId *string, id *string) error {
	logrus.Debug("PersonalChatHistoryRequest")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %v\nid: %v", model.TypePersonalChatHistoryRequest, utils.GenerateMessageID(), friendId, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PersonalChatHistoryResponse(chat string, code int64, friendId string, id string) error {
	logrus.Debug("PersonalChatHistoryResponse")
	text := fmt.Sprintf("type: %s\n%s\nchat: %v\ncode: %v\nfriendId: %v\nid: %v", model.TypePersonalChatHistoryResponse, utils.GenerateMessageID(), chat, code, friendId, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PersonalChatNotif(from string, id string, payload string, receivedAt int64, to string) error {
	logrus.Debug("PersonalChatNotif")
	text := fmt.Sprintf("type: %s\n%s\nfrom: %v\nid: %v\npayload: %v\nreceivedAt: %v\nto: %v", model.TypePersonalChatNotif, utils.GenerateMessageID(), from, id, payload, receivedAt, to)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PersonalChatRequest(from *string, id *string, payload *string, receivedAt *int64, to *string) error {
	logrus.Debug("PersonalChatRequest")
	text := fmt.Sprintf("type: %s\n%s\nfrom: %v\nid: %v\npayload: %v\nreceivedAt: %v\nto: %v", model.TypePersonalChatRequest, utils.GenerateMessageID(), from, id, payload, receivedAt, to)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) PersonalChatResponse(code int64, id string) error {
	logrus.Debug("PersonalChatResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypePersonalChatResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) RejectFriendsNotif(userId string) error {
	logrus.Debug("RejectFriendsNotif")
	text := fmt.Sprintf("type: %s\n%s\nuserId: %v", model.TypeRejectFriendsNotif, utils.GenerateMessageID(), userId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) RejectFriendsRequest(friendId *string, id *string) error {
	logrus.Debug("RejectFriendsRequest")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %v\nid: %v", model.TypeRejectFriendsRequest, utils.GenerateMessageID(), friendId, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) RejectFriendsResponse(code int64, id string) error {
	logrus.Debug("RejectFriendsResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypeRejectFriendsResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) RematchmakingNotif(banDuration int64) error {
	logrus.Debug("RematchmakingNotif")
	text := fmt.Sprintf("type: %s\n%s\nbanDuration: %v", model.TypeRematchmakingNotif, utils.GenerateMessageID(), banDuration)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) RequestFriendsNotif(friendId string) error {
	logrus.Debug("RequestFriendsNotif")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %v", model.TypeRequestFriendsNotif, utils.GenerateMessageID(), friendId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) RequestFriendsRequest(friendId *string, id *string) error {
	logrus.Debug("RequestFriendsRequest")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %v\nid: %v", model.TypeRequestFriendsRequest, utils.GenerateMessageID(), friendId, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) RequestFriendsResponse(code int64, id string) error {
	logrus.Debug("RequestFriendsResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypeRequestFriendsResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) SendChannelChatRequest(channelSlug *string, id *string, payload *string) error {
	logrus.Debug("SendChannelChatRequest")
	text := fmt.Sprintf("type: %s\n%s\nchannelSlug: %v\nid: %v\npayload: %v", model.TypeSendChannelChatRequest, utils.GenerateMessageID(), channelSlug, id, payload)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) SendChannelChatResponse(code int64, id string) error {
	logrus.Debug("SendChannelChatResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypeSendChannelChatResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) SetReadyConsentNotif(matchId string, userId string) error {
	logrus.Debug("SetReadyConsentNotif")
	text := fmt.Sprintf("type: %s\n%s\nmatchId: %v\nuserId: %v", model.TypeSetReadyConsentNotif, utils.GenerateMessageID(), matchId, userId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) SetReadyConsentRequest(id *string, matchId *string) error {
	logrus.Debug("SetReadyConsentRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v\nmatchId: %v", model.TypeSetReadyConsentRequest, utils.GenerateMessageID(), id, matchId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) SetReadyConsentResponse(code int64, id string) error {
	logrus.Debug("SetReadyConsentResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypeSetReadyConsentResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) SetSessionAttributeRequest(id *string, key *string, namespace *string, value *string) error {
	logrus.Debug("SetSessionAttributeRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v\nkey: %v\nnamespace: %v\nvalue: %v", model.TypeSetSessionAttributeRequest, utils.GenerateMessageID(), id, key, namespace, value)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) SetSessionAttributeResponse(code int64, id string) error {
	logrus.Debug("SetSessionAttributeResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypeSetSessionAttributeResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) SetUserStatusRequest(activity *string, availability *int64, id *string) error {
	logrus.Debug("SetUserStatusRequest")
	text := fmt.Sprintf("type: %s\n%s\nactivity: %v\navailability: %v\nid: %v", model.TypeSetUserStatusRequest, utils.GenerateMessageID(), activity, availability, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) SetUserStatusResponse(code int64, id string) error {
	logrus.Debug("SetUserStatusResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypeSetUserStatusResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) ShutdownNotif(message string) error {
	logrus.Debug("ShutdownNotif")
	text := fmt.Sprintf("type: %s\n%s\nmessage: %v", model.TypeShutdownNotif, utils.GenerateMessageID(), message)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) SignalingP2PNotif(destinationId string, message string) error {
	logrus.Debug("SignalingP2PNotif")
	text := fmt.Sprintf("type: %s\n%s\ndestinationId: %v\nmessage: %v", model.TypeSignalingP2PNotif, utils.GenerateMessageID(), destinationId, message)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) StartMatchmakingRequest(extraAttributes *string, gameMode *string, id *string, partyAttributes map[string]interface{}, priority *int64, tempParty *string) error {
	logrus.Debug("StartMatchmakingRequest")
	text := fmt.Sprintf("type: %s\n%s\nextraAttributes: %v\ngameMode: %v\nid: %v\npartyAttributes: %v\npriority: %v\ntempParty: %v", model.TypeStartMatchmakingRequest, utils.GenerateMessageID(), extraAttributes, gameMode, id, partyAttributes, priority, tempParty)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) StartMatchmakingResponse(code int64, id string) error {
	logrus.Debug("StartMatchmakingResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypeStartMatchmakingResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) SystemComponentsStatus(components string) error {
	logrus.Debug("SystemComponentsStatus")
	text := fmt.Sprintf("type: %s\n%s\ncomponents: %v", model.TypeSystemComponentsStatus, utils.GenerateMessageID(), components)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) UnblockPlayerNotif(unblockedUserId string, userId string) error {
	logrus.Debug("UnblockPlayerNotif")
	text := fmt.Sprintf("type: %s\n%s\nunblockedUserId: %v\nuserId: %v", model.TypeUnblockPlayerNotif, utils.GenerateMessageID(), unblockedUserId, userId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) UnblockPlayerRequest(id *string, namespace *string, unblockedUserId *string) error {
	logrus.Debug("UnblockPlayerRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v\nnamespace: %v\nunblockedUserId: %v", model.TypeUnblockPlayerRequest, utils.GenerateMessageID(), id, namespace, unblockedUserId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) UnblockPlayerResponse(code int64, id string, namespace string, unblockedUserId string) error {
	logrus.Debug("UnblockPlayerResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v\nnamespace: %v\nunblockedUserId: %v", model.TypeUnblockPlayerResponse, utils.GenerateMessageID(), code, id, namespace, unblockedUserId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) UnfriendNotif(friendId string) error {
	logrus.Debug("UnfriendNotif")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %v", model.TypeUnfriendNotif, utils.GenerateMessageID(), friendId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) UnfriendRequest(friendId *string, id *string) error {
	logrus.Debug("UnfriendRequest")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %v\nid: %v", model.TypeUnfriendRequest, utils.GenerateMessageID(), friendId, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) UnfriendResponse(code int64, id string) error {
	logrus.Debug("UnfriendResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v", model.TypeUnfriendResponse, utils.GenerateMessageID(), code, id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) UserBannedNotification() error {
	logrus.Debug("UserBannedNotification")
	text := fmt.Sprintf("type: %s\n%s", model.TypeUserBannedNotification, utils.GenerateMessageID())
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) UserMetricRequest(id *string) error {
	logrus.Debug("UserMetricRequest")
	text := fmt.Sprintf("type: %s\n%s\nid: %v", model.TypeUserMetricRequest, utils.GenerateMessageID(), id)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) UserMetricResponse(code int64, id string, playerCount int64) error {
	logrus.Debug("UserMetricResponse")
	text := fmt.Sprintf("type: %s\n%s\ncode: %v\nid: %v\nplayerCount: %v", model.TypeUserMetricResponse, utils.GenerateMessageID(), code, id, playerCount)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (lobbyService *LobbyServiceWebsocket) UserStatusNotif(activity string, availability int64, lastSeenAt string, userId string) error {
	logrus.Debug("UserStatusNotif")
	text := fmt.Sprintf("type: %s\n%s\nactivity: %v\navailability: %v\nlastSeenAt: %v\nuserId: %v", model.TypeUserStatusNotif, utils.GenerateMessageID(), activity, availability, lastSeenAt, userId)
	err := lobbyService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

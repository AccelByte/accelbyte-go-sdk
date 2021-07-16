// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package parser

import (
	"bufio"
	"bytes"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"strconv"
	"strings"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/model"

	"github.com/sirupsen/logrus"
)

// Error types
var (
	ErrUnknownType        = errors.New("unknown type")
	ErrUnexpectedType     = errors.New("unexpected type")
	ErrInvalidMessageLine = errors.New("invalid message line")
)

const (
	newLine      = '\n'
	keyType      = "type: "
	keyRequestID = "id: "
)

// UnmarshalResponse converts response message to internal message format
func UnmarshalResponse(message []byte) (model.Message, error) {
	reader := bufio.NewReader(bytes.NewReader(message))
	msgType, err := getResponseIdentifier(reader)
	if err != nil {
		return nil, err
	}

	return unmarshalResponseContent(msgType, reader)
}

func getResponseIdentifier(reader *bufio.Reader) (messageType string, err error) {
	msgType, err := reader.ReadString(newLine)
	if err != nil && err != io.EOF {
		return model.TypeUnknown, err
	}
	msgType = strings.TrimSuffix(msgType, string(newLine))
	msgType = strings.TrimPrefix(msgType, keyType)

	if msgType == "" {
		return model.TypeHeartbeat, nil
	}

	switch msgType {
	case model.TypeConnected,
		model.TypeDisconnected,
		model.TypeError, model.TypeShutdown,
		model.TypeInfoResponse,
		model.TypeCreateResponse,
		model.TypeLeaveResponse,
		model.TypeInviteResponse,
		model.TypeJoinResponse,
		model.TypeKickResponse,
		model.TypeKickNotice,
		model.TypeJoinNotif,
		model.TypeInviteNotif,
		model.TypeLeaveNotif,
		model.TypePersonalChatResponse,
		model.TypePersonalChatNotif,
		model.TypePartyChatResponse,
		model.TypePersonalChatHistoryResponse,
		model.TypePartyChatNotif,
		model.TypeOnlineFriends,
		model.TypeNotificationMessage,
		model.TypeGetOfflineNotificationRequest,
		model.TypeFriendsPresenceResponse,
		model.TypeSetUserStatusResponse,
		model.TypeGetInvitatedNotif,
		model.TypeUserStatusNotif,
		model.TypeGetOfflineNotificationResponse,
		model.TypeStartMatchmakingResponse,
		model.TypeCancelMatchmakingResponse,
		model.TypeMatchmakingNotif,
		model.TypeSetReadyConsentResponse,
		model.TypeSetReadyConsentNotif,
		model.TypeRematchmakingNotif,
		model.TypeRequestFriendsResponse,
		model.TypeListIncomingFriendsResponse,
		model.TypeListOutgoingFriendsResponse,
		model.TypeAcceptFriendsResponse,
		model.TypeRejectFriendsResponse,
		model.TypeCancelFriendsResponse,
		model.TypeUnfriendResponse,
		model.TypeListOfFriendsResponse,
		model.TypeGetFriendshipStatusResponse,
		model.TypeRequestFriendsNotif,
		model.TypeAcceptFriendsNotif,
		model.TypeDSNotif,
		model.TypePartyDataUpdateNotif,
		model.TypeSystemComponentsStatus,
		model.TypeJoinDefaultChannelResponse,
		model.TypeSendChannelChatResponse,
		model.TypeChannelChatNotif,
		model.TypeRejectNotif,
		model.TypeRejectResponse,
		model.TypeBlockPlayerResponse,
		model.TypeUnblockPlayerResponse,
		model.TypeBlockPlayerNotif,
		model.TypeUnblockPlayerNotif,
		model.TypeSetSessionAttributeResponse,
		model.TypeSignalingP2PNotif,
		model.TypePromoteLeaderResponse,
		model.TypeUnfriendNotif:
	default:
		return model.TypeUnknown, ErrUnknownType
	}

	return msgType, nil
}

func unmarshalResponseContent(messageType string, reader *bufio.Reader) (model.Message, error) {
	switch messageType {
	case model.TypeError:
		return unmarshalError(reader)
	case model.TypeConnected:
		return unmarshalConnectedResponse(reader)
	case model.TypeInfoResponse:
		return unmarshalInfoResponse(reader)
	case model.TypeCreateResponse:
		return unmarshalCreateResponse(reader)
	case model.TypeLeaveResponse:
		return unmarshalLeaveResponse(reader)
	case model.TypeInviteResponse:
		return unmarshalInviteResponse(reader)
	case model.TypeGetInvitatedNotif:
		return unmarshalInvitation(reader)
	case model.TypeJoinResponse:
		return unmarshalJoinResponse(reader)
	case model.TypeRejectResponse:
		return unmarshalRejectResponse(reader)
	case model.TypeRejectNotif:
		return unmarshalRejectNotice(reader)
	case model.TypeKickResponse:
		return unmarshalKickResponse(reader)
	case model.TypeKickNotice:
		return unmarshalKickNotice(reader)
	case model.TypeJoinNotif:
		return unmarshalJoinNotice(reader)
	case model.TypeInviteNotif:
		return unmarshalInviteNotice(reader)
	case model.TypeLeaveNotif:
		return unmarshalLeaveNotice(reader)
	case model.TypePersonalChatNotif:
		return unmarshalReceived1to1Chat(reader)
	case model.TypePersonalChatResponse:
		return unmarshalPersonalChatResponse(reader)
	case model.TypePartyChatNotif:
		return unmarshalPartyChatNotif(reader)
	case model.TypePartyChatResponse:
		return unmarshalPartyChatResponse(reader)
	case model.TypePersonalChatHistoryResponse:
		return unmarshalPersonalChatHistoryResponse(reader)
	case model.TypeOnlineFriends:
		return unmarshalOnlineFriendsResponse(reader)
	case model.TypeNotificationMessage:
		return unmarshalNotificationMessage(reader)
	case model.TypeGetOfflineNotificationResponse:
		return unmarshalNotificationResponse(reader)
	case model.TypeSetUserStatusResponse:
		return unmarshalSetUserStatusResponse(reader)
	case model.TypeFriendsPresenceResponse:
		return unmarshalFriendsPresenceResponse(reader)
	case model.TypeUserStatusNotif:
		return unmarshalNotifyFriendsResponse(reader)
	case model.TypeStartMatchmakingResponse:
		return unmarshalStartMatchmakingResponse(reader)
	case model.TypeCancelMatchmakingResponse:
		return unmarshalCancelMatchmakingResponse(reader)
	case model.TypeMatchmakingNotif:
		return unmarshalMatchmakingNotification(reader)
	case model.TypeSetReadyConsentResponse:
		return unmarshalSetReadyConsentResponse(reader)
	case model.TypeSetReadyConsentNotif:
		return unmarshalSetReadyConsentNotif(reader)
	case model.TypeRematchmakingNotif:
		return unmarshalRematchmakingNotif(reader)
	case model.TypeRequestFriendsResponse:
		return unmarshalRequestFriendsResponse(reader)
	case model.TypeRequestFriendsNotif:
		return unmarshalRequestFriendsNotif(reader)
	case model.TypeListIncomingFriendsResponse:
		return unmarshalListIncomingFriendsResponse(reader)
	case model.TypeListOutgoingFriendsResponse:
		return unmarshalListOutgoingFriendsResponse(reader)
	case model.TypeAcceptFriendsResponse:
		return unmarshalAcceptFriendsResponse(reader)
	case model.TypeAcceptFriendsNotif:
		return unmarshalAcceptFriendsNotif(reader)
	case model.TypeRejectFriendsResponse:
		return unmarshalRejectFriendsResponse(reader)
	case model.TypeCancelFriendsResponse:
		return unmarshalCancelFriendsResponse(reader)
	case model.TypeUnfriendResponse:
		return unmarshalUnfriendResponse(reader)
	case model.TypeUnfriendNotif:
		return unmarshalUnfriendNotif(reader)
	case model.TypeListOfFriendsResponse:
		return unmarshalListOfFriendsResponse(reader)
	case model.TypeGetFriendshipStatusResponse:
		return unmarshalGetFriendshipStatusResponse(reader)
	case model.TypeDSNotif:
		return unmarshalDSNotif(reader)
	case model.TypeSystemComponentsStatus:
		return unmarshalSystemComponentsStatus(reader)
	case model.TypePartyDataUpdateNotif:
		return unmarshalPartyDataUpdateNotif(reader)
	case model.TypeJoinDefaultChannelResponse:
		return unmarshalJoinDefaultChannelResponse(reader)
	case model.TypeChannelChatNotif:
		return unmarshalChannelChatNotif(reader)
	case model.TypeBlockPlayerResponse:
		return unmarshalBlockPlayerResponse(reader)
	case model.TypeBlockPlayerNotif:
		return unmarshalBlockPlayerNotif(reader)
	case model.TypeUnblockPlayerResponse:
		return unmarshalUnblockPlayerResponse(reader)
	case model.TypeUnblockPlayerNotif:
		return unmarshalUnblockPlayerNotif(reader)
	case model.TypeSetSessionAttributeResponse:
		return unmarshalSetSessionAttributeResponse(reader)
	case model.TypeSendChannelChatResponse:
		return unmarshalSendChannelChatResponse(reader)
	case model.TypeSignalingP2PNotif:
		return unmarshalSignalingP2PResponse(reader)
	case model.TypePromoteLeaderResponse:
		return unmarshalPromoteLeaderResponse(reader)
	}

	logrus.Debug("type not handled : ", messageType)
	return nil, ErrUnexpectedType
}

func unmarshalError(reader *bufio.Reader) (*model.ErrorMessage, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.ErrorMessage{
		BaseResponse: &model.BaseResponse{Code: responseCode},
		Message:      content["message"],
	}
	return response, nil
}

func unmarshalConnectedResponse(reader *bufio.Reader) (*model.Connected, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.Connected{
		LobbySessionID: content["lobbySessionID"],
	}
	return response, nil
}

func unmarshalInfoResponse(reader *bufio.Reader) (*model.InfoResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.InfoResponse{
		BaseResponse:    &model.BaseResponse{Code: responseCode},
		PartyID:         content["partyID"],
		LeaderID:        content["leaderID"],
		Members:         content["members"],
		Invitees:        content["invitees"],
		InvitationToken: content["invitationToken"],
	}
	return response, nil
}

func unmarshalCreateResponse(reader *bufio.Reader) (*model.CreateResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.CreateResponse{
		BaseResponse:    &model.BaseResponse{Code: responseCode},
		PartyID:         content["partyID"],
		LeaderID:        content["leaderID"],
		Members:         content["members"],
		Invitees:        content["invitees"],
		InvitationToken: content["invitationToken"],
	}
	return response, nil
}

func unmarshalLeaveResponse(reader *bufio.Reader) (*model.LeaveResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.LeaveResponse{
		BaseResponse: &model.BaseResponse{Code: responseCode},
	}
	return response, nil
}

func unmarshalInviteResponse(reader *bufio.Reader) (*model.InviteResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.InviteResponse{
		BaseResponse: &model.BaseResponse{Code: responseCode},
	}
	return response, nil
}

func unmarshalInvitation(reader *bufio.Reader) (*model.Invitation, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.Invitation{
		From:            content["from"],
		PartyID:         content["partyID"],
		InvitationToken: content["invitationToken"],
	}
	return response, nil
}

func unmarshalJoinResponse(reader *bufio.Reader) (*model.JoinResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.JoinResponse{
		BaseResponse:    &model.BaseResponse{Code: responseCode},
		PartyID:         content["partyID"],
		LeaderID:        content["leaderID"],
		Members:         content["members"],
		Invitees:        content["invitees"],
		InvitationToken: content["invitationToken"],
	}
	return response, nil
}

func unmarshalRejectResponse(reader *bufio.Reader) (*model.RejectResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.RejectResponse{
		BaseResponse: &model.BaseResponse{Code: responseCode},
		PartyID:      content["partyID"],
	}
	return response, nil
}

func unmarshalRejectNotice(reader *bufio.Reader) (*model.RejectNotice, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.RejectNotice{
		PartyID:  content["partyID"],
		LeaderID: content["leaderID"],
		UserID:   content["userID"],
	}
	return response, nil
}

func unmarshalKickResponse(reader *bufio.Reader) (*model.KickResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.KickResponse{
		BaseResponse: &model.BaseResponse{Code: responseCode},
	}
	return response, nil
}

func unmarshalKickNotice(reader *bufio.Reader) (*model.KickNotice, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.KickNotice{
		LeaderID: content["leaderID"],
		UserID:   content["userID"],
		PartyID:  content["partyID"],
	}
	return response, nil
}

func unmarshalJoinNotice(reader *bufio.Reader) (*model.JoinNotice, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.JoinNotice{
		UserID: content["userID"],
	}
	return response, nil
}

func unmarshalInviteNotice(reader *bufio.Reader) (*model.InviteNotice, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.InviteNotice{
		InviterID: content["inviterID"],
		InviteeID: content["inviteeID"],
	}
	return response, nil
}

func unmarshalLeaveNotice(reader *bufio.Reader) (*model.LeaveNotice, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.LeaveNotice{
		UserID:   content["userID"],
		LeaderID: content["leaderID"],
	}
	return response, nil
}

func unmarshalReceived1to1Chat(reader *bufio.Reader) (notif *model.PersonalChatNotif, err error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	parsedTime, err := time.Parse(time.RFC3339, content["receivedAt"])
	if err != nil {
		return nil, err
	}

	response := &model.PersonalChatNotif{
		ChatMessage: &model.ChatMessage{
			ID:         content["id"],
			From:       content["from"],
			To:         content["to"],
			Payload:    content["payload"],
			ReceivedAt: parsedTime.Unix(),
		},
	}
	return response, nil
}

func unmarshalPersonalChatResponse(reader *bufio.Reader) (response *model.PersonalChatResponse, err error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response = &model.PersonalChatResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalPartyChatNotif(reader *bufio.Reader) (notif *model.PartyChatNotif, err error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	parsedTime, err := time.Parse(time.RFC3339, content["receivedAt"])
	if err != nil {
		return nil, err
	}

	response := &model.PartyChatNotif{
		ChatMessage: &model.ChatMessage{
			ID:         content["id"],
			From:       content["from"],
			To:         content["to"],
			Payload:    content["payload"],
			ReceivedAt: parsedTime.Unix(),
		},
	}
	return response, nil
}

func unmarshalPartyChatResponse(reader *bufio.Reader) (notif *model.PartyChatResponse, err error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.PartyChatResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalPersonalChatHistoryResponse(reader *bufio.Reader) (notif *model.PersonalChatHistoryResponse, err error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model.PersonalChatHistoryResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		FriendID: content["friendId"],
		Chat:     content["chat"],
	}
	return response, nil
}

func unmarshalOnlineFriendsResponse(reader *bufio.Reader) (*model.OnlineFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	var onlineFriendsIDs []string
	friendsID := strings.TrimPrefix(content["onlineFriendsId"], "[")
	friendsID = strings.TrimSuffix(friendsID, "]")
	for _, userID := range strings.Split(friendsID, ",") {
		if userID != "" {
			onlineFriendsIDs = append(onlineFriendsIDs, userID)
		}
	}

	return &model.OnlineFriendsResponse{UserID: onlineFriendsIDs}, nil
}

func unmarshalNotificationMessage(reader *bufio.Reader) (*model.NotificationMessage, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	parsedTime, err := time.Parse(time.RFC3339, content["sentAt"])
	if err != nil {
		return nil, err
	}
	response := &model.NotificationMessage{
		ID:      content["id"],
		From:    content["from"],
		To:      content["to"],
		Topic:   content["topic"],
		Payload: content["payload"],
		SentAt:  parsedTime.Unix(),
	}
	return response, nil
}

func unmarshalNotificationResponse(reader *bufio.Reader) (response *model.GetOfflineNotificationResponse, err error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response = &model.GetOfflineNotificationResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalFriendsPresenceResponse(reader *bufio.Reader) (*model.ListFriendsPresenceResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	var userIDs []string
	userIDsPayload := strings.TrimPrefix(content["friendsId"], "[")
	userIDsPayload = strings.TrimSuffix(userIDsPayload, "]")
	for _, userID := range strings.Split(userIDsPayload, ",") {
		if userID != "" {
			userIDs = append(userIDs, userID)
		}
	}

	var userAvailability []int
	statusAvailability := strings.TrimPrefix(content["availability"], "[")
	statusAvailability = strings.TrimSuffix(statusAvailability, "]")
	for _, payload := range strings.Split(statusAvailability, ",") {
		if payload != "" {
			intPayload, errParsing := strconv.Atoi(payload)
			if errParsing != nil {
				return nil, errParsing
			}
			userAvailability = append(userAvailability, intPayload)
		}
	}

	var userActivity []string
	statusActivity := strings.TrimPrefix(content["activity"], "[")
	statusActivity = strings.TrimSuffix(statusActivity, "]")
	for _, payload := range strings.Split(statusActivity, ",") {
		if payload != "" {
			userActivity = append(userActivity, payload)
		}
	}

	var userLastSeenAt []string
	statusLastSeenAt := strings.TrimPrefix(content["lastSeenAt"], "[")
	statusLastSeenAt = strings.TrimSuffix(statusLastSeenAt, "]")
	for _, payload := range strings.Split(statusLastSeenAt, ",") {
		if payload != "" {
			userLastSeenAt = append(userLastSeenAt, payload)
		}
	}

	response := &model.ListFriendsPresenceResponse{
		BaseResponse: &model.BaseResponse{Code: responseCode, MessageID: content["id"]},
		UserID:       userIDs,
		Availability: userAvailability,
		Activity:     userActivity,
		LastSeenAt:   userLastSeenAt,
	}
	return response, nil
}

func unmarshalSetUserStatusResponse(reader *bufio.Reader) (*model.SetUserStatusResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.SetUserStatusResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalNotifyFriendsResponse(reader *bufio.Reader) (*model.FriendsPresenceNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	availability, err := strconv.Atoi(content["availability"])
	if err != nil {
		return nil, err
	}

	response := &model.FriendsPresenceNotif{
		UserID:       content["userID"],
		Availability: availability,
		Activity:     content["activity"],
	}
	return response, nil
}

func unmarshalStartMatchmakingResponse(reader *bufio.Reader) (*model.StartMatchmakingResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.StartMatchmakingResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalCancelMatchmakingResponse(reader *bufio.Reader) (*model.CancelMatchmakingResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.CancelMatchmakingResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalMatchmakingNotification(reader *bufio.Reader) (*model.MatchmakingNotification, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	pm := content["partyMember"]
	pm = strings.TrimSuffix(pm, "]")
	pm = strings.TrimPrefix(pm, "[")
	partyMember := strings.Split(pm, ",")
	if pm == "" {
		partyMember = []string{}
	}

	cpm := content["counterPartyMember"]
	cpm = strings.TrimSuffix(cpm, "]")
	cpm = strings.TrimPrefix(cpm, "[")
	counterPartyMember := strings.Split(cpm, ",")
	if cpm == "" {
		counterPartyMember = []string{}
	}

	response := &model.MatchmakingNotification{
		MatchID:                  content["matchId"],
		Status:                   content["status"],
		PartyMemberUserID:        partyMember,
		CounterPartyMemberUserID: counterPartyMember,
	}

	return response, nil
}

func unmarshalSetReadyConsentResponse(reader *bufio.Reader) (*model.SetReadyConsentResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.SetReadyConsentResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalSetReadyConsentNotif(reader *bufio.Reader) (*model.SetReadyConsentNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.SetReadyConsentNotif{
		MatchID: content["matchId"],
		UserID:  content["userId"],
	}
	return response, nil
}

func unmarshalRematchmakingNotif(reader *bufio.Reader) (*model.RematchmakingNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	banDuration, err := strconv.Atoi(content["banDuration"])
	if err != nil {
		return nil, err
	}

	response := &model.RematchmakingNotif{
		BanDuration: banDuration,
	}
	return response, nil
}

func unmarshalRequestFriendsResponse(reader *bufio.Reader) (*model.RequestFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.RequestFriendsResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalRequestFriendsNotif(reader *bufio.Reader) (*model.RequestFriendsNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	return &model.RequestFriendsNotif{FriendID: content["friendId"]}, nil
}

func unmarshalListIncomingFriendsResponse(reader *bufio.Reader) (*model.ListIncomingFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	var userIDs []string
	userIDsPayload := strings.TrimPrefix(content["friendsId"], "[")
	userIDsPayload = strings.TrimSuffix(userIDsPayload, "]")
	for _, userID := range strings.Split(userIDsPayload, ",") {
		if userID != "" {
			userIDs = append(userIDs, userID)
		}
	}

	response := &model.ListIncomingFriendsResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		UserIDs: userIDs,
	}
	return response, nil
}

func unmarshalListOutgoingFriendsResponse(reader *bufio.Reader) (*model.ListOutgoingFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	var userIDs []string
	userIDsPayload := strings.TrimPrefix(content["friendsId"], "[")
	userIDsPayload = strings.TrimSuffix(userIDsPayload, "]")
	for _, userID := range strings.Split(userIDsPayload, ",") {
		if userID != "" {
			userIDs = append(userIDs, userID)
		}
	}

	response := &model.ListOutgoingFriendsResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		UserIDs: userIDs,
	}
	return response, nil
}

func unmarshalAcceptFriendsResponse(reader *bufio.Reader) (*model.AcceptFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.AcceptFriendsResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalAcceptFriendsNotif(reader *bufio.Reader) (*model.AcceptFriendsNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	return &model.AcceptFriendsNotif{FriendID: content["friendId"]}, nil
}

func unmarshalRejectFriendsResponse(reader *bufio.Reader) (*model.RejectFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.RejectFriendsResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalCancelFriendsResponse(reader *bufio.Reader) (*model.CancelFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.CancelFriendsResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalUnfriendResponse(reader *bufio.Reader) (*model.UnfriendResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.UnfriendResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalUnfriendNotif(reader *bufio.Reader) (*model.UnfriendNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	return &model.UnfriendNotif{FriendID: content["friendId"]}, nil
}

func unmarshalListOfFriendsResponse(reader *bufio.Reader) (*model.ListOfFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	var userIDs []string
	userIDsPayload := strings.TrimPrefix(content["friendsId"], "[")
	userIDsPayload = strings.TrimSuffix(userIDsPayload, "]")
	for _, userID := range strings.Split(userIDsPayload, ",") {
		if userID != "" {
			userIDs = append(userIDs, userID)
		}
	}

	response := &model.ListOfFriendsResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		UserIDs: userIDs,
	}
	return response, nil
}

func unmarshalGetFriendshipStatusResponse(reader *bufio.Reader) (*model.GetFriendshipStatusResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.GetFriendshipStatusResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		FriendshipStatus: content["friendshipStatus"],
	}
	return response, nil
}

func unmarshalDSNotif(reader *bufio.Reader) (*model.DSNotification, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	port, err := strconv.Atoi(content["port"])
	if err != nil {
		return nil, err
	}

	ok, err := strconv.ParseBool(content["isOK"])
	if err != nil {
		return nil, err
	}

	alternateIPs := strings.Split(content["alternateIPs"], ",")
	// for unknown reasons alternateIPs have an empty element, remove it
	if len(alternateIPs) > 1 && alternateIPs[len(alternateIPs)-1] == "" {
		alternateIPs = alternateIPs[:len(alternateIPs)-1]
	}

	response := &model.DSNotification{
		Session: &model.Session{
			Region: content["region"],
			ID:     content["matchId"],
			Server: &model.Server{
				AlternateIPs: alternateIPs,
				Namespace:    content["namespace"],
				PodName:      content["podName"],
				ImageVersion: content["imageVersion"],
				StatusText:   content["status"],
				IP:           content["ip"],
				Port:         port,
				Deployment:   content["deployment"],
			},
		},
		Message: content["message"],
		IsOK:    ok,
	}
	return response, nil
}

func unmarshalSystemComponentsStatus(reader *bufio.Reader) (*model.SystemComponentsStatus, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	components := make(map[string]bool)
	componentsPayload := strings.TrimPrefix(content["components"], "{")
	componentsPayload = strings.TrimSuffix(componentsPayload, "}")

	for _, componentStatus := range strings.Split(componentsPayload, ",") {
		componentSlice := strings.Split(componentStatus, ":")
		if len(componentSlice) != 2 {
			return nil, fmt.Errorf("unable to parse %s, expected to have \"string\":bool", componentStatus)
		}

		component := strings.TrimSpace(componentSlice[0]) // component name
		component = strings.Replace(component, "\"", "", -1)
		statusStr := strings.TrimSpace(componentSlice[1]) // bool value

		status, err := strconv.ParseBool(statusStr)
		if err != nil {
			return nil, err
		}
		components[component] = status
	}

	response := &model.SystemComponentsStatus{
		Components: components,
	}

	return response, nil
}

func unmarshalPartyDataUpdateNotif(reader *bufio.Reader) (*model.PartyDataUpdateNotification, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	membersStr := content["members"]
	membersStr = strings.TrimPrefix(membersStr, "[")
	membersStr = strings.TrimSuffix(membersStr, "]")
	members := strings.Split(membersStr, ", ")
	if len(members) == 1 {
		if members[0] == "" {
			members = members[1:]
		}
	}

	inviteesStr := content["invitees"]
	inviteesStr = strings.TrimPrefix(inviteesStr, "[")
	inviteesStr = strings.TrimSuffix(inviteesStr, "]")
	invitees := strings.Split(inviteesStr, ", ")
	if len(invitees) == 1 {
		if invitees[0] == "" {
			invitees = invitees[1:]
		}
	}

	customAttribute := make(map[string]interface{})
	err = json.Unmarshal([]byte(content["custom_attribute"]), &customAttribute)
	if err != nil {
		return nil, err
	}

	updatedAt, err := strconv.ParseInt(content["updatedAt"], 10, 64)
	if err != nil {
		return nil, err
	}

	response := &model.PartyDataUpdateNotification{
		PartyID:         content["partyId"],
		LeaderID:        content["leader"],
		Namespace:       content["namespace"],
		Members:         members,
		Invitees:        invitees,
		CustomAttribute: customAttribute,
		UpdatedAt:       updatedAt,
	}

	return response, nil
}

func unmarshalJoinDefaultChannelResponse(reader *bufio.Reader) (*model.JoinDefaultChannelResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.JoinDefaultChannelResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		ChannelSlug: content["channelSlug"],
	}
	return response, nil
}

func unmarshalChannelChatNotif(reader *bufio.Reader) (*model.ChannelChatNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	parsedTime, err := time.Parse(time.RFC3339, content["sentAt"])
	if err != nil {
		return nil, err
	}

	response := &model.ChannelChatNotif{
		From:        content["from"],
		ChannelSlug: content["channelSlug"],
		Payload:     content["payload"],
		SentAt:      parsedTime,
	}
	return response, nil
}

func unmarshalBlockPlayerResponse(reader *bufio.Reader) (*model.BlockPlayerResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model.BlockPlayerResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		Namespace:     content["namespace"],
		BlockedUserID: content["blockedUserId"],
	}

	return response, nil
}

func unmarshalBlockPlayerNotif(reader *bufio.Reader) (*model.PlayerBlockedNotification, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	response := &model.PlayerBlockedNotification{
		UserID:        content["userId"],
		BlockedUserID: content["blockedUserId"],
	}

	return response, nil
}

func unmarshalUnblockPlayerResponse(reader *bufio.Reader) (*model.UnblockPlayerResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model.UnblockPlayerResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		Namespace:       content["namespace"],
		UnblockedUserID: content["unblockedUserId"],
	}

	return response, nil
}

func unmarshalUnblockPlayerNotif(reader *bufio.Reader) (*model.PlayerUnblockedNotification, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	response := &model.PlayerUnblockedNotification{
		UserID:          content["userId"],
		UnblockedUserID: content["unblockedUserId"],
	}

	return response, nil
}

func unmarshalSetSessionAttributeResponse(reader *bufio.Reader) (*model.SetSessionAttributeResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model.SetSessionAttributeResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalSendChannelChatResponse(reader *bufio.Reader) (*model.SendChannelChatResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model.SendChannelChatResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalSignalingP2PResponse(reader *bufio.Reader) (*model.SignalingP2P, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	response := &model.SignalingP2P{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    "",
		},
		DestinationID: content["destinationId"],
		Message:       content["message"],
	}

	return response, nil
}

func unmarshalPromoteLeaderResponse(reader *bufio.Reader) (*model.PromoteLeaderResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model.PromoteLeaderResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		PartyID:         content["partyID"],
		LeaderID:        content["leaderID"],
		Members:         content["members"],
		Invitees:        content["invitees"],
		InvitationToken: content["invitationToken"],
	}

	return response, nil
}

func readAll(reader *bufio.Reader) (map[string]string, error) {
	content := make(map[string]string)
	var err error
	var key, val string
	for err == nil {
		key, val, err = readLine(reader)
		if err == nil {
			content[key] = val
		}
	}
	return content, nil
}

func readLine(reader *bufio.Reader) (key, val string, err error) {
	str, err := reader.ReadString(newLine)

	if err != nil && err != io.EOF {
		return key, val, err
	}
	str = strings.TrimSuffix(str, string(newLine))
	parts := strings.Split(str, ": ")
	if len(parts) < 2 {
		err = ErrInvalidMessageLine
		return key, val, err
	}
	key = parts[0]
	val = parts[1]
	return key, val, nil
}

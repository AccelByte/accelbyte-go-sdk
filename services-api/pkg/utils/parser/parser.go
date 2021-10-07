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
	model2 "github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/model"
	"io"
	"strconv"
	"strings"
	"time"

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

	// list of WS command keys
	channelSlugKey = "channelSlug"
	payloadKey     = "payload"
	typeKey        = "type"
	idKey          = "id"
	codeKey        = "code"
	fromKey        = "from"
	sentAtKey      = "sentAt"
)

// UnmarshalResponse converts response message to internal message format
func UnmarshalResponse(message []byte) (model2.Message, error) {
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
		return model2.TypeUnknown, err
	}
	msgType = strings.TrimSuffix(msgType, string(newLine))
	msgType = strings.TrimPrefix(msgType, keyType)

	if msgType == "" {
		return model2.TypeHeartbeat, nil
	}

	switch msgType {
	case model2.TypeConnected,
		model2.TypeDisconnected,
		model2.TypeError, model2.TypeShutdown,
		model2.TypeInfoResponse,
		model2.TypeCreateResponse,
		model2.TypeLeaveResponse,
		model2.TypeInviteResponse,
		model2.TypeJoinResponse,
		model2.TypeKickResponse,
		model2.TypeKickNotice,
		model2.TypeJoinNotif,
		model2.TypeInviteNotif,
		model2.TypeLeaveNotif,
		model2.TypePersonalChatResponse,
		model2.TypePersonalChatNotif,
		model2.TypePartyChatResponse,
		model2.TypePersonalChatHistoryResponse,
		model2.TypePartyChatNotif,
		model2.TypeNotificationMessage,
		model2.TypeGetOfflineNotificationRequest,
		model2.TypeFriendsPresenceResponse,
		model2.TypeSetUserStatusResponse,
		model2.TypeGetInvitatedNotif,
		model2.TypeUserStatusNotif,
		model2.TypeGetOfflineNotificationResponse,
		model2.TypeStartMatchmakingResponse,
		model2.TypeCancelMatchmakingResponse,
		model2.TypeMatchmakingNotif,
		model2.TypeSetReadyConsentResponse,
		model2.TypeSetReadyConsentNotif,
		model2.TypeRematchmakingNotif,
		model2.TypeRequestFriendsResponse,
		model2.TypeListIncomingFriendsResponse,
		model2.TypeListOutgoingFriendsResponse,
		model2.TypeAcceptFriendsResponse,
		model2.TypeRejectFriendsResponse,
		model2.TypeRejectFriendsNotif,
		model2.TypeCancelFriendsResponse,
		model2.TypeCancelFriendsNotif,
		model2.TypeUnfriendResponse,
		model2.TypeListOfFriendsResponse,
		model2.TypeGetFriendshipStatusResponse,
		model2.TypeRequestFriendsNotif,
		model2.TypeAcceptFriendsNotif,
		model2.TypeDSNotif,
		model2.TypePartyDataUpdateNotif,
		model2.TypeSystemComponentsStatus,
		model2.TypeJoinDefaultChannelResponse,
		model2.TypeSendChannelChatResponse,
		model2.TypeChannelChatNotif,
		model2.TypeRejectNotif,
		model2.TypeRejectResponse,
		model2.TypeBlockPlayerResponse,
		model2.TypeUnblockPlayerResponse,
		model2.TypeBlockPlayerNotif,
		model2.TypeUnblockPlayerNotif,
		model2.TypeSetSessionAttributeResponse,
		model2.TypeSignalingP2PNotif,
		model2.TypePromoteLeaderResponse,
		model2.TypeGeneratePartyCodeResponse,
		model2.TypeGetPartyCodeResponse,
		model2.TypeDeletePartyCodeResponse,
		model2.TypeJoinViaPartyCodeResponse,
		model2.TypeUnfriendNotif,
		model2.TypeUserBannedNotification,
		model2.TypeUserUnbannedNotification:
	default:
		return model2.TypeUnknown, ErrUnknownType
	}

	return msgType, nil
}

// nolint: gocyclo
func unmarshalResponseContent(messageType string, reader *bufio.Reader) (model2.Message, error) {
	switch messageType {
	case model2.TypeError:
		return unmarshalError(reader)
	case model2.TypeConnected:
		return unmarshalConnectedResponse(reader)
	case model2.TypeInfoResponse:
		return unmarshalInfoResponse(reader)
	case model2.TypeCreateResponse:
		return unmarshalCreateResponse(reader)
	case model2.TypeLeaveResponse:
		return unmarshalLeaveResponse(reader)
	case model2.TypeInviteResponse:
		return unmarshalInviteResponse(reader)
	case model2.TypeGetInvitatedNotif:
		return unmarshalInvitation(reader)
	case model2.TypeJoinResponse:
		return unmarshalJoinResponse(reader)
	case model2.TypeRejectResponse:
		return unmarshalRejectResponse(reader)
	case model2.TypeRejectNotif:
		return unmarshalRejectNotice(reader)
	case model2.TypeKickResponse:
		return unmarshalKickResponse(reader)
	case model2.TypeKickNotice:
		return unmarshalKickNotice(reader)
	case model2.TypeJoinNotif:
		return unmarshalJoinNotice(reader)
	case model2.TypeInviteNotif:
		return unmarshalInviteNotice(reader)
	case model2.TypeLeaveNotif:
		return unmarshalLeaveNotice(reader)
	case model2.TypePersonalChatNotif:
		return unmarshalReceived1to1Chat(reader)
	case model2.TypePersonalChatResponse:
		return unmarshalPersonalChatResponse(reader)
	case model2.TypePartyChatNotif:
		return unmarshalPartyChatNotif(reader)
	case model2.TypePartyChatResponse:
		return unmarshalPartyChatResponse(reader)
	case model2.TypePersonalChatHistoryResponse:
		return unmarshalPersonalChatHistoryResponse(reader)
	case model2.TypeNotificationMessage:
		return unmarshalNotificationMessage(reader)
	case model2.TypeGetOfflineNotificationResponse:
		return unmarshalNotificationResponse(reader)
	case model2.TypeSetUserStatusResponse:
		return unmarshalSetUserStatusResponse(reader)
	case model2.TypeFriendsPresenceResponse:
		return unmarshalFriendsPresenceResponse(reader)
	case model2.TypeUserStatusNotif:
		return unmarshalNotifyFriendsResponse(reader)
	case model2.TypeStartMatchmakingResponse:
		return unmarshalStartMatchmakingResponse(reader)
	case model2.TypeCancelMatchmakingResponse:
		return unmarshalCancelMatchmakingResponse(reader)
	case model2.TypeMatchmakingNotif:
		return unmarshalMatchmakingNotification(reader)
	case model2.TypeSetReadyConsentResponse:
		return unmarshalSetReadyConsentResponse(reader)
	case model2.TypeSetReadyConsentNotif:
		return unmarshalSetReadyConsentNotif(reader)
	case model2.TypeRematchmakingNotif:
		return unmarshalRematchmakingNotif(reader)
	case model2.TypeRequestFriendsResponse:
		return unmarshalRequestFriendsResponse(reader)
	case model2.TypeRequestFriendsNotif:
		return unmarshalRequestFriendsNotif(reader)
	case model2.TypeListIncomingFriendsResponse:
		return unmarshalListIncomingFriendsResponse(reader)
	case model2.TypeListOutgoingFriendsResponse:
		return unmarshalListOutgoingFriendsResponse(reader)
	case model2.TypeAcceptFriendsResponse:
		return unmarshalAcceptFriendsResponse(reader)
	case model2.TypeAcceptFriendsNotif:
		return unmarshalAcceptFriendsNotif(reader)
	case model2.TypeRejectFriendsResponse:
		return unmarshalRejectFriendsResponse(reader)
	case model2.TypeRejectFriendsNotif:
		return unmarshalRejectFriendsNotif(reader)
	case model2.TypeCancelFriendsResponse:
		return unmarshalCancelFriendsResponse(reader)
	case model2.TypeCancelFriendsNotif:
		return unmarshalCancelFriendsNotif(reader)
	case model2.TypeUnfriendResponse:
		return unmarshalUnfriendResponse(reader)
	case model2.TypeUnfriendNotif:
		return unmarshalUnfriendNotif(reader)
	case model2.TypeListOfFriendsResponse:
		return unmarshalListOfFriendsResponse(reader)
	case model2.TypeGetFriendshipStatusResponse:
		return unmarshalGetFriendshipStatusResponse(reader)
	case model2.TypeDSNotif:
		return unmarshalDSNotif(reader)
	case model2.TypeSystemComponentsStatus:
		return unmarshalSystemComponentsStatus(reader)
	case model2.TypePartyDataUpdateNotif:
		return unmarshalPartyDataUpdateNotif(reader)
	case model2.TypeJoinDefaultChannelResponse:
		return unmarshalJoinDefaultChannelResponse(reader)
	case model2.TypeChannelChatNotif:
		return unmarshalChannelChatNotif(reader)
	case model2.TypeBlockPlayerResponse:
		return unmarshalBlockPlayerResponse(reader)
	case model2.TypeBlockPlayerNotif:
		return unmarshalBlockPlayerNotif(reader)
	case model2.TypeUnblockPlayerResponse:
		return unmarshalUnblockPlayerResponse(reader)
	case model2.TypeUnblockPlayerNotif:
		return unmarshalUnblockPlayerNotif(reader)
	case model2.TypeSetSessionAttributeResponse:
		return unmarshalSetSessionAttributeResponse(reader)
	case model2.TypeGetSessionAttributeResponse:
		return unmarshalGetSessionAttributeResponse(reader)
	case model2.TypeGetAllSessionAttributeResponse:
		return unmarshalGetAllSessionAttributeResponse(reader)
	case model2.TypeSendChannelChatResponse:
		return unmarshalSendChannelChatResponse(reader)
	case model2.TypeSignalingP2PNotif:
		return unmarshalSignalingP2PResponse(reader)
	case model2.TypePromoteLeaderResponse:
		return unmarshalPromoteLeaderResponse(reader)
	case model2.TypeGeneratePartyCodeResponse:
		return unmarshalGeneratePartyCodeResponse(reader)
	case model2.TypeGetPartyCodeResponse:
		return unmarshalGetPartyCodeResponse(reader)
	case model2.TypeDeletePartyCodeResponse:
		return unmarshalDeletePartyCodeResponse(reader)
	case model2.TypeJoinViaPartyCodeResponse:
		return unmarshalJoinViaPartyCodeResponse(reader)
	case model2.TypeUserBannedNotification:
		return unmarshalUserBannedNotificationResponse(reader)
	case model2.TypeUserUnbannedNotification:
		return unmarshalUserUnbannedNotificationResponse(reader)
	case model2.TypeSendPartyNotifResponse:
		return unmarshalSendPartyNotifResponse(reader)
	case model2.TypePartyNotif:
		return unmarshalPartyNotif(reader)
	}

	logrus.Debug("type not handled : ", messageType)
	return nil, ErrUnexpectedType
}

func unmarshalError(reader *bufio.Reader) (*model2.ErrorMessage, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.ErrorMessage{
		BaseResponse: &model2.BaseResponse{Code: responseCode},
		Message:      content["message"],
	}
	return response, nil
}

func unmarshalConnectedResponse(reader *bufio.Reader) (*model2.Connected, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model2.Connected{
		LobbySessionID: content["lobbySessionID"],
	}
	return response, nil
}

func unmarshalInfoResponse(reader *bufio.Reader) (*model2.InfoResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.InfoResponse{
		BaseResponse:    &model2.BaseResponse{Code: responseCode},
		PartyID:         content["partyID"],
		LeaderID:        content["leaderID"],
		Members:         content["members"],
		Invitees:        content["invitees"],
		InvitationToken: content["invitationToken"],
	}
	return response, nil
}

func unmarshalCreateResponse(reader *bufio.Reader) (*model2.CreateResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.CreateResponse{
		BaseResponse:    &model2.BaseResponse{Code: responseCode},
		PartyID:         content["partyID"],
		LeaderID:        content["leaderID"],
		Members:         content["members"],
		Invitees:        content["invitees"],
		InvitationToken: content["invitationToken"],
		PartyCode:       content["partyCode"],
	}
	return response, nil
}

func unmarshalLeaveResponse(reader *bufio.Reader) (*model2.LeaveResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.LeaveResponse{
		BaseResponse: &model2.BaseResponse{Code: responseCode},
	}
	return response, nil
}

func unmarshalInviteResponse(reader *bufio.Reader) (*model2.InviteResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.InviteResponse{
		BaseResponse: &model2.BaseResponse{Code: responseCode},
	}
	return response, nil
}

func unmarshalInvitation(reader *bufio.Reader) (*model2.Invitation, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model2.Invitation{
		From:            content["from"],
		PartyID:         content["partyID"],
		InvitationToken: content["invitationToken"],
	}
	return response, nil
}

func unmarshalJoinResponse(reader *bufio.Reader) (*model2.JoinResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.JoinResponse{
		BaseResponse:    &model2.BaseResponse{Code: responseCode},
		PartyID:         content["partyID"],
		LeaderID:        content["leaderID"],
		Members:         content["members"],
		Invitees:        content["invitees"],
		InvitationToken: content["invitationToken"],
	}
	return response, nil
}

func unmarshalRejectResponse(reader *bufio.Reader) (*model2.RejectResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.RejectResponse{
		BaseResponse: &model2.BaseResponse{Code: responseCode},
		PartyID:      content["partyID"],
	}
	return response, nil
}

func unmarshalRejectNotice(reader *bufio.Reader) (*model2.RejectNotice, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model2.RejectNotice{
		PartyID:  content["partyID"],
		LeaderID: content["leaderID"],
		UserID:   content["userID"],
	}
	return response, nil
}

func unmarshalKickResponse(reader *bufio.Reader) (*model2.KickResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.KickResponse{
		BaseResponse: &model2.BaseResponse{Code: responseCode},
	}
	return response, nil
}

func unmarshalKickNotice(reader *bufio.Reader) (*model2.KickNotice, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model2.KickNotice{
		LeaderID: content["leaderID"],
		UserID:   content["userID"],
		PartyID:  content["partyID"],
	}
	return response, nil
}

func unmarshalJoinNotice(reader *bufio.Reader) (*model2.JoinNotice, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model2.JoinNotice{
		UserID: content["userID"],
	}
	return response, nil
}

func unmarshalInviteNotice(reader *bufio.Reader) (*model2.InviteNotice, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model2.InviteNotice{
		InviterID: content["inviterID"],
		InviteeID: content["inviteeID"],
	}
	return response, nil
}

func unmarshalLeaveNotice(reader *bufio.Reader) (*model2.LeaveNotice, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model2.LeaveNotice{
		UserID:   content["userID"],
		LeaderID: content["leaderID"],
	}
	return response, nil
}

func unmarshalReceived1to1Chat(reader *bufio.Reader) (notif *model2.PersonalChatNotif, err error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	parsedTime, err := time.Parse(time.RFC3339, content["receivedAt"])
	if err != nil {
		return nil, err
	}

	response := &model2.PersonalChatNotif{
		ChatMessage: &model2.ChatMessage{
			ID:         content["id"],
			From:       content["from"],
			To:         content["to"],
			Payload:    content["payload"],
			ReceivedAt: parsedTime.Unix(),
		},
	}
	return response, nil
}

func unmarshalPersonalChatResponse(reader *bufio.Reader) (response *model2.PersonalChatResponse, err error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response = &model2.PersonalChatResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalPartyChatNotif(reader *bufio.Reader) (notif *model2.PartyChatNotif, err error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	parsedTime, err := time.Parse(time.RFC3339, content["receivedAt"])
	if err != nil {
		return nil, err
	}

	response := &model2.PartyChatNotif{
		ChatMessage: &model2.ChatMessage{
			ID:         content["id"],
			From:       content["from"],
			To:         content["to"],
			Payload:    content["payload"],
			ReceivedAt: parsedTime.Unix(),
		},
	}
	return response, nil
}

func unmarshalPartyChatResponse(reader *bufio.Reader) (notif *model2.PartyChatResponse, err error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.PartyChatResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalPersonalChatHistoryResponse(reader *bufio.Reader) (notif *model2.PersonalChatHistoryResponse, err error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model2.PersonalChatHistoryResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		FriendID: content["friendId"],
		Chat:     content["chat"],
	}
	return response, nil
}

func unmarshalNotificationMessage(reader *bufio.Reader) (*model2.NotificationMessage, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	parsedTime, err := time.Parse(time.RFC3339, content["sentAt"])
	if err != nil {
		return nil, err
	}
	response := &model2.NotificationMessage{
		ID:      content["id"],
		From:    content["from"],
		To:      content["to"],
		Topic:   content["topic"],
		Payload: content["payload"],
		SentAt:  parsedTime.Unix(),
	}
	return response, nil
}

func unmarshalNotificationResponse(reader *bufio.Reader) (response *model2.GetOfflineNotificationResponse, err error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response = &model2.GetOfflineNotificationResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalFriendsPresenceResponse(reader *bufio.Reader) (*model2.ListFriendsPresenceResponse, error) {
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

	response := &model2.ListFriendsPresenceResponse{
		BaseResponse: &model2.BaseResponse{Code: responseCode, MessageID: content["id"]},
		UserID:       userIDs,
		Availability: userAvailability,
		Activity:     userActivity,
		LastSeenAt:   userLastSeenAt,
	}
	return response, nil
}

func unmarshalSetUserStatusResponse(reader *bufio.Reader) (*model2.SetUserStatusResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.SetUserStatusResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalNotifyFriendsResponse(reader *bufio.Reader) (*model2.FriendsPresenceNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	availability, err := strconv.Atoi(content["availability"])
	if err != nil {
		return nil, err
	}

	response := &model2.FriendsPresenceNotif{
		UserID:       content["userID"],
		Availability: availability,
		Activity:     content["activity"],
	}
	return response, nil
}

func unmarshalStartMatchmakingResponse(reader *bufio.Reader) (*model2.StartMatchmakingResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.StartMatchmakingResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		Message: content["message"],
	}
	return response, nil
}

func unmarshalCancelMatchmakingResponse(reader *bufio.Reader) (*model2.CancelMatchmakingResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.CancelMatchmakingResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalMatchmakingNotification(reader *bufio.Reader) (*model2.MatchmakingNotification, error) {
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

	d, _ := strconv.Atoi(content["duration"])

	response := &model2.MatchmakingNotification{
		MatchID:                  content["matchId"],
		Status:                   content["status"],
		PartyMemberUserID:        partyMember,
		CounterPartyMemberUserID: counterPartyMember,
		ReadyDuration:            d,
		Message:                  content["message"],
	}

	return response, nil
}

func unmarshalSetReadyConsentResponse(reader *bufio.Reader) (*model2.SetReadyConsentResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.SetReadyConsentResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalSetReadyConsentNotif(reader *bufio.Reader) (*model2.SetReadyConsentNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model2.SetReadyConsentNotif{
		MatchID: content["matchId"],
		UserID:  content["userId"],
	}
	return response, nil
}

func unmarshalRematchmakingNotif(reader *bufio.Reader) (*model2.RematchmakingNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	banDuration, err := strconv.Atoi(content["banDuration"])
	if err != nil {
		return nil, err
	}

	response := &model2.RematchmakingNotif{
		BanDuration: banDuration,
	}
	return response, nil
}

func unmarshalRequestFriendsResponse(reader *bufio.Reader) (*model2.RequestFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.RequestFriendsResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalRequestFriendsNotif(reader *bufio.Reader) (*model2.RequestFriendsNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	return &model2.RequestFriendsNotif{FriendID: content["friendId"]}, nil
}

func unmarshalListIncomingFriendsResponse(reader *bufio.Reader) (*model2.ListIncomingFriendsResponse, error) {
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

	response := &model2.ListIncomingFriendsResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		UserIDs: userIDs,
	}
	return response, nil
}

func unmarshalListOutgoingFriendsResponse(reader *bufio.Reader) (*model2.ListOutgoingFriendsResponse, error) {
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

	response := &model2.ListOutgoingFriendsResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		UserIDs: userIDs,
	}
	return response, nil
}

func unmarshalAcceptFriendsResponse(reader *bufio.Reader) (*model2.AcceptFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.AcceptFriendsResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalAcceptFriendsNotif(reader *bufio.Reader) (*model2.AcceptFriendsNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	return &model2.AcceptFriendsNotif{FriendID: content["friendId"]}, nil
}

func unmarshalRejectFriendsResponse(reader *bufio.Reader) (*model2.RejectFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.RejectFriendsResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalRejectFriendsNotif(reader *bufio.Reader) (*model2.RejectFriendsNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	response := &model2.RejectFriendsNotif{
		UserID: content["userId"],
	}

	return response, nil
}

func unmarshalCancelFriendsResponse(reader *bufio.Reader) (*model2.CancelFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.CancelFriendsResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalCancelFriendsNotif(reader *bufio.Reader) (*model2.CancelFriendsNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model2.CancelFriendsNotif{
		UserID: content["userId"],
	}
	return response, nil
}

func unmarshalUnfriendResponse(reader *bufio.Reader) (*model2.UnfriendResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.UnfriendResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}
	return response, nil
}

func unmarshalUnfriendNotif(reader *bufio.Reader) (*model2.UnfriendNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	return &model2.UnfriendNotif{FriendID: content["friendId"]}, nil
}

func unmarshalListOfFriendsResponse(reader *bufio.Reader) (*model2.ListOfFriendsResponse, error) {
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

	response := &model2.ListOfFriendsResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		UserIDs: userIDs,
	}
	return response, nil
}

func unmarshalGetFriendshipStatusResponse(reader *bufio.Reader) (*model2.GetFriendshipStatusResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.GetFriendshipStatusResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		FriendshipStatus: content["friendshipStatus"],
	}
	return response, nil
}

func unmarshalDSNotif(reader *bufio.Reader) (*model2.DSNotification, error) {
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

	response := &model2.DSNotification{
		Session: &model2.Session{
			Region: content["region"],
			ID:     content["matchId"],
			Server: &model2.Server{
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

func unmarshalSystemComponentsStatus(reader *bufio.Reader) (*model2.SystemComponentsStatus, error) {
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

	response := &model2.SystemComponentsStatus{
		Components: components,
	}

	return response, nil
}

func unmarshalPartyDataUpdateNotif(reader *bufio.Reader) (*model2.PartyDataUpdateNotification, error) {
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

	response := &model2.PartyDataUpdateNotification{
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

func unmarshalJoinDefaultChannelResponse(reader *bufio.Reader) (*model2.JoinDefaultChannelResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model2.JoinDefaultChannelResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		ChannelSlug: content["channelSlug"],
	}
	return response, nil
}

func unmarshalChannelChatNotif(reader *bufio.Reader) (*model2.ChannelChatNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	parsedTime, err := time.Parse(time.RFC3339, content["sentAt"])
	if err != nil {
		return nil, err
	}

	response := &model2.ChannelChatNotif{
		From:        content["from"],
		ChannelSlug: content["channelSlug"],
		Payload:     content["payload"],
		SentAt:      parsedTime,
	}
	return response, nil
}

func unmarshalBlockPlayerResponse(reader *bufio.Reader) (*model2.BlockPlayerResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model2.BlockPlayerResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		Namespace:     content["namespace"],
		BlockedUserID: content["blockedUserId"],
	}

	return response, nil
}

func unmarshalBlockPlayerNotif(reader *bufio.Reader) (*model2.PlayerBlockedNotification, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	response := &model2.PlayerBlockedNotification{
		UserID:        content["userId"],
		BlockedUserID: content["blockedUserId"],
	}

	return response, nil
}

func unmarshalUnblockPlayerResponse(reader *bufio.Reader) (*model2.UnblockPlayerResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model2.UnblockPlayerResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		Namespace:       content["namespace"],
		UnblockedUserID: content["unblockedUserId"],
	}

	return response, nil
}

func unmarshalUnblockPlayerNotif(reader *bufio.Reader) (*model2.PlayerUnblockedNotification, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	response := &model2.PlayerUnblockedNotification{
		UserID:          content["userId"],
		UnblockedUserID: content["unblockedUserId"],
	}

	return response, nil
}

func unmarshalSetSessionAttributeResponse(reader *bufio.Reader) (*model2.SetSessionAttributeResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model2.SetSessionAttributeResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalGetSessionAttributeResponse(reader *bufio.Reader) (*model2.GetSessionAttributeResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model2.GetSessionAttributeResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		Value: content["value"],
	}

	return response, nil
}

func unmarshalGetAllSessionAttributeResponse(reader *bufio.Reader) (*model2.GetAllSessionAttributeResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	attributes := make(map[string]string)
	err = json.Unmarshal([]byte(content["attributes"]), &attributes)
	if err != nil {
		return nil, err
	}

	response := &model2.GetAllSessionAttributeResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		Attributes: attributes,
	}

	return response, nil
}

func unmarshalSendChannelChatResponse(reader *bufio.Reader) (*model2.SendChannelChatResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model2.SendChannelChatResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalSignalingP2PResponse(reader *bufio.Reader) (*model2.SignalingP2P, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	response := &model2.SignalingP2P{
		BaseRequest: &model2.BaseRequest{
			MessageID: content["id"],
			UserID:    "",
		},
		DestinationID: content["destinationId"],
		Message:       content["message"],
	}

	return response, nil
}

func unmarshalPromoteLeaderResponse(reader *bufio.Reader) (*model2.PromoteLeaderResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model2.PromoteLeaderResponse{
		BaseResponse: &model2.BaseResponse{
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

func unmarshalGeneratePartyCodeResponse(reader *bufio.Reader) (*model2.GeneratePartyCodeResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model2.GeneratePartyCodeResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		PartyCode: content["partyCode"],
	}

	return response, nil
}

func unmarshalGetPartyCodeResponse(reader *bufio.Reader) (*model2.GetPartyCodeResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model2.GetPartyCodeResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		PartyCode: content["partyCode"],
	}

	return response, nil
}

func unmarshalDeletePartyCodeResponse(reader *bufio.Reader) (*model2.DeletePartyCodeResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model2.DeletePartyCodeResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalJoinViaPartyCodeResponse(reader *bufio.Reader) (*model2.JoinViaPartyCodeResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model2.JoinViaPartyCodeResponse{
		BaseResponse:    &model2.BaseResponse{Code: responseCode},
		PartyID:         content["partyID"],
		LeaderID:        content["leaderID"],
		Members:         content["members"],
		Invitees:        content["invitees"],
		InvitationToken: content["invitationToken"],
	}
	return response, nil
}

func unmarshalUserBannedNotificationResponse(reader *bufio.Reader) (*model2.UserBannedNotification, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	enable, err := strconv.ParseBool(content["enable"])
	if err != nil {
		return nil, err
	}

	response := &model2.UserBannedNotification{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		UserID:    content["userId"],
		Namespace: content["namespace"],
		Ban:       content["ban"],
		EndDate:   content["endDate"],
		Reason:    content["reason"],
		Enable:    enable,
	}

	return response, nil
}

func unmarshalUserUnbannedNotificationResponse(reader *bufio.Reader) (*model2.UserUnbannedNotification, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	enable, err := strconv.ParseBool(content["enable"])
	if err != nil {
		return nil, err
	}

	response := &model2.UserUnbannedNotification{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		UserID:    content["userId"],
		Namespace: content["namespace"],
		Ban:       content["ban"],
		EndDate:   content["endDate"],
		Reason:    content["reason"],
		Enable:    enable,
	}

	return response, nil
}

func unmarshalSendPartyNotifResponse(reader *bufio.Reader) (*model2.SendPartyNotifResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model2.SendPartyNotifResponse{
		BaseResponse: &model2.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalPartyNotif(reader *bufio.Reader) (*model2.PartyNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	response := &model2.PartyNotif{
		Sender:  content["sender"],
		Topic:   content["topic"],
		Payload: content["payload"],
	}

	return response, nil
}

func unmarshalJoinDefaultChannelRequest(base *model2.BaseRequest, reader *bufio.Reader) (*model2.JoinDefaultChannelRequest, error) {
	request := &model2.JoinDefaultChannelRequest{
		BaseRequest: base,
	}
	return request, nil
}

func unmarshalSendChannelChatRequest(base *model2.BaseRequest, reader *bufio.Reader) (*model2.SendChannelChatRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	request := &model2.SendChannelChatRequest{
		BaseRequest: base,
		ChannelSlug: content[channelSlugKey],
		Payload:     content[payloadKey],
	}
	return request, nil
}

func marshalJoinDefaultChannelResponse(response *model2.JoinDefaultChannelResponse) []byte {
	return []byte(fmt.Sprintf(
		"%s: %s\n"+
			"%s: %s\n"+
			"%s: %s\n"+
			"%s: %d",
		typeKey, response.Type(),
		idKey, response.MessageID,
		channelSlugKey, response.ChannelSlug,
		codeKey, response.Code))
}

func marshalSendChannelChatResponse(response *model2.SendChannelChatResponse) []byte {
	return []byte(fmt.Sprintf(
		"%s: %s\n"+
			"%s: %s\n"+
			"%s: %d",
		typeKey, response.Type(),
		idKey, response.MessageID,
		codeKey, response.Code,
	))
}

func marshalChannelChatNotif(notif *model2.ChannelChatNotif) []byte {
	return []byte(fmt.Sprintf(
		"%s: %s\n"+
			"%s: %s\n"+
			"%s: %s\n"+
			"%s: %s\n"+
			"%s: %s",
		typeKey, notif.Type(),
		fromKey, notif.From,
		channelSlugKey, notif.ChannelSlug,
		payloadKey, notif.Payload,
		sentAtKey, notif.SentAt.Format(time.RFC3339),
	))
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
	parts := strings.SplitN(str, ": ", 2)
	if len(parts) < 2 {
		err = ErrInvalidMessageLine
		return key, val, err
	}
	key = parts[0]
	val = parts[1]
	return key, val, nil
}

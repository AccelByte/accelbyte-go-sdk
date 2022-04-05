// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"fmt"

	"github.com/gorilla/websocket"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/model"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"
)

type PartyServiceWebsocket struct {
	ConfigRepository  repository.ConfigRepository
	TokenRepository   repository.TokenRepository
	ConnectionManager connectionutils.ConnectionManager
}

func (s *PartyServiceWebsocket) CreateParty() error {
	logrus.Info("CreateParty")
	text := fmt.Sprintf("type: %s\n%s", model.TypeCreateRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) GetPartyInfo() error {
	logrus.Info("GetPartyInfo")
	text := fmt.Sprintf("type: %s\n%s", model.TypeInfoRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) LeaveParty() error {
	logrus.Info("LeaveParty")
	text := fmt.Sprintf("type: %s\n%s", model.TypeLeaveRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) InviteParty(friendID string) error {
	logrus.Info("InviteParty")
	text := fmt.Sprintf("type: %s\n%s\nfriendID: %s", model.TypeInviteRequest, utils.GenerateMessageID(), friendID)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) JoinParty(partyID, token string) error {
	logrus.Info("JoinParty")
	text := fmt.Sprintf("type: %s\n%s\npartyID: %s\ninvitationToken: %s", model.TypeJoinRequest, utils.GenerateMessageID(), partyID, token)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) RejectPartyInvitation(partyID, token string) error {
	logrus.Info("RejectPartyInvitation")
	text := fmt.Sprintf("type: %s\n%s\npartyID: %s\ninvitationToken: %s", model.TypeRejectRequest, utils.GenerateMessageID(), partyID, token)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) KickPartyMember(id string) error {
	logrus.Info("KickPartyMember")
	text := fmt.Sprintf("type: %s\n%s\nmemberID: %s", model.TypeKickRequest, utils.GenerateMessageID(), id)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) PromotePartyLeader(leaderUserID string) error {
	logrus.Info("PromotePartyLeader")
	text := fmt.Sprintf("type: %s\n%s\nnewLeaderUserId: %s", model.TypePromoteLeaderRequest, utils.GenerateMessageID(), leaderUserID)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}
func (s *PartyServiceWebsocket) GetPartyCode() error {
	logrus.Info("GetPartyCode")
	text := fmt.Sprintf("type: %s\n%s", model.TypeGetPartyCodeRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) GeneratePartyCode() error {
	logrus.Info("GeneratePartyCode")
	text := fmt.Sprintf("type: %s\n%s", model.TypeGeneratePartyCodeRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) DeletePartyCode() error {
	logrus.Info("DeletePartyCode")
	text := fmt.Sprintf("type: %s\n%s", model.TypeDeletePartyCodeRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) JoinViaPartyCode(partyCode string) error {
	logrus.Info("JoinViaPartyCode")
	text := fmt.Sprintf("type: %s\n%s\npartyCode: %s", model.TypeJoinViaPartyCodeRequest, utils.GenerateMessageID(), partyCode)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) SetSessionAttribute(key, value string) error {
	logrus.Info("SetSessionAttribute")
	text := fmt.Sprintf("type: %s\n%s\nkey: %s\nvalue: %s", model.TypeSetSessionAttributeRequest, utils.GenerateMessageID(), key, value)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) GetSessionAttribute(key string) error {
	logrus.Info("GetSessionAttribute")
	text := fmt.Sprintf("type: %s\n%s\nkey: %s", model.TypeGetSessionAttributeRequest, utils.GenerateMessageID(), key)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) GetAllSessionAttribute() error {
	logrus.Info("GetAllSessionAttribute")
	text := fmt.Sprintf("type: %s\n%s", model.TypeGetAllSessionAttributeRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) UserMetric() error {
	logrus.Info("UserMetric")
	text := fmt.Sprintf("type: %s\n%s", model.TypeUserMetricRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) SendPartyNotif(topic, payload string) error {
	logrus.Info("SendPartyNotif")
	text := fmt.Sprintf("type: %s\n%s\ntopic: %s\npayload: %s", model.TypeSendPartyNotifRequest, utils.GenerateMessageID(), topic, payload)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

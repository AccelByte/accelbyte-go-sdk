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

type PartyService struct {
	ConfigRepository  repository.ConfigRepository
	TokenRepository   repository.TokenRepository
	ConnectionManager connectionutils.ConnectionManager
}

func (s *PartyService) CreateParty() error {
	logrus.Info("CreateParty")
	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s", model.TypeCreateRequest, messageID)

	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (s *PartyService) GetPartyInfo() error {
	logrus.Info("GetPartyInfo")
	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s", model.TypeInfoRequest, messageID)

	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (s *PartyService) LeaveParty() error {
	logrus.Info("LeaveParty")
	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s", model.TypeLeaveRequest, messageID)

	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (s *PartyService) InviteParty(friendId string) error {
	logrus.Info("InviteParty")
	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s\nfriendID: %s", model.TypeInviteRequest, messageID, friendId)

	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (s *PartyService) JoinParty(partyID, token string) error {
	logrus.Info("JoinParty")
	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s\npartyID: %s\ninvitationToken: %s", model.TypeJoinRequest, messageID, partyID, token)

	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (s *PartyService) RejectPartyInvitation(partyID, token string) error {

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s\npartyID: %s\ninvitationToken: %s", model.TypeRejectRequest, messageID, partyID, token)

	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (s *PartyService) KickPartyMember(id string) error {

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s\nmemberID: %s", model.TypeKickRequest, messageID, id)

	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (s *PartyService) PromotePartyLeader(leaderUserId string) error {

	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s\nnewLeaderUserId: %s", model.TypePromoteLeaderRequest, messageID, leaderUserId)

	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

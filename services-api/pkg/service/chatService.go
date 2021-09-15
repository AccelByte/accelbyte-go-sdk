package service

import (
	"fmt"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/model"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"
	"github.com/gorilla/websocket"
)

type ChatService struct {
	ConfigRepository  repository.ConfigRepository
	TokenRepository   repository.TokenRepository
	ConnectionManager connectionutils.ConnectionManager
}

func (s *ChatService) JoinDefaultChannel() error {
	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s", model.TypeJoinDefaultChannelRequest, messageID)

	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (s *ChatService) SendChannelChat(channelSlug, payload string) error {
	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n"+
		"%s\n"+
		"channelSlug: %s\n"+
		"payload: %s",
		model.TypeSendChannelChatRequest,
		messageID,
		channelSlug,
		payload)

	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (s *ChatService) SendPersonalChat(friendID, content string) error {
	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\nid: %s\nto: %s\npayload: %s", model.TypePersonalChatRequest, messageID, friendID, content)

	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (s *ChatService) SendPartyChat(content string) error {
	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\nid: %s\npayload: %s", model.TypePartyChatRequest, messageID, content)

	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

func (s *ChatService) GetPersonalChatHistory(friendID string) error {
	messageID := utils.GenerateMessageID()
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypePersonalChatHistoryRequest, messageID, friendID)

	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {

		return err
	}
	return nil
}

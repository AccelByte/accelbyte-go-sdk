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

type MatchmakingServiceWebsocket struct {
	ConfigRepository  repository.ConfigRepository
	TokenRepository   repository.TokenRepository
	ConnectionManager connectionutils.ConnectionManager
}

func (matchmakingService *MatchmakingServiceWebsocket) StartMatchmaking(gameMode, dsName, clientVersion,
	latencies, partyAttribute, tempParty, extraAttributes string) error {
	logrus.Debug("StartMatchmaking")
	text := fmt.Sprintf(
		"type: startMatchmakingRequest\n"+
			"%s\n"+
			"gameMode: %s\n"+
			"serverName: %s\n"+
			"clientVersion: %s\n"+
			"latencies: %s\n"+
			"partyAttributes: %s\n"+
			"tempParty: %s\n"+
			"extraAttributes: %s",
		utils.GenerateMessageID(),
		gameMode,
		dsName,
		clientVersion,
		latencies,
		partyAttribute,
		tempParty,
		extraAttributes)
	err := matchmakingService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (matchmakingService *MatchmakingServiceWebsocket) SetReadyConsent(matchID string) error {
	logrus.Debug("SetReadyConsent")
	text := fmt.Sprintf("type: %s\n%s\nmatchId: %s", model.TypeSetReadyConsentRequest, utils.GenerateMessageID(), matchID)
	err := matchmakingService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (matchmakingService *MatchmakingServiceWebsocket) CancelMatchmaking(gameMode string) error {
	logrus.Debug("CancelMatchmaking")
	text := fmt.Sprintf("type: cancelMatchmakingRequest\n%s\ngameMode: %s", utils.GenerateMessageID(), gameMode)
	err := matchmakingService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

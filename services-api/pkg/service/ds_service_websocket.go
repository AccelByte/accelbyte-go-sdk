// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"fmt"

	"github.com/gorilla/websocket"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"
)

type DSServiceWebsocket struct {
	ConfigRepository  repository.ConfigRepository
	TokenRepository   repository.TokenRepository
	ConnectionManager connectionutils.ConnectionManager
}

func (dsService *DSServiceWebsocket) CreateDS(matchID, gameMode, dsName, clientVersion, region, deployment string) error {
	logrus.Debug("CreateDS")
	text := fmt.Sprintf(
		"type: createDSRequest\n"+
			"%s\n"+
			"matchId: %s\n"+
			"gameMode: %s\n"+
			"serverName: %s\n"+
			"clientVersion: %s\n"+
			"region: %s\n"+
			"deployment: %s\n",
		utils.GenerateMessageID(),
		matchID,
		gameMode,
		dsName,
		clientVersion,
		region,
		deployment)
	err := dsService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

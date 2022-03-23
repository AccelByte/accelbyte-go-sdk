// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"bufio"
	"strings"
	"testing"

	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/model"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"
)

var (
	connMgr             *integration.ConnectionManagerImpl
	msgType             string
	notificationService = &service.NotificationServiceWebsocket{
		ConfigRepository:  oAuth20Service.ConfigRepository,
		TokenRepository:   oAuth20Service.TokenRepository,
		ConnectionManager: connMgr,
	}
	lobbyMessageHandler = func(dataByte []byte) {

		msg := decodeWSMessage(string(dataByte))

		if v, ok := msg["type"]; ok {
			msgType = v
		}
		switch msgType {
		case model.TypeNotificationMessage:
		}
	}
)

func decodeWSMessage(msg string) map[string]string {
	scanner := bufio.NewScanner(strings.NewReader(msg))
	res := make(map[string]string)

	for scanner.Scan() {
		str := scanner.Text()
		keyValue := strings.Split(str, ": ")
		if len(keyValue) == 2 {
			res[keyValue[0]] = keyValue[1]
		}
	}

	if err := scanner.Err(); err != nil {
		logrus.Errorf("error reading websocket message: %v", err)
	}

	return res
}

func TestIntegrationNotification(t *testing.T) {
	t.Parallel()
	Init()
	connMgr = &integration.ConnectionManagerImpl{}
	connection, err := connectionutils.NewWebsocketConnection(oAuth20Service.ConfigRepository, oAuth20Service.TokenRepository, lobbyMessageHandler)
	assert.Nil(t, err, "err should be nil")

	connMgr.Save(connection)

	err = notificationService.GetNotificationMessage()
	assert.Nil(t, err, "err should be nil")

	err = notificationService.GetOfflineNotification()
	assert.Nil(t, err, "err should be nil")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package connectionutils

import (
	"errors"
	"strings"
	"sync"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/gorilla/websocket"
	"github.com/sirupsen/logrus"
)

type WSConnection struct {
	Base *BaseWebSocketClient
	Conn *websocket.Conn
	mu   sync.RWMutex
}

const (
	separator = "://"
)

func NewWebsocketConnection(configRepo repository.ConfigRepository, tokenRepo repository.TokenRepository, messageHandler func(message []byte)) (*WSConnection, error) {
	baseURL := configRepo.GetJusticeBaseUrl()
	baseURLSplit := strings.Split(baseURL, "://")
	if len(baseURLSplit) == 2 {
		conn := NewDefaultBaseWebSocketClient(configRepo, tokenRepo)

		connected := conn.Connect(false)
		if !connected {
			logrus.Errorf("unable to connect into lobby")

			return nil, errors.New("unable to connect into lobby")
		}
		wsConnection := &WSConnection{
			Base: conn,
			Conn: conn.conn.Conn,
			mu:   sync.RWMutex{},
		}

		done := make(chan struct{})
		go conn.ReadWSMessage(done, messageHandler)
		go conn.WSHeartbeat(done)

		return wsConnection, nil
	}

	return nil, errors.New("invalid base URL")
}

func NewWebsocketConnectionWithReconnect(configRepo repository.ConfigRepository, tokenRepo repository.TokenRepository, reconnecting bool) (*WSConnection, error) {
	baseURL := configRepo.GetJusticeBaseUrl()
	baseURLSplit := strings.Split(baseURL, separator)
	if len(baseURLSplit) == 2 {
		c := NewDefaultBaseWebSocketClient(configRepo, tokenRepo)

		connected := c.Connect(reconnecting)
		if !connected {
			logrus.Errorf("unable to connect into lobby")

			return nil, errors.New("unable to connect into lobby")
		}

		wsConnection := &WSConnection{
			Base: c,
			Conn: c.conn.Conn,
			mu:   sync.RWMutex{},
		}

		done := make(chan struct{})
		go c.ReadWSMessage(done, nil)
		go c.WSHeartbeat(done)

		return wsConnection, nil
	}

	return nil, errors.New("invalid base URL")
}

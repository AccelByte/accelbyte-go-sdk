// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package connectionutils

import (
	"errors"
	"io"
	"net/http"
	"strings"
	"sync"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"

	"github.com/gorilla/websocket"
	"github.com/sirupsen/logrus"
)

type ConnectionManager interface {
	Save(wsConnection *WSConnection)
	Get() *WSConnection
	Close() error
}

type ConnectionStatus int

const (
	separator = "://"
)

const (
	Disconnected ConnectionStatus = iota
	Connecting
	Connected
	Reconnecting
	Closed
)

type WSConnection struct {
	Conn     *websocket.Conn
	Mu       sync.RWMutex
	MuStatus sync.RWMutex

	Header http.Header
	Data   map[string]interface{}

	EnableAutoReconnect  bool
	MaxReconnectAttempts int
	MessageHandler       WSConnectionMessageHandler

	status ConnectionStatus
}

type WSConnectionOption func(wsConn *WSConnection) error

func WithMessageHandler(handler WSConnectionMessageHandler) WSConnectionOption {
	return func(wsConn *WSConnection) error {
		wsConn.MessageHandler = handler

		return nil
	}
}

func WithEnableAutoReconnect() WSConnectionOption {
	return func(wsConn *WSConnection) error {
		wsConn.EnableAutoReconnect = true

		return nil
	}
}

func WithMaxReconnectAttempts(maxReconnectAttempts int) WSConnectionOption {
	return func(wsConn *WSConnection) error {
		wsConn.MaxReconnectAttempts = maxReconnectAttempts

		return nil
	}
}

type WSConnectionMessageHandler func(msg []byte)

func NewWSConnection(
	configRepo repository.ConfigRepository,
	tokenRepo repository.TokenRepository,
	options ...WSConnectionOption,
) (*WSConnection, error) {
	baseURL := configRepo.GetJusticeBaseUrl()
	baseURLSplit := strings.Split(baseURL, separator)

	token, err := tokenRepo.GetToken()
	if err != nil {
		logrus.Errorf("Unable to connect get token: %v", err)
	}

	wsConn := &WSConnection{
		Conn: &websocket.Conn{},
		Data: map[string]interface{}{
			"token": *token.AccessToken,
			"host":  baseURLSplit[1],
		},
		MaxReconnectAttempts: 10,
	}

	for _, opt := range options {
		err = opt(wsConn)
		if err != nil {
			return nil, err
		}
	}

	return wsConn, nil
}

// NewWebsocketConnection
// Deprecated: use NewWSConnection instead
func NewWebsocketConnection(
	configRepo repository.ConfigRepository,
	tokenRepo repository.TokenRepository,
	messageHandler func(msg []byte),
) (*WSConnection, error) {
	return NewWSConnection(configRepo, tokenRepo, WithMessageHandler(messageHandler))
}

func (c *WSConnection) Dial(url string, headers http.Header) (*websocket.Conn, error) {
	c.Mu.Lock()
	defer c.Mu.Unlock()

	conn, res, err := websocket.DefaultDialer.Dial(url, headers)
	if errors.Is(err, websocket.ErrBadHandshake) {
		if _, e := io.ReadAll(res.Body); e == nil {
			return nil, err
		}
	}
	if err != nil {
		return nil, err
	}
	defer res.Body.Close()

	return conn, nil
}

func (c *WSConnection) Close(code int, reason string) error {
	err := c.Conn.WriteControl(websocket.CloseMessage, websocket.FormatCloseMessage(code, reason), time.Now().Add(time.Second))
	if err != nil {
		logrus.Error("Error writing control message: ", err)
	}

	if err = c.Conn.Close(); err != nil {
		logrus.Error("Failed to close connection: ", err)
	}

	c.SetStatus(Disconnected)

	return nil
}

func (c *WSConnection) SetStatus(status ConnectionStatus) {
	c.MuStatus.Lock()
	defer c.MuStatus.Unlock()

	c.status = status
}

func (c *WSConnection) GetStatus() ConnectionStatus {
	c.MuStatus.Lock()
	defer c.MuStatus.Unlock()

	return c.status
}

func (c *WSConnection) DefaultCloseHandler(code int, reason string) error {
	c.SetStatus(Disconnected)

	return c.Close(code, reason)
}

func (c *WSConnection) DefaultPongHandler(text string) error {
	err := c.Conn.SetReadDeadline(time.Now().Add(6 * time.Second))
	if err != nil {
		logrus.Warn(err.Error())
	}

	return nil
}

func (c *WSConnection) GetData(key string) interface{} {
	if value, exists := c.Data[key]; exists {
		return value
	}

	return nil
}

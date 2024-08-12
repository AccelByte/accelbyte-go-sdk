// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package connectionutils

import (
	"bufio"
	"errors"
	"io/ioutil"
	"math"
	"net/http"
	"strings"
	"sync"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"

	"github.com/gorilla/websocket"
	"github.com/sirupsen/logrus"
)

const (
	interval    = 1.0
	backoffRate = 2.0
)

// BaseWebSocketClient is the extended implementation of ConnectionManagerImpl
type BaseWebSocketClient struct {
	conn   *WSConnection
	data   map[string]interface{}
	header http.Header
}

func NewDefaultBaseWebSocketClient(configRepo repository.ConfigRepository, tokenRepo repository.TokenRepository) *BaseWebSocketClient {
	token, err := tokenRepo.GetToken()
	if err != nil {
		logrus.Errorf("Unable to connect get token: %v", err)
	}

	baseURL := configRepo.GetJusticeBaseUrl()
	baseURLSplit := strings.Split(baseURL, separator)

	return &BaseWebSocketClient{data: map[string]interface{}{
		"token": *token.AccessToken,
		"host":  baseURLSplit[1],
	}, conn: &WSConnection{
		Conn: &websocket.Conn{},
		mu:   sync.RWMutex{},
	}}
}

func (c *BaseWebSocketClient) Save(conn *WSConnection) {
	c.conn = conn
}

func (c *BaseWebSocketClient) Get() *WSConnection {
	return c.conn
}

func (c *BaseWebSocketClient) Close() error {
	if c.conn.Conn == nil {
		logrus.Errorf("no websocket connection can be closed")

		return errors.New("no websocket connection can be closed")
	}

	return c.conn.Conn.Close()
}

// Connect is new initiation of connecting to a websocket
// value True for using the existing (previous) connection and False for a new one
func (c *BaseWebSocketClient) Connect(reconnecting bool) bool {
	c.conn.mu.Lock()
	defer c.conn.mu.Unlock()

	if reconnecting {
		logrus.Println("Attempting to reconnect...")

		for attempt := int32(1); ; attempt++ {
			if _, exists := c.data["LobbySessionID"]; exists {
				lobbySessionID := c.GetData("LobbySessionID")
				c.header.Set("X-Ab-LobbySessionID", lobbySessionID.(string))

				if success := c.connectInternal(); success {
					logrus.Println("Successfully reconnected to the WebSocket server.")
					c.OnConnect(reconnecting)

					return true
				}
			} else {
				logrus.Println("Reconnecting but LobbySessionID is not found")

				if success := c.connectInternal(); success {
					logrus.Println("Connecting for the first time...")
					c.OnConnect(false)

					return true
				}

				return false
			}

			if !c.ShouldReconnect(websocket.CloseGoingAway, "Temporary network issue") {
				logrus.Println("Decided not to reconnect.")

				return false
			}

			// Calculate delay before the next reconnection attempt
			delay := c.ReconnectDelay(attempt)
			logrus.Printf("Reconnection attempt #%d failed. Retrying in %.2f seconds...\n", attempt, delay)
			time.Sleep(time.Duration(delay) * time.Second)
		}
	} else {
		if success := c.connectInternal(); success {
			logrus.Println("Connecting to lobby for the first time...")
			c.OnConnect(false)

			return true
		}

		return false
	}
}

func (c *BaseWebSocketClient) connectInternal() bool {
	authHeader := "Bearer " + c.data["token"].(string)
	host := c.data["host"].(string)

	lobbyURL := c.createURL(host)
	logrus.Infof("Connecting user to %s", lobbyURL)
	req, err := http.NewRequest(http.MethodGet, lobbyURL, nil)
	if err != nil {
		logrus.Error(err)

		return false
	}
	req.Header.Set("Authorization", authHeader)

	connection, res, err := websocket.DefaultDialer.Dial(req.URL.String(), req.Header)
	if errors.Is(err, websocket.ErrBadHandshake) {
		b, e := ioutil.ReadAll(res.Body)
		if e == nil {
			logrus.Error("bad handshake", res.Status, string(b))

			return false
		}
	}

	if err != nil {
		logrus.Error(err)

		return false
	}
	defer res.Body.Close()

	connection.SetCloseHandler(func(code int, text string) error {
		logrus.Infof("handling close message, code: %d, message: %s\n", code, text)
		err := connection.WriteControl(websocket.CloseMessage, websocket.FormatCloseMessage(code, text), time.Now().Add(time.Second))
		if err != nil {
			logrus.Error("error writing control message: ", err)
		}

		return nil
	})
	connection.SetPongHandler(func(text string) error {
		err := connection.SetReadDeadline(time.Now().Add(6 * time.Second))
		if err != nil {
			logrus.Error("error setting read deadline: ", err)
		}

		return nil
	})

	c.conn.Conn = connection

	return true
}

func (c *BaseWebSocketClient) OnConnect(reconnecting bool) {
	if reconnecting {
		logrus.Println("Reconnected to the WebSocket server.")
	} else {
		logrus.Println("Connected to the WebSocket server.")
	}
}

func (c *BaseWebSocketClient) Send(message string) {
	err := c.conn.Conn.WriteMessage(websocket.TextMessage, []byte(message))
	if err != nil {
		logrus.Error("failed to send websocket message")

		return
	}
}

func (c *BaseWebSocketClient) Disconnect(code int32, reason string) {
	c.conn.mu.Lock()
	defer c.conn.mu.Unlock()

	if c.conn.Conn == nil {
		logrus.Errorf("not connected")
	}

	logrus.Infof("Connection is closed. Code: %v, Reason: %s", code, reason)

	message := websocket.FormatCloseMessage(int(code), reason)
	err := c.conn.Conn.WriteMessage(websocket.CloseMessage, message)
	if err != nil {
		logrus.Errorf("failed to send close message: %v", err)
	}

	err = c.conn.Conn.Close()
	if err != nil {
		logrus.Errorf("failed to close connection: %v", err)
	}

	c.conn.Base = nil
	c.OnDisconnect(code, reason)
}

func (c *BaseWebSocketClient) OnDisconnect(code int32, reason string) {
	logrus.Printf("Disconnected from WebSocket server with code %d and reason: %s\n", code, reason)

	// Clean up data or state related to the connection
	c.ClearData()
}

func (c *BaseWebSocketClient) OnMessage(msg string) {
	message := decodeWSMessage(msg)

	if messageType, ok := message["type"]; ok {
		logrus.Infof("Message type: %v", messageType)
	}

	if lobbySessionID, ok := message["lobbySessionID"]; ok {
		logrus.Infof("Storing LobbySessionID: %v", lobbySessionID)
		c.SetData("LobbySessionID", lobbySessionID)
	}
}

func (c *BaseWebSocketClient) ShouldReconnect(code int32, reason string) bool {
	// Undefined
	if code < 0 {
		return false
	}

	// 0-999
	if code >= 0 && code <= 999 {
		return false
	}

	// 1000 indicates a normal closure
	if code == 1000 {
		return false
	}

	// 3000-3999
	if code >= 3000 && code <= 3999 {
		return false
	}

	// 4000-4999
	if code >= 4000 && code <= 4999 {
		return false
	}

	// Undefined
	if code >= 5000 {
		return false
	}

	// Return true for all other codes
	return code >= 1001 && code <= 2999
}

func (c *BaseWebSocketClient) ReconnectDelay(numberOfAttempts int32) float32 {
	return float32(interval * math.Pow(backoffRate, float64(numberOfAttempts)))
}

func (c *BaseWebSocketClient) GetData(key string) interface{} {
	c.conn.mu.Lock()
	defer c.conn.mu.Unlock()

	return c.data[key]
}

func (c *BaseWebSocketClient) HasData(key string) bool {
	c.conn.mu.Lock()
	defer c.conn.mu.Unlock()

	_, exists := c.data[key]

	return exists
}

func (c *BaseWebSocketClient) SetData(key string, value interface{}) {
	c.conn.mu.Lock()
	defer c.conn.mu.Unlock()

	c.data[key] = value
}

func (c *BaseWebSocketClient) ClearData() {
	c.conn.mu.Lock()
	defer c.conn.mu.Unlock()

	c.data = make(map[string]interface{})
}

func (c *BaseWebSocketClient) ReadWSMessage(done chan struct{}, messageHandler func(message []byte)) {
	for {
		_, msg, subErr := c.conn.Conn.ReadMessage()
		if subErr != nil {
			logrus.Info("read message failed: ", subErr)
			close(done)

			return
		}
		if len(msg) > 0 {
			if messageHandler != nil {
				// If a custom message handler is provided, use it
				messageHandler(msg)
			} else {
				// Otherwise, use the default OnMessage method
				c.OnMessage(string(msg))
			}
		}
	}
}

func (c *BaseWebSocketClient) WSHeartbeat(done chan struct{}) {
	ticker := time.NewTicker(4 * time.Second)
	defer ticker.Stop()

	for {
		select {
		case <-ticker.C:
			err := c.conn.Conn.WriteMessage(websocket.PingMessage, []byte{})
			if err != nil {
				logrus.Errorf("cannot write heartbeat: %v", err)
			}
		case <-done:
			logrus.Info("done signal received, stop heartbeat.")

			return
		}
	}
}

func (c *BaseWebSocketClient) createURL(host string) string {
	if strings.Contains(host, "8080") {
		return "ws" + separator + host + "/lobby/"
	}

	return "wss" + separator + host + "/lobby/"
}

func decodeWSMessage(msg string) map[string]interface{} {
	scanner := bufio.NewScanner(strings.NewReader(msg))
	res := make(map[string]interface{})

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

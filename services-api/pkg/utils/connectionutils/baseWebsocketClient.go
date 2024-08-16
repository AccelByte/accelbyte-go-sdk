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
	separator   = "://"
)

// BaseWebSocketClient is the extended implementation of ConnectionManagerImpl
type BaseWebSocketClient struct {
	conn   *WSConnection
	data   map[string]interface{}
	header http.Header

	mu sync.RWMutex
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
// Connect initiates a connection to the WebSocket server.
// If reconnecting is true, it attempts to reconnect using existing session data.
func (c *BaseWebSocketClient) Connect(reconnecting bool) bool {
	c.mu = sync.RWMutex{}

	c.mu.Lock()
	defer c.mu.Unlock()

	if reconnecting {
		logrus.Println("Attempting to reconnect...")

		for attempt := int32(1); ; attempt++ {
			if lobbySessionID, exists := c.data["LobbySessionID"]; exists {
				c.header = http.Header{}
				c.header.Set("X-Ab-LobbySessionID", lobbySessionID.(string))

				if success := c.connectToWebSocket(); success {
					logrus.Println("Successfully reconnected to the WebSocket server.")
					c.OnConnect(true)

					return true
				}
			} else {
				logrus.Println("Reconnecting but LobbySessionID is not found")

				if success := c.connectToWebSocket(); success {
					logrus.Println("Connecting for the first time...")
					c.connectToWebSocket()
					logrus.Infof("success to connect")

					return true
				}

				return false
			}

			// Calculate delay before the next reconnection attempt
			delay := c.ReconnectDelay(attempt)
			logrus.Printf("Reconnection attempt #%d failed. Retrying in %.2f seconds...\n", attempt, delay)
			time.Sleep(time.Duration(delay) * time.Second)
		}
	} else {
		logrus.Infof("Non-reconnecting connection attempt")
		if success := c.connectToWebSocket(); success {
			c.OnConnect(false)

			return true
		}

		return false
	}
}

// connectToWebSocket performs the actual connection to the WebSocket server.
func (c *BaseWebSocketClient) connectToWebSocket() bool {
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
		if b, e := ioutil.ReadAll(res.Body); e == nil {
			logrus.Error("bad handshake", res.Status, string(b))

			return false
		}
	}
	if err != nil {
		logrus.Error(err)

		return false
	}
	defer res.Body.Close()

	// Set up connection handlers
	c.setupConnectionHandlers(connection)

	// Save the new connection
	c.conn.Conn = connection

	return true
}

// setupConnectionHandlers configures the close and pong handlers for the WebSocket connection.
func (c *BaseWebSocketClient) setupConnectionHandlers(connection *websocket.Conn) {
	connection.SetCloseHandler(func(code int, text string) error {
		logrus.Infof("Handling close message, code: %d, message: %s\n", code, text)
		logrus.Info("checking whether should reconnect")

		if !c.ShouldReconnect(int32(code), text) {
			logrus.Infof("should not reconnect. ")
			c.Disconnect(int32(code), text)
		}
		logrus.Infof("reconnecting code %v", code)

		go func() {
			time.Sleep(time.Duration(c.ReconnectDelay(1)) * time.Second) // Wait before reconnecting
			if !c.Connect(true) {
				logrus.Error("failed to reconnect")

				c.OnDisconnect(int32(code), text)

				logrus.Infof("disconnecting with close message")
				err := connection.WriteControl(websocket.CloseMessage, websocket.FormatCloseMessage(code, text), time.Now().Add(2*time.Second))
				if err != nil {
					logrus.Error("Error writing control message: ", err)
				}
			}
		}()

		return nil
	})

	connection.SetPongHandler(func(text string) error {
		err := connection.SetReadDeadline(time.Now().Add(6 * time.Second))
		if err != nil {
			logrus.Error("Error setting read deadline: ", err)
		}

		return nil
	})
}

func (c *BaseWebSocketClient) OnConnect(reconnecting bool) {
	if reconnecting {
		logrus.Println("Reconnected to the WebSocket server.")
	} else {
		logrus.Println("Connected to the WebSocket server.")
	}
}

func (c *BaseWebSocketClient) Send(code int, message string) error {
	// Check if the connection is still open
	if c.conn.Conn == nil {
		return errors.New("connection is not initialized")
	}
	if c.conn.Conn.UnderlyingConn() == nil {
		return errors.New("connection is closed")
	}

	err := c.conn.Conn.WriteMessage(code, []byte(message))
	if err != nil {
		logrus.Error("failed to send websocket message: ", err)

		if strings.Contains(err.Error(), "close sent") {
			if !c.connectToWebSocket() {
				return err
			}
		}

		return err
	}

	return nil
}

func (c *BaseWebSocketClient) Disconnect(code int32, reason string) {
	c.mu.Lock()
	defer c.mu.Unlock()

	if c.conn.Conn == nil {
		logrus.Errorf("already disconnected")
	}

	logrus.Infof("Connection is closed. Code: %v, Reason: %s", code, reason)

	c.OnDisconnect(code, reason)

	if err := c.conn.Conn.Close(); err != nil {
		logrus.Errorf("failed to close connection: %v", err)
	}
}

func (c *BaseWebSocketClient) OnDisconnect(code int32, reason string) {
	logrus.Printf("Disconnected from WebSocket server with code %d and reason: %s\n", code, reason)

	// Clean up data or state related to the connection
	logrus.Infof("clearing data...")
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
	logrus.Infof("code: %v", code)
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
	logrus.Infof("adding reconnect delay")

	return float32(interval * math.Pow(backoffRate, float64(numberOfAttempts)))
}

func (c *BaseWebSocketClient) GetData(key string) interface{} {
	if _, exists := c.data[key]; exists {
		return c.data[key]
	}

	return ""
}

func (c *BaseWebSocketClient) HasData(key string) bool {
	c.mu.Lock()
	defer c.mu.Unlock()

	_, exists := c.data[key]

	return exists
}

func (c *BaseWebSocketClient) SetData(key string, value interface{}) {
	c.mu.Lock()
	defer c.mu.Unlock()

	c.data[key] = value
}

func (c *BaseWebSocketClient) ClearData() {
	c.data = make(map[string]interface{})
}

func (c *BaseWebSocketClient) readWs() (messageType int, p []byte, err error) {
	c.mu.Lock()
	c.mu.Unlock()

	return c.conn.Conn.ReadMessage()
}

func (c *BaseWebSocketClient) ReadWSMessage(done chan struct{}, messageHandler func(message []byte)) {
	go func() {
		for {
			var msg []byte
			var err error

			_, msg, err = c.readWs()

			if err != nil {
				logrus.Errorf("read message failed: %v", err)

				code := websocket.CloseProtocolError
				text := err.Error()

				if !c.ShouldReconnect(int32(code), text) {
					logrus.Infof("should not reconnect. ")
					c.Disconnect(int32(code), text)
				}
				logrus.Infof("reconnecting code %v", code)

				time.Sleep(time.Duration(c.ReconnectDelay(1)) * time.Second) // Wait before reconnecting

				c.connectToWebSocket()

				logrus.Error("failed to reconnect")
				close(done)

				return
			}

			if len(msg) > 0 {
				if messageHandler != nil {
					// Use custom message handler if provided
					messageHandler(msg)
				} else {
					// Default message handling
					c.OnMessage(string(msg))
				}
			}
		}
	}()
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

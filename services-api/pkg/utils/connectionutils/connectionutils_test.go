// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package connectionutils_test

import (
	"context"
	"fmt"
	"net/http"
	"strings"
	"sync"
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"

	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"
	"tideland.dev/go/wait"
)

var (
	configRepo = auth.DefaultConfigRepositoryImpl()
	tokenRepo  = auth.DefaultTokenRepositoryImpl()
	token      = "foo"
	baseUrl    = utils.GetEnv("AB_BASE_URL", "http://localhost:8000")
	statuses   = make([]string, 0)
	messages   = make([][]byte, 0)
	mu         sync.RWMutex
)

const (
	url1 = "http://localhost:8000/ws/lobby/force-close?errorCode=2000"
	url2 = "http://localhost:8000/ws/lobby/force-close?errorCode=4000"
)

func onStatus(status string) {
	mu.Lock()
	defer mu.Unlock()
	statuses = append(statuses, status)
}

func inStatuses(status string) bool {
	for _, s := range statuses {
		if s == status {
			return true
		}
	}

	return false
}

func clearStatuses() {
	mu.Lock()
	defer mu.Unlock()
	statuses = make([]string, 0)
}

func onMessage(msg []byte) {
	mu.Lock()
	defer mu.Unlock()
	messages = append(messages, msg)
}

func TestConnectionUtils(t *testing.T) {
	tokenRepo.AccessToken.AccessToken = &token
	configRepo.BaseUrl = baseUrl

	conn, err := connectionutils.NewWSConnection(
		configRepo, tokenRepo,
		connectionutils.WithScheme("ws"),
		connectionutils.WithMessageHandler(onMessage),
		connectionutils.WithEnableAutoReconnect(),
	)

	assert.Nil(t, err, "err should be nil")

	assert.NotNil(t, conn)
}

func TestConnectionUtils_ShouldReconnect(t *testing.T) {
	tokenRepo.AccessToken.AccessToken = &token
	configRepo.BaseUrl = baseUrl

	conn, err := connectionutils.NewWSConnection(
		configRepo, tokenRepo,
		connectionutils.WithScheme("ws"),
		connectionutils.WithMessageHandler(onMessage),
		connectionutils.WithEnableAutoReconnect(),
	)

	assert.Nil(t, err, "err should be nil")
	lobby := connectionutils.NewLobbyWebSocketClient(conn)

	assert.False(t, lobby.ShouldReconnect(-1, "Invalid code", 0))
	assert.False(t, lobby.ShouldReconnect(1000, "Normal closure", 0))
	assert.False(t, lobby.ShouldReconnect(3000, "Library-specific code", 0))
	assert.False(t, lobby.ShouldReconnect(4000, "Private-use code", 0))
	assert.False(t, lobby.ShouldReconnect(5000, "Undefined code", 0))
	assert.True(t, lobby.ShouldReconnect(1001, "Valid reconnect code", 0))
	assert.True(t, lobby.ShouldReconnect(2999, "Valid reconnect code", 0))
}

func TestConnectionUtils_ReconnectDelay(t *testing.T) {
	tokenRepo.AccessToken.AccessToken = &token
	configRepo.BaseUrl = baseUrl

	conn, err := connectionutils.NewWSConnection(
		configRepo, tokenRepo,
		connectionutils.WithScheme("ws"),
		connectionutils.WithMessageHandler(onMessage),
		connectionutils.WithEnableAutoReconnect(),
	)

	assert.Nil(t, err, "err should be nil")
	lobby := connectionutils.NewLobbyWebSocketClient(conn)

	assert.InDelta(t, 1.0, lobby.ReconnectDelay(0), 0.01)
	assert.InDelta(t, 2.0, lobby.ReconnectDelay(1), 0.01)
	assert.InDelta(t, 4.0, lobby.ReconnectDelay(2), 0.01)
	assert.InDelta(t, 8.0, lobby.ReconnectDelay(3), 0.01)
}

func TestConnectionUtils_DataManagement(t *testing.T) {
	tokenRepo.AccessToken.AccessToken = &token
	configRepo.BaseUrl = baseUrl

	conn, err := connectionutils.NewWSConnection(
		configRepo, tokenRepo,
		connectionutils.WithScheme("ws"),
		connectionutils.WithMessageHandler(onMessage),
		connectionutils.WithEnableAutoReconnect(),
	)

	assert.Nil(t, err, "err should be nil")

	lobby := connectionutils.NewLobbyWebSocketClient(conn)
	lobby.SetData("key1", "value1")
	lobby.SetData("key2", 42)

	assert.True(t, lobby.HasData("key1"))
	assert.Equal(t, "value1", lobby.GetData("key1"))

	assert.True(t, lobby.HasData("key2"))
	assert.Equal(t, 42, lobby.GetData("key2"))

	lobby.ClearData()

	assert.False(t, lobby.HasData("key1"))
	assert.False(t, lobby.HasData("key2"))
}

func TestWebSocketReconnect_Case1(t *testing.T) {
	tokenRepo.AccessToken.AccessToken = &token
	configRepo.BaseUrl = baseUrl
	logrus.SetLevel(logrus.DebugLevel)

	// 1. Connecting to mock server
	conn, err := connectionutils.NewWSConnection(
		configRepo, tokenRepo,
		connectionutils.WithScheme("ws"),
		connectionutils.WithStatusHandler(onStatus),
		connectionutils.WithMessageHandler(onMessage),
		connectionutils.WithEnableAutoReconnect(),
	)

	assert.Nil(t, err, "err should be nil")
	lobby := connectionutils.NewLobbyWebSocketClient(conn)
	assert.NotNil(t, lobby)

	success, err := lobby.Connect(false)
	assert.Nil(t, err)
	assert.True(t, success)

	// 2. Assert that status: Connected
	assertConnectionStatusWithTimeout(t, connectionutils.Connected, 1, false)
	clearStatuses()

	// 3. Wait for the connectNotif message and store lobbySessionId from the connectNotif message.
	originalLobbySessionId := waitForConnectNotif(t)

	// 4. Assert that the value from the WebSocket Client using GetData("lobbySessionId") is equal to originalLobbySessionId.
	assert.Equal(t, originalLobbySessionId, lobby.WSConn.GetData(connectionutils.LobbySessionID).(string))

	// 5. Send a POST /ws/lobby/force-close?errorCode=2000 HTTP request to the Mock Server.
	req, _ := http.NewRequest("POST", url1, nil)
	_, err = http.DefaultClient.Do(req)
	assert.NoError(t, err)

	// 6. Assert that the websocket connection has disconnected.
	assertConnectionStatusWithTimeout(t, connectionutils.Disconnected, 3, false)

	// 7. Assert that the websocket connection has reconnected.
	assertConnectionStatusWithTimeout(t, connectionutils.Reconnecting, 3, false)
	assertConnectionStatusWithTimeout(t, connectionutils.Connected, 3, false)
	clearStatuses()

	// 8. Assert that after we reconnected the data should not be deleted.
	assert.NotNil(t, lobby.WSConn.GetData(connectionutils.LobbySessionID))

	// 8. Wait for the connectNotif message and store lobbySessionId from the connectNotif message.
	newLobbySessionId := waitForConnectNotif(t)

	// 9. Assert that the originalLobbySessionId is equal to newLobbySessionId.
	assert.Equal(t, originalLobbySessionId, newLobbySessionId)
}

func TestWebSocketReconnect_Case2(t *testing.T) {
	tokenRepo.AccessToken.AccessToken = &token
	configRepo.BaseUrl = baseUrl
	logrus.SetLevel(logrus.DebugLevel)

	// 1. Connecting to mock server
	conn, err := connectionutils.NewWSConnection(
		configRepo, tokenRepo,
		connectionutils.WithScheme("ws"),
		connectionutils.WithStatusHandler(onStatus),
		connectionutils.WithMessageHandler(onMessage),
		connectionutils.WithEnableAutoReconnect(),
	)

	assert.Nil(t, err, "err should be nil")
	lobby := connectionutils.NewLobbyWebSocketClient(conn)
	assert.NotNil(t, lobby)

	success, err := lobby.Connect(false)
	assert.Nil(t, err)
	assert.True(t, success)

	// 2. Assert that status: Connected
	assertConnectionStatusWithTimeout(t, connectionutils.Connected, 1, false)
	clearStatuses()

	// 3. Wait for the connectNotif message and store lobbySessionId from the connectNotif message.
	originalLobbySessionId := waitForConnectNotif(t)

	// 4. Assert that the value from the WebSocket Client using GetData("LobbySessionId") is equal to originalLobbySessionId.
	assert.Equal(t, originalLobbySessionId, lobby.WSConn.GetData(connectionutils.LobbySessionID).(string))

	// 5. Send a POST /ws/lobby/force-close?errorCode=4000 HTTP request to the Mock Server.
	req, _ := http.NewRequest("POST", url2, nil)
	_, err = http.DefaultClient.Do(req)
	assert.NoError(t, err)

	// 6. Assert that the websocket connection has disconnected.
	assertConnectionStatusWithTimeout(t, connectionutils.Disconnected, 3, false)

	// 7. Assert that the websocket connection has stayed disconnected.
	assertConnectionStatusWithTimeout(t, connectionutils.Reconnecting, 3, true)
	assertConnectionStatusWithTimeout(t, connectionutils.Connected, 3, true)
	clearStatuses()

	// 8. Assert that the value from the WebSocket Client using GetData("LobbySessionId") is null or empty.
	assert.Empty(t, lobby.WSConn.GetData(connectionutils.LobbySessionID))

	// 9. Start a new connection with existing lobby WS client instance to the Mock Server’s Lobby Service.
	success, err = lobby.Connect(false)
	assert.True(t, success)
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, lobby.WSConn)
	assert.NotNil(t, lobby.WSConn.Conn)

	// 10. Assert that status: Connected
	assertConnectionStatusWithTimeout(t, connectionutils.Connected, 1, false)
	clearStatuses()

	// 11. Wait for the connectNotif message and store lobbySessionId from the connectNotif message.
	newLobbySessionId := waitForConnectNotif(t)

	// 12. Assert that the originalLobbySessionId is not equal to newLobbySessionId.
	assert.NotEqual(t, originalLobbySessionId, newLobbySessionId)
}

// Utility function to wait for a specific status
func assertConnectionStatusWithTimeout(t *testing.T, status string, timeoutInSecs int, invert bool) {
	t.Helper()

	err := wait.WithTimeout(
		context.Background(), 100*time.Millisecond, time.Duration(timeoutInSecs)*time.Second,
		func() (bool, error) {
			if inStatuses(status) {
				return true, nil
			}

			return false, nil
		},
	)
	if err != nil {
		if !invert {
			assert.FailNow(t,
				fmt.Sprintf("was expecting to be %s in %s by %ds, error: %s", status, statuses, timeoutInSecs, err),
			)
		}
	} else {
		if invert {
			assert.FailNow(t,
				fmt.Sprintf("was not expecting %s to be in %s by %ds, error: %s", status, statuses, timeoutInSecs, err),
			)
		}
	}
}

// Utility function to wait for the connectNotif message
func waitForConnectNotif(t *testing.T) string {
	t.Helper()

	time.Sleep(3 * time.Second) // Give the server time to send the message

	lobbySessionID := ""

	mu.RLock()
	defer mu.RUnlock()

	for _, message := range messages {
		msg := string(message)
		assert.NotEmpty(t, msg, msg)
		if strings.HasPrefix(msg, "type: connectNotif") {
			data := connectionutils.DecodeWSMessage(msg)
			if value, exists := data["lobbySessionID"]; exists {
				lobbySessionID = value.(string)
			}
		}
	}

	assert.NotEmpty(t, lobbySessionID)

	messages = make([][]byte, 0)

	return lobbySessionID
}

// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package connectionutils_test

import (
	"bytes"
	"net/http"
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"
	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"
)

var (
	configRepo = auth.DefaultConfigRepositoryImpl()
	tokenRepo  = auth.DefaultTokenRepositoryImpl()
	token      = "foo"
	connMgr    = &connectionutils.WSConnection{Base: &connectionutils.BaseWebSocketClient{}}

	oAuth20Service = &iam.OAuth20Service{
		Client:           factory.NewIamClient(configRepo),
		ConfigRepository: configRepo,
		TokenRepository:  tokenRepo,
	}
)

const url = "http://localhost:8080/ws/lobby/force-close?errorCode=4000"

func Init(t *testing.T) {
	t.Helper()

	err := oAuth20Service.Login("admin", "admin")
	if err != nil {
		t.Fatal(err)
	}
}

func TestConnectionUtils(t *testing.T) {
	Init(t)

	conn, err := connectionutils.NewWebsocketConnectionWithReconnect(configRepo, tokenRepo, false)
	if err != nil {
		return
	}

	assert.NotNil(t, conn)
}

func TestConnectionUtils_ShouldReconnect(t *testing.T) {
	tokenRepo.AccessToken.AccessToken = &token
	connection := connectionutils.NewDefaultBaseWebSocketClient(configRepo, tokenRepo)

	assert.False(t, connection.ShouldReconnect(-1, "Invalid code"))
	assert.False(t, connection.ShouldReconnect(1000, "Normal closure"))
	assert.False(t, connection.ShouldReconnect(3000, "Library-specific code"))
	assert.False(t, connection.ShouldReconnect(4000, "Private-use code"))
	assert.False(t, connection.ShouldReconnect(5000, "Undefined code"))
	assert.True(t, connection.ShouldReconnect(1001, "Valid reconnect code"))
	assert.True(t, connection.ShouldReconnect(2999, "Valid reconnect code"))
}

func TestConnectionUtils_ReconnectDelay(t *testing.T) {
	tokenRepo.AccessToken.AccessToken = &token
	connection := connectionutils.NewDefaultBaseWebSocketClient(configRepo, tokenRepo)

	assert.InDelta(t, 1.0, connection.ReconnectDelay(0), 0.01)
	assert.InDelta(t, 2.0, connection.ReconnectDelay(1), 0.01)
	assert.InDelta(t, 4.0, connection.ReconnectDelay(2), 0.01)
	assert.InDelta(t, 8.0, connection.ReconnectDelay(3), 0.01)
}

func TestConnectionUtils_DataManagement(t *testing.T) {
	tokenRepo.AccessToken.AccessToken = &token
	connection := connectionutils.NewDefaultBaseWebSocketClient(configRepo, tokenRepo)

	connection.SetData("key1", "value1")
	connection.SetData("key2", 42)

	assert.True(t, connection.HasData("key1"))
	assert.Equal(t, "value1", connection.GetData("key1"))

	assert.True(t, connection.HasData("key2"))
	assert.Equal(t, 42, connection.GetData("key2"))

	connection.ClearData()

	assert.False(t, connection.HasData("key1"))
	assert.False(t, connection.HasData("key2"))
}

func TestWebSocketReconnect_Case1(t *testing.T) {
	Init(t)

	// 1. Connecting to mock server
	client, err := connectionutils.NewWebsocketConnectionWithReconnect(oAuth20Service.ConfigRepository, oAuth20Service.TokenRepository, true)
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, client)

	connMgr.Base.Save(client)

	// 2. Wait for the connectNotif message and store lobbySessionId from the connectNotif message.
	originalLobbySessionId := waitForConnectNotif(t, client.Base)

	// 3. Assert that the value from the WebSocket Client using GetData("LobbySessionId") is equal to originalLobbySessionId.
	assert.Equal(t, originalLobbySessionId, client.Base.GetData("LobbySessionID"))

	var logBuffer bytes.Buffer // capture the log
	logrus.SetOutput(&logBuffer)
	defer logrus.SetOutput(nil)

	// 4. Send a POST /ws/lobby/force-close?errorCode=4000 HTTP request to the Mock Server.
	req, _ := http.NewRequest("POST", url, nil)
	_, err = http.DefaultClient.Do(req)
	assert.NoError(t, err)

	// 5. Assert that the websocket connection has disconnected.
	logOutput := logBuffer.String()
	assert.Contains(t, logOutput, "done signal received")

	// 6. Wait for 1 second.
	time.Sleep(1 * time.Second)

	// 7. Assert that the websocket connection has reconnected.
	assert.NotNil(t, client.Base.GetData("LobbySessionID"))

	// 8. Wait for the connectNotif message and store lobbySessionId from the connectNotif message.
	newLobbySessionId := waitForConnectNotif(t, client.Base)

	// 9. Assert that the originalLobbySessionId is equal to newLobbySessionId.
	assert.Equal(t, originalLobbySessionId, newLobbySessionId)
}

func TestWebSocketReconnect_Case2(t *testing.T) {
	Init(t)

	// 1. Connecting to mock server
	client, err := connectionutils.NewWebsocketConnectionWithReconnect(oAuth20Service.ConfigRepository, oAuth20Service.TokenRepository, false)
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, client)

	client.Base.Save(client)

	// 2. Wait for the connectNotif message and store lobbySessionId from the connectNotif message.
	originalLobbySessionId := waitForConnectNotif(t, client.Base)

	// 3. Assert that the value from the WebSocket Client using GetData("LobbySessionId") is equal to originalLobbySessionId.
	assert.Equal(t, originalLobbySessionId, client.Base.GetData("LobbySessionID"))

	var logBuffer bytes.Buffer // capture the log
	logrus.SetOutput(&logBuffer)
	defer logrus.SetOutput(nil)

	// 4. Send a POST /ws/lobby/force-close?errorCode=4000 HTTP request to the Mock Server.
	req, _ := http.NewRequest("POST", url, nil)
	_, err = http.DefaultClient.Do(req)
	assert.NoError(t, err)
	//client.Base.OnDisconnect(1000, "")

	// 5. Assert that the websocket connection has disconnected.
	logOutput := logBuffer.String()
	assert.Contains(t, logOutput, "done signal received")

	// 6. Wait for 1 second.
	time.Sleep(1 * time.Second)

	// 7. Assert that the websocket connection has stayed disconnected.
	assert.Contains(t, logOutput, "done signal received")

	// 8. Assert that the value from the WebSocket Client using GetData("LobbySessionId") is null or empty.
	assert.Empty(t, client.Base.GetData("LobbySessionID"))

	// 9. Start a new connection to the Mock Server’s Lobby Service.
	client, err = connectionutils.NewWebsocketConnectionWithReconnect(oAuth20Service.ConfigRepository, oAuth20Service.TokenRepository, false)
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, client)

	connMgr.Base.Save(client)
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, client)
	assert.NotNil(t, client.Conn)

	// 10. Wait for the connectNotif message and store lobbySessionId from the connectNotif message.
	newLobbySessionId := waitForConnectNotif(t, client.Base)

	// 11. Assert that the originalLobbySessionId is not equal to newLobbySessionId.
	assert.NotEqual(t, originalLobbySessionId, newLobbySessionId)
}

// Utility function to wait for the connectNotif message
func waitForConnectNotif(t *testing.T, client *connectionutils.BaseWebSocketClient) string {
	t.Helper()

	time.Sleep(100 * time.Millisecond) // Give the server time to send the message

	if !client.HasData("LobbySessionID") {
		return ""
	}

	lobbySessionID, ok := client.GetData("LobbySessionID").(string)
	assert.True(t, ok, "Expected LobbySessionID to be a string")
	assert.NotNil(t, lobbySessionID)

	return lobbySessionID
}

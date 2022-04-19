// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package connectionutils

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"strings"
	"sync"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"

	"github.com/gorilla/websocket"
	"github.com/sirupsen/logrus"
)

type WSConnection struct {
	Conn *websocket.Conn
	mu   sync.RWMutex
}

var lobbyURL string

func NewWebsocketConnection(configRepo repository.ConfigRepository, tokenRepo repository.TokenRepository, messageHandler func(msg []byte)) (*WSConnection, error) {
	token, err := tokenRepo.GetToken()
	if err != nil {
		logrus.Infof("Unable to connect get token: %v", err)

		return nil, fmt.Errorf("unable to connect get token: %v", err)
	}

	baseURL := configRepo.GetJusticeBaseUrl()
	baseURLSplit := strings.Split(baseURL, "://")
	if len(baseURLSplit) == 2 {
		conn, err := Connect(baseURLSplit[1], *token.AccessToken)
		if err != nil {
			logrus.Errorf("unable to connect into lobby: %v", err)

			return nil, fmt.Errorf("unable to connect into lobby: %v", err)
		}
		wsConnection := &WSConnection{
			Conn: conn,
			mu:   sync.RWMutex{},
		}

		done := make(chan struct{})
		go ReadWSMessage(done, wsConnection, messageHandler)
		go WSHeartbeat(done, wsConnection)

		return wsConnection, nil
	}

	return nil, fmt.Errorf("invalid base URL")
}

func Connect(host, token string) (*websocket.Conn, error) {
	authHeader := "Bearer " + token
	logrus.Debug("Connecting user to lobby")

	if host == "0.0.0.0:8080" || host == "127.0.0.1:8080" {
		lobbyURL = "ws://" + host + "/lobby/"
	} else {
		lobbyURL = "wss://" + host + "/lobby/"
	}

	logrus.Infof("lobby URL: %s", lobbyURL)

	req, err := http.NewRequest(http.MethodGet, lobbyURL, nil)
	if err != nil {
		logrus.Error(err)
		panic(err)
	}
	req.Header.Set("Authorization", authHeader)

	connection, res, err := websocket.DefaultDialer.Dial(req.URL.String(), req.Header)
	if err == websocket.ErrBadHandshake {
		b, e := ioutil.ReadAll(res.Body)
		if e == nil {
			logrus.Error("bad handshake", res.Status, string(b))

			return nil, fmt.Errorf("bad handshake %s %s", res.Status, string(b))
		}
	}

	if err != nil {
		logrus.Error(err)
		panic(err)
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

	return connection, nil
}

func ReadWSMessage(done chan struct{}, connection *WSConnection, messageHandler func(message []byte)) {
	for {
		_, msg, subErr := connection.Conn.ReadMessage()
		if subErr != nil {
			logrus.Info("read message failed: ", subErr)
			close(done)

			return
		}
		if len(msg) > 0 {
			messageHandler(msg)
		}
	}
}

func WSHeartbeat(done chan struct{}, wsConnection *WSConnection) {
	ticker := time.NewTicker(4 * time.Second)
	defer ticker.Stop()

	for {
		select {
		case <-ticker.C:
			err := wsConnection.Conn.WriteMessage(websocket.PingMessage, []byte{})
			if err != nil {
				logrus.Errorf("cannot write heartbeat: %v", err)
			}
		case <-done:
			logrus.Info("done signal received, stop heartbeat.")

			return
		}
	}
}

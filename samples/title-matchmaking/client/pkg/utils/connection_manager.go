// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"fmt"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"
)

type ConnectionManagerImpl struct {
}

var wsConn *connectionutils.WSConnection

func (connManager *ConnectionManagerImpl) Save(conn *connectionutils.WSConnection) {
	wsConn = conn
}

func (connManager *ConnectionManagerImpl) Get() *connectionutils.WSConnection {
	return wsConn
}

func (connManager *ConnectionManagerImpl) Close() error {
	if wsConn == nil {
		return fmt.Errorf("no websocket connection can be closed")
	}

	return wsConn.Conn.Close()
}

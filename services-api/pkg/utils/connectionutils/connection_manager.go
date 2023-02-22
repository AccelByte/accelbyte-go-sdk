// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package connectionutils

type ConnectionManager interface {
	Save(wsConnection *WSConnection)
	Get() *WSConnection
	Close() error
}

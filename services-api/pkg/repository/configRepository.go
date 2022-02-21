// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package repository

type ConfigRepository interface {
	GetClientId() string
	GetClientSecret() string
	GetJusticeBaseUrl() string
	GetClientAppName() string
}

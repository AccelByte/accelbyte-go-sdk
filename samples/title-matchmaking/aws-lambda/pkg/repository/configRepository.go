// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package repository

import "os"

type ConfigRepositoryImpl struct {
}

func (configRepository *ConfigRepositoryImpl) GetClientId() string {
	return os.Getenv("IAM_CLIENT_ID")
}

func (configRepository *ConfigRepositoryImpl) GetClientSecret() string {
	return os.Getenv("IAM_CLIENT_SECRET")
}

func (configRepository *ConfigRepositoryImpl) GetJusticeBaseUrl() string {
	return os.Getenv("ACCELBYTE_BASE_URL")
}

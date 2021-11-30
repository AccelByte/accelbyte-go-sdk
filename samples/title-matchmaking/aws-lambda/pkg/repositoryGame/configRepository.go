// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package repositoryGame

import "os"

type ConfigRepositoryGameImpl struct {
}

func (configRepositoryGame *ConfigRepositoryGameImpl) GetClientId() string {
	return os.Getenv("GAME_CLIENT_ID")
}

func (configRepositoryGame *ConfigRepositoryGameImpl) GetClientSecret() string {
	return ""
}

func (configRepositoryGame *ConfigRepositoryGameImpl) GetJusticeBaseUrl() string {
	return os.Getenv("ACCELBYTE_BASE_URL")
}

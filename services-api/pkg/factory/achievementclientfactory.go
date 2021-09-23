// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package factory

import (
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient"
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var achievementClientInstance *achievementclient.JusticeAchievementService

func NewAchievementClient(configRepository repository.ConfigRepository) *achievementclient.JusticeAchievementService {
	if achievementClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		if len(baseUrl) > 0 {
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &achievementclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			achievementClientInstance = achievementclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			achievementClientInstance = achievementclient.NewHTTPClient(nil)
		}
	}
	return achievementClientInstance
}

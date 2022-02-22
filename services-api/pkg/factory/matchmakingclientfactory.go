// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/sirupsen/logrus"
)

var matchmakingClientInstance *matchmakingclient.JusticeMatchmakingService

func NewMatchmakingClient(configRepository repository.ConfigRepository) *matchmakingclient.JusticeMatchmakingService {
	if matchmakingClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		if len(baseUrl) > 0 {
			logrus.Infof("Base URL : %v", baseUrl)
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &matchmakingclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			matchmakingClientInstance = matchmakingclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			matchmakingClientInstance = matchmakingclient.NewHTTPClient(nil)
		}

	}

	return matchmakingClientInstance
}

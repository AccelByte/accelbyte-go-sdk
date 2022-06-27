// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var matchmakingClientInstance *matchmakingclient.JusticeMatchmakingService

func NewMatchmakingClient(configRepository repository.ConfigRepository) *matchmakingclient.JusticeMatchmakingService {
	if matchmakingClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &matchmakingclient.TransportConfig{
				Host:     baseURLSplit[1],
				BasePath: "",
				Schemes:  []string{baseURLSplit[0]},
			}
			matchmakingClientInstance = matchmakingclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			matchmakingClientInstance = matchmakingclient.NewHTTPClient(nil)
		}
	}

	return matchmakingClientInstance
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var leaderboardClientInstance *leaderboardclient.JusticeLeaderboardService

func NewLeaderboardClient(configRepository repository.ConfigRepository) *leaderboardclient.JusticeLeaderboardService {
	if leaderboardClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &leaderboardclient.TransportConfig{
				Host:     baseURLSplit[1],
				BasePath: "",
				Schemes:  []string{baseURLSplit[0]},
			}
			leaderboardClientInstance = leaderboardclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			leaderboardClientInstance = leaderboardclient.NewHTTPClient(nil)
		}
	}

	return leaderboardClientInstance
}

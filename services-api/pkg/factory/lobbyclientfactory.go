// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package factory

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"strings"
)

var lobbyClientInstance *lobbyclient.JusticeLobbyService

func NewLobbyClient(configRepository repository.ConfigRepository) *lobbyclient.JusticeLobbyService {
	if lobbyClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		if len(baseUrl) > 0 {
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &lobbyclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "/lobby",
				Schemes:  []string{baseUrlSplit[0]},
			}
			lobbyClientInstance = lobbyclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			lobbyClientInstance = lobbyclient.NewHTTPClient(nil)
		}

	}
	return lobbyClientInstance
}

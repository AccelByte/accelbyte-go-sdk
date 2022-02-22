// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/sirupsen/logrus"
)

var gametelemetryClientInstance *gametelemetryclient.JusticeGametelemetryService

func NewGametelemetryClient(configRepository repository.ConfigRepository) *gametelemetryclient.JusticeGametelemetryService {
	if gametelemetryClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		if len(baseUrl) > 0 {
			logrus.Infof("Base URL : %v", baseUrl)
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &gametelemetryclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			gametelemetryClientInstance = gametelemetryclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			gametelemetryClientInstance = gametelemetryclient.NewHTTPClient(nil)
		}

	}

	return gametelemetryClientInstance
}

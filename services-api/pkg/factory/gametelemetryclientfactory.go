// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

var gametelemetryClientInstance *gametelemetryclient.JusticeGametelemetryService

func NewGametelemetryClient(configRepository repository.ConfigRepository) *gametelemetryclient.JusticeGametelemetryService {
	if gametelemetryClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		xAmazonTraceID := utils.AmazonTraceIDGen()
		userAgent := utils.UserAgentGen()
		retry := utils.EnabledRetry(true)
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &gametelemetryclient.TransportConfig{
				Host:     baseURLSplit[1],
				BasePath: "",
				Schemes:  []string{baseURLSplit[0]},
			}
			gametelemetryClientInstance = gametelemetryclient.NewHTTPClientWithConfig(nil, httpClientConfig, userAgent, xAmazonTraceID, retry)
		} else {
			gametelemetryClientInstance = gametelemetryclient.NewHTTPClient(nil)
		}
	}

	return gametelemetryClientInstance
}

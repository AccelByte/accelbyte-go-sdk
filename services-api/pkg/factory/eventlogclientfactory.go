// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var eventlogClientInstance *eventlogclient.JusticeEventlogService

func NewEventlogClient(configRepository repository.ConfigRepository) *eventlogclient.JusticeEventlogService {
	if eventlogClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &eventlogclient.TransportConfig{
				Host:     baseURLSplit[1],
				BasePath: "",
				Schemes:  []string{baseURLSplit[0]},
			}
			eventlogClientInstance = eventlogclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			eventlogClientInstance = eventlogclient.NewHTTPClient(nil)
		}
	}

	return eventlogClientInstance
}

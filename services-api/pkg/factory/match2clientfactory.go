// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var match2ClientInstance *match2client.JusticeMatch2Service

func NewMatch2Client(configRepository repository.ConfigRepository) *match2client.JusticeMatch2Service {
	if match2ClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &match2client.TransportConfig{
				Host:     baseURLSplit[1],
				BasePath: "",
				Schemes:  []string{baseURLSplit[0]},
			}
			match2ClientInstance = match2client.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			match2ClientInstance = match2client.NewHTTPClient(nil)
		}
	}

	return match2ClientInstance
}

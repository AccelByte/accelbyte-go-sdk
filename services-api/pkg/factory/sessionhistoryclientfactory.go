// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclient"
)

func NewSessionhistoryClient(configRepository repository.ConfigRepository) *sessionhistoryclient.JusticeSessionhistoryService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")
	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &sessionhistoryclient.TransportConfig{
			Host:     baseURLSplit[1],
			BasePath: "",
			Schemes:  []string{baseURLSplit[0]},
		}
		return sessionhistoryclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return sessionhistoryclient.NewHTTPClient(nil)
	}
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

func NewChallengeClient(configRepository repository.ConfigRepository) *challengeclient.JusticeChallengeService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")
	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &challengeclient.TransportConfig{
			Host:     baseURLSplit[1],
			BasePath: "",
			Schemes:  []string{baseURLSplit[0]},
		}
		return challengeclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return challengeclient.NewHTTPClient(nil)
	}
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

func NewCsmClient(configRepository repository.ConfigRepository) *csmclient.JusticeCsmService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")
	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &csmclient.TransportConfig{
			Host:     baseURLSplit[1],
			BasePath: "",
			Schemes:  []string{baseURLSplit[0]},
		}
		return csmclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return csmclient.NewHTTPClient(nil)
	}
}

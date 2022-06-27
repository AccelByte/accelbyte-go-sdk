// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var dsmcClientInstance *dsmcclient.JusticeDsmcService

func NewDsmcClient(configRepository repository.ConfigRepository) *dsmcclient.JusticeDsmcService {
	if dsmcClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &dsmcclient.TransportConfig{
				Host:     baseURLSplit[1],
				BasePath: "",
				Schemes:  []string{baseURLSplit[0]},
			}
			dsmcClientInstance = dsmcclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			dsmcClientInstance = dsmcclient.NewHTTPClient(nil)
		}
	}

	return dsmcClientInstance
}

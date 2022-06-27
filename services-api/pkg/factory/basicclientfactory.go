// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var basicClientInstance *basicclient.JusticeBasicService

func NewBasicClient(configRepository repository.ConfigRepository) *basicclient.JusticeBasicService {
	if basicClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &basicclient.TransportConfig{
				Host:     baseURLSplit[1],
				BasePath: "",
				Schemes:  []string{baseURLSplit[0]},
			}
			basicClientInstance = basicclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			basicClientInstance = basicclient.NewHTTPClient(nil)
		}
	}

	return basicClientInstance
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package factory

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"strings"
)

var basicClientInstance *basicclient.JusticeBasicService

func NewBasicClient(configRepository repository.ConfigRepository) *basicclient.JusticeBasicService {
	if basicClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		if len(baseUrl) > 0 {
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &basicclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "/basic",
				Schemes:  []string{baseUrlSplit[0]},
			}
			basicClientInstance = basicclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			basicClientInstance = basicclient.NewHTTPClient(nil)
		}

	}

	return basicClientInstance
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package factory

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"strings"
)

var platformClientInstance *platformclient.JusticePlatformService

func NewPlatformClient(configRepository repository.ConfigRepository) *platformclient.JusticePlatformService {
	if platformClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		if len(baseUrl) > 0 {
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &platformclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "/platform",
				Schemes:  []string{baseUrlSplit[0]},
			}
			platformClientInstance = platformclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			platformClientInstance = platformclient.NewHTTPClient(nil)
		}

	}
	return platformClientInstance
}

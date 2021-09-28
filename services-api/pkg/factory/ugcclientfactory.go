// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
)

var ugcClientInstance *ugcclient.JusticeUgcService

func NewUGCClient(configRepository repository.ConfigRepository) *ugcclient.JusticeUgcService {
	if ugcClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		if len(baseUrl) > 0 {
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &ugcclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			ugcClientInstance = ugcclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			ugcClientInstance = ugcclient.NewHTTPClient(nil)
		}
	}
	return ugcClientInstance
}

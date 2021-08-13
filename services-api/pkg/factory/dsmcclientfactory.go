// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package factory

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"strings"
)

var dsmcClientInstance *dsmcclient.JusticeDsmcService

func NewDSMCClient(configRepository repository.ConfigRepository) *dsmcclient.JusticeDsmcService {
	if dsmcClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		if len(baseUrl) > 0 {
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &dsmcclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			dsmcClientInstance = dsmcclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			dsmcClientInstance = dsmcclient.NewHTTPClient(nil)
		}
	}
	return dsmcClientInstance
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var dsLogManagerClientInstance *dslogmanagerclient.JusticeDslogmanagerService

func NewDslogmanagerClient(configRepository repository.ConfigRepository) *dslogmanagerclient.JusticeDslogmanagerService {
	if dsLogManagerClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		if len(baseUrl) > 0 {
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &dslogmanagerclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			dsLogManagerClientInstance = dslogmanagerclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			dsLogManagerClientInstance = dslogmanagerclient.NewHTTPClient(nil)
		}
	}
	return dsLogManagerClientInstance
}

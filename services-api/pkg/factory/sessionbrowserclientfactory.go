// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient"
)

var sessionbrowserClientInstance *sessionbrowserclient.JusticeSessionbrowserService

func NewSessionClient(configRepository repository.ConfigRepository) *sessionbrowserclient.JusticeSessionbrowserService {
	if sessionbrowserClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		if len(baseUrl) > 0 {
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &sessionbrowserclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			sessionbrowserClientInstance = sessionbrowserclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			sessionbrowserClientInstance = sessionbrowserclient.NewHTTPClient(nil)
		}
	}

	return sessionbrowserClientInstance
}

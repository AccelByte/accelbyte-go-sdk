// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/sirupsen/logrus"
)

var gdprClientInstance *gdprclient.JusticeGdprService

func NewGdprClient(configRepository repository.ConfigRepository) *gdprclient.JusticeGdprService {
	if gdprClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		if len(baseUrl) > 0 {
			logrus.Infof("Base URL : %v", baseUrl)
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &gdprclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			gdprClientInstance = gdprclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			gdprClientInstance = gdprclient.NewHTTPClient(nil)
		}

	}

	return gdprClientInstance
}

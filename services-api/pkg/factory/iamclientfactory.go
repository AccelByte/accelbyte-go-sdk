// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/sirupsen/logrus"
)

var iamClientInstance *iamclient.JusticeIamService

func NewIamClient(configRepository repository.ConfigRepository) *iamclient.JusticeIamService {
	if iamClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		if len(baseUrl) > 0 {
			logrus.Infof("Base URL : %v", baseUrl)
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &iamclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			iamClientInstance = iamclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			iamClientInstance = iamclient.NewHTTPClient(nil)
		}

	}

	return iamClientInstance
}

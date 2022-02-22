// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/sirupsen/logrus"
)

var achievementClientInstance *achievementclient.JusticeAchievementService

func NewAchievementClient(configRepository repository.ConfigRepository) *achievementclient.JusticeAchievementService {
	if achievementClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		xAmazonTraceId := utils.AmazonTraceIdGen()
		if len(baseUrl) > 0 {
			logrus.Infof("Base URL : %v", baseUrl)
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &achievementclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			achievementClientInstance = achievementclient.NewHTTPClientWithConfig(nil, httpClientConfig, xAmazonTraceId)
			logrus.Infof("Amazon Trace ID: \"%+v\"", xAmazonTraceId)
		} else {
			achievementClientInstance = achievementclient.NewHTTPClient(nil)
		}

	}

	return achievementClientInstance
}

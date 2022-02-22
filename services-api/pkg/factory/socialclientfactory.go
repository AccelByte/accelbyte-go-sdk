// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
	"github.com/sirupsen/logrus"
)

var socialClientInstance *socialclient.JusticeSocialService

func NewSocialClient(configRepository repository.ConfigRepository) *socialclient.JusticeSocialService {
	if socialClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		xAmazonTraceId := utils.AmazonTraceIdGen()
		if len(baseUrl) > 0 {
			logrus.Infof("Base URL : %v", baseUrl)
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &socialclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "/social",
				Schemes:  []string{baseUrlSplit[0]},
			}
			socialClientInstance = socialclient.NewHTTPClientWithConfig(nil, httpClientConfig, xAmazonTraceId)
			logrus.Infof("Amazon Trace ID: \"%+v\"", xAmazonTraceId)
		} else {
			socialClientInstance = socialclient.NewHTTPClient(nil)
		}

	}

	return socialClientInstance
}

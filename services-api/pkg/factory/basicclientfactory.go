// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/sirupsen/logrus"
)

var basicClientInstance *basicclient.JusticeBasicService

func NewBasicClient(configRepository repository.ConfigRepository) *basicclient.JusticeBasicService {
	if basicClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		xAmazonTraceId := utils.AmazonTraceIdGen()
		userAgent := utils.UserAgentGen()
		if len(baseUrl) > 0 {
			logrus.Infof("Base URL : %v", baseUrl)
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &basicclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "/basic",
				Schemes:  []string{baseUrlSplit[0]},
			}
			basicClientInstance = basicclient.NewHTTPClientWithConfig(nil, httpClientConfig, userAgent, xAmazonTraceId)
			logrus.Infof("Amazon Trace ID: \"%+v\"", xAmazonTraceId)
		} else {
			basicClientInstance = basicclient.NewHTTPClient(nil)
		}

	}

	return basicClientInstance
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

var cloudsaveClientInstance *cloudsaveclient.JusticeCloudsaveService

func NewCloudsaveClient(configRepository repository.ConfigRepository) *cloudsaveclient.JusticeCloudsaveService {
	if cloudsaveClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		xAmazonTraceID := utils.AmazonTraceIDGen()
		userAgent := utils.UserAgentGen()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &cloudsaveclient.TransportConfig{
				Host:     baseURLSplit[1],
				BasePath: "",
				Schemes:  []string{baseURLSplit[0]},
			}
			cloudsaveClientInstance = cloudsaveclient.NewHTTPClientWithConfig(nil, httpClientConfig, userAgent, xAmazonTraceID)
		} else {
			cloudsaveClientInstance = cloudsaveclient.NewHTTPClient(nil)
		}
	}

	return cloudsaveClientInstance
}

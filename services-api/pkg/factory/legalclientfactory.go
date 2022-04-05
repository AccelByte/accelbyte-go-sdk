// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

var legalClientInstance *legalclient.JusticeLegalService

func NewLegalClient(configRepository repository.ConfigRepository) *legalclient.JusticeLegalService {
	if legalClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		xAmazonTraceID := utils.AmazonTraceIDGen()
		userAgent := utils.UserAgentGen()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &legalclient.TransportConfig{
				Host:     baseURLSplit[1],
				BasePath: "",
				Schemes:  []string{baseURLSplit[0]},
			}
			legalClientInstance = legalclient.NewHTTPClientWithConfig(nil, httpClientConfig, userAgent, xAmazonTraceID)
		} else {
			legalClientInstance = legalclient.NewHTTPClient(nil)
		}
	}

	return legalClientInstance
}

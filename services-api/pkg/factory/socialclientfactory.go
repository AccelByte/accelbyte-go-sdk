// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
)

var socialClientInstance *socialclient.JusticeSocialService

func NewSocialClient(configRepository repository.ConfigRepository) *socialclient.JusticeSocialService {
	if socialClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		xAmazonTraceID := utils.AmazonTraceIDGen()
		userAgent := utils.UserAgentGen()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &socialclient.TransportConfig{
				Host:     baseURLSplit[1],
				BasePath: "",
				Schemes:  []string{baseURLSplit[0]},
			}
			socialClientInstance = socialclient.NewHTTPClientWithConfig(nil, httpClientConfig, userAgent, xAmazonTraceID)
		} else {
			socialClientInstance = socialclient.NewHTTPClient(nil)
		}
	}

	return socialClientInstance
}

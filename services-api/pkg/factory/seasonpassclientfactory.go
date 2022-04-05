// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

var seasonpassClientInstance *seasonpassclient.JusticeSeasonpassService

func NewSeasonpassClient(configRepository repository.ConfigRepository) *seasonpassclient.JusticeSeasonpassService {
	if seasonpassClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		xAmazonTraceID := utils.AmazonTraceIDGen()
		userAgent := utils.UserAgentGen()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &seasonpassclient.TransportConfig{
				Host:     baseURLSplit[1],
				BasePath: "",
				Schemes:  []string{baseURLSplit[0]},
			}
			seasonpassClientInstance = seasonpassclient.NewHTTPClientWithConfig(nil, httpClientConfig, userAgent, xAmazonTraceID)
		} else {
			seasonpassClientInstance = seasonpassclient.NewHTTPClient(nil)
		}
	}

	return seasonpassClientInstance
}

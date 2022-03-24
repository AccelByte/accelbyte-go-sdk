// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

var dslogmanagerClientInstance *dslogmanagerclient.JusticeDslogmanagerService

func NewDslogmanagerClient(configRepository repository.ConfigRepository) *dslogmanagerclient.JusticeDslogmanagerService {
	if dslogmanagerClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		xAmazonTraceId := utils.AmazonTraceIdGen()
		userAgent := utils.UserAgentGen()
		if len(baseUrl) > 0 {
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &dslogmanagerclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			dslogmanagerClientInstance = dslogmanagerclient.NewHTTPClientWithConfig(nil, httpClientConfig, userAgent, xAmazonTraceId)
		} else {
			dslogmanagerClientInstance = dslogmanagerclient.NewHTTPClient(nil)
		}
	}

	return dslogmanagerClientInstance
}

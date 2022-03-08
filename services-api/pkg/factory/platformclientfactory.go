// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package factory

import (
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

var platformClientInstance *platformclient.JusticePlatformService

func NewPlatformClient(configRepository repository.ConfigRepository) *platformclient.JusticePlatformService {
	if platformClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		xAmazonTraceId := utils.AmazonTraceIdGen()
		userAgent := utils.UserAgentGen()
		if len(baseUrl) > 0 {
			logrus.Infof("Base URL : %v", baseUrl)
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &platformclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "/platform",
				Schemes:  []string{baseUrlSplit[0]},
			}
			platformClientInstance = newCustomPlatformHttpClientWithConfig(nil, httpClientConfig, userAgent, xAmazonTraceId)
		} else {
			platformClientInstance = newCustomPlatformHttpClient(nil)
		}

	}

	return platformClientInstance
}

func newCustomPlatformHttpClientWithConfig(formats strfmt.Registry, cfg *platformclient.TransportConfig, userAgent, xAmazonTraceId string) *platformclient.JusticePlatformService {
	if cfg == nil {
		cfg = platformclient.DefaultTransportConfig()
	}

	transport := client.New(cfg.Host, cfg.BasePath, cfg.Schemes)
	// add unsupported mime type. Please see this open issue https://github.com/go-swagger/go-swagger/issues/1244 for more details.
	transport.Producers["*/*"] = runtime.JSONProducer()
	transport.Consumers["application/problem+json"] = runtime.JSONConsumer()
	transport.Consumers["application/x-www-form-urlencoded"] = runtime.JSONConsumer()
	transport.Consumers["application/zip"] = runtime.JSONConsumer()
	transport.Consumers["application/pdf"] = runtime.JSONConsumer()
	transport.Consumers["image/png"] = runtime.ByteStreamConsumer()

	// optional custom user-agent for request header
	if userAgent != "" {
		transport.Transport = utils.SetUserAgent(transport.Transport, userAgent)
	}

	// optional custom amazonTraceId for request header
	if xAmazonTraceId != "" {
		transport.Transport = utils.SetXAmznTraceId(transport.Transport, xAmazonTraceId)
	}

	return platformclient.New(transport, formats)
}

func newCustomPlatformHttpClient(formats strfmt.Registry) *platformclient.JusticePlatformService {
	return newCustomPlatformHttpClientWithConfig(formats, nil, "", "")
}

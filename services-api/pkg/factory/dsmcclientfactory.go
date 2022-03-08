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

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

var dsmcClientInstance *dsmcclient.JusticeDsmcService

func NewDsmcClient(configRepository repository.ConfigRepository) *dsmcclient.JusticeDsmcService {
	if dsmcClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		xAmazonTraceId := utils.AmazonTraceIdGen()
		userAgent := utils.UserAgentGen()
		if len(baseUrl) > 0 {
			logrus.Infof("Base URL : %v", baseUrl)
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &dsmcclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			dsmcClientInstance = newCustomDsmcHttpClientWithConfig(nil, httpClientConfig, userAgent, xAmazonTraceId)
		} else {
			dsmcClientInstance = newCustomDsmcHttpClient(nil)
		}

	}

	return dsmcClientInstance
}

func newCustomDsmcHttpClientWithConfig(formats strfmt.Registry, cfg *dsmcclient.TransportConfig, userAgent, xAmazonTraceId string) *dsmcclient.JusticeDsmcService {
	if cfg == nil {
		cfg = dsmcclient.DefaultTransportConfig()
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

	return dsmcclient.New(transport, formats)
}

func newCustomDsmcHttpClient(formats strfmt.Registry) *dsmcclient.JusticeDsmcService {
	return newCustomDsmcHttpClientWithConfig(formats, nil, "", "")
}

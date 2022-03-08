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

	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

var eventlogClientInstance *eventlogclient.JusticeEventlogService

func NewEventlogClient(configRepository repository.ConfigRepository) *eventlogclient.JusticeEventlogService {
	if eventlogClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		xAmazonTraceId := utils.AmazonTraceIdGen()
		userAgent := utils.UserAgentGen()
		if len(baseUrl) > 0 {
			logrus.Infof("Base URL : %v", baseUrl)
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &eventlogclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			eventlogClientInstance = newCustomEventlogHttpClientWithConfig(nil, httpClientConfig, userAgent, xAmazonTraceId)
		} else {
			eventlogClientInstance = newCustomEventlogHttpClient(nil)
		}

	}

	return eventlogClientInstance
}

func newCustomEventlogHttpClientWithConfig(formats strfmt.Registry, cfg *eventlogclient.TransportConfig, userAgent, xAmazonTraceId string) *eventlogclient.JusticeEventlogService {
	if cfg == nil {
		cfg = eventlogclient.DefaultTransportConfig()
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

	return eventlogclient.New(transport, formats)
}

func newCustomEventlogHttpClient(formats strfmt.Registry) *eventlogclient.JusticeEventlogService {
	return newCustomEventlogHttpClientWithConfig(formats, nil, "", "")
}

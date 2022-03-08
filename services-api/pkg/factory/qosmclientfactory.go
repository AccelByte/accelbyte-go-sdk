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

	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

var qosmClientInstance *qosmclient.JusticeQosmService

func NewQosmClient(configRepository repository.ConfigRepository) *qosmclient.JusticeQosmService {
	if qosmClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		xAmazonTraceId := utils.AmazonTraceIdGen()
		userAgent := utils.UserAgentGen()
		if len(baseUrl) > 0 {
			logrus.Infof("Base URL : %v", baseUrl)
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &qosmclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			qosmClientInstance = newCustomQosmHttpClientWithConfig(nil, httpClientConfig, userAgent, xAmazonTraceId)
		} else {
			qosmClientInstance = newCustomQosmHttpClient(nil)
		}

	}

	return qosmClientInstance
}

func newCustomQosmHttpClientWithConfig(formats strfmt.Registry, cfg *qosmclient.TransportConfig, userAgent, xAmazonTraceId string) *qosmclient.JusticeQosmService {
	if cfg == nil {
		cfg = qosmclient.DefaultTransportConfig()
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

	return qosmclient.New(transport, formats)
}

func newCustomQosmHttpClient(formats strfmt.Registry) *qosmclient.JusticeQosmService {
	return newCustomQosmHttpClientWithConfig(formats, nil, "", "")
}

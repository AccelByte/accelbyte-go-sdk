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

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

var leaderboardClientInstance *leaderboardclient.JusticeLeaderboardService

func NewLeaderboardClient(configRepository repository.ConfigRepository) *leaderboardclient.JusticeLeaderboardService {
	if leaderboardClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		xAmazonTraceId := utils.AmazonTraceIdGen()
		userAgent := utils.UserAgentGen()
		if len(baseUrl) > 0 {
			logrus.Infof("Base URL : %v", baseUrl)
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &leaderboardclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			leaderboardClientInstance = leaderboardclient.NewHTTPClientWithConfig(nil, httpClientConfig, userAgent, xAmazonTraceId)
		} else {
			leaderboardClientInstance = leaderboardclient.NewHTTPClient(nil)
		}
	}

	return leaderboardClientInstance
}

func newCustomLeaderboardHttpClientWithConfig(formats strfmt.Registry, cfg *leaderboardclient.TransportConfig, userAgent, xAmazonTraceId string) *leaderboardclient.JusticeLeaderboardService {
	if cfg == nil {
		cfg = leaderboardclient.DefaultTransportConfig()
	}

	transport := client.New(cfg.Host, cfg.BasePath, cfg.Schemes)
	// add unsupported mime type. Please see this open issue https://github.com/go-swagger/go-swagger/issues/1244 for more details.
	transport.Producers["*/*"] = runtime.JSONProducer()
	transport.Consumers["application/problem+json"] = runtime.JSONConsumer()
	transport.Consumers["application/x-www-form-urlencoded"] = runtime.JSONConsumer()
	transport.Consumers["application/zip"] = runtime.JSONConsumer()
	transport.Consumers["application/pdf"] = runtime.JSONConsumer()
	transport.Consumers["image/png"] = runtime.ByteStreamConsumer()

	// optional custom request header
	transport.Transport = utils.SetHeader(transport.Transport, userAgent, xAmazonTraceId)

	return leaderboardclient.New(transport, formats)
}

func newCustomLeaderboardHttpClient(formats strfmt.Registry) *leaderboardclient.JusticeLeaderboardService {
	return newCustomLeaderboardHttpClientWithConfig(formats, nil, "", "")
}

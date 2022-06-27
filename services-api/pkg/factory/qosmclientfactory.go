// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var qosmClientInstance *qosmclient.JusticeQosmService

func NewQosmClient(configRepository repository.ConfigRepository) *qosmclient.JusticeQosmService {
	if qosmClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &qosmclient.TransportConfig{
				Host:     baseURLSplit[1],
				BasePath: "",
				Schemes:  []string{baseURLSplit[0]},
			}
			qosmClientInstance = qosmclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			qosmClientInstance = qosmclient.NewHTTPClient(nil)
		}
	}

	return qosmClientInstance
}

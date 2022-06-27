// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var cloudsaveClientInstance *cloudsaveclient.JusticeCloudsaveService

func NewCloudsaveClient(configRepository repository.ConfigRepository) *cloudsaveclient.JusticeCloudsaveService {
	if cloudsaveClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &cloudsaveclient.TransportConfig{
				Host:     baseURLSplit[1],
				BasePath: "",
				Schemes:  []string{baseURLSplit[0]},
			}
			cloudsaveClientInstance = cloudsaveclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			cloudsaveClientInstance = cloudsaveclient.NewHTTPClient(nil)
		}
	}

	return cloudsaveClientInstance
}

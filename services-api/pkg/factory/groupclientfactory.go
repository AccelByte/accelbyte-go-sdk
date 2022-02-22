// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/sirupsen/logrus"
)

var groupClientInstance *groupclient.JusticeGroupService

func NewGroupClient(configRepository repository.ConfigRepository) *groupclient.JusticeGroupService {
	if groupClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		if len(baseUrl) > 0 {
			logrus.Infof("Base URL : %v", baseUrl)
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &groupclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			groupClientInstance = groupclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			groupClientInstance = groupclient.NewHTTPClient(nil)
		}

	}

	return groupClientInstance
}

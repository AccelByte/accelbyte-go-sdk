// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order_dedicated"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type OrderDedicatedService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (d *OrderDedicatedService) SyncOrders(input *order_dedicated.SyncOrdersParams) (*platformclientmodels.OrderSyncResult, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := d.Client.OrderDedicated.SyncOrders(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

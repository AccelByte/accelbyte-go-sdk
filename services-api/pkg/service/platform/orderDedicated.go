// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order_dedicated"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type OrderDedicatedService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (o *OrderDedicatedService) SyncOrders(input *order_dedicated.SyncOrdersParams) (*platformclientmodels.OrderSyncResult, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.OrderDedicated.SyncOrders(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderDedicatedService) SyncOrdersShort(input *order_dedicated.SyncOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderSyncResult, error) {
	ok, err := o.Client.OrderDedicated.SyncOrdersShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

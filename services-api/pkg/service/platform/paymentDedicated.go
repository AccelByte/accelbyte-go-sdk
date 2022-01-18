// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_dedicated"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type PaymentDedicatedService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (p *PaymentDedicatedService) CreatePaymentOrderByDedicated(input *payment_dedicated.CreatePaymentOrderByDedicatedParams)(*platformclientmodels.PaymentOrderCreateResult, error) {
    accessToken, err := p.TokenRepository.GetToken()
    if err != nil {
		return nil, err
	}
created, badRequest, forbidden, notFound, conflict, unprocessableEntity, err := p.Client.PaymentDedicated.CreatePaymentOrderByDedicated(input, client.BearerToken(*accessToken.AccessToken))
    if badRequest != nil {
		return nil, badRequest
    }
    if forbidden != nil {
		return nil, forbidden
    }
    if notFound != nil {
		return nil, notFound
    }
    if conflict != nil {
		return nil, conflict
    }
    if unprocessableEntity != nil {
		return nil, unprocessableEntity
    }
    if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (p *PaymentDedicatedService) RefundPaymentOrderByDedicated(input *payment_dedicated.RefundPaymentOrderByDedicatedParams)(*platformclientmodels.PaymentOrderRefundResult, error) {
    accessToken, err := p.TokenRepository.GetToken()
    if err != nil {
		return nil, err
	}
ok, noContent, notFound, conflict, unprocessableEntity, err := p.Client.PaymentDedicated.RefundPaymentOrderByDedicated(input, client.BearerToken(*accessToken.AccessToken))
    if noContent != nil {
		return nil, noContent
    }
    if notFound != nil {
		return nil, notFound
    }
    if conflict != nil {
		return nil, conflict
    }
    if unprocessableEntity != nil {
		return nil, unprocessableEntity
    }
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentDedicatedService) SyncPaymentOrders(input *payment_dedicated.SyncPaymentOrdersParams)(*platformclientmodels.PaymentOrderSyncResult, error) {
    accessToken, err := p.TokenRepository.GetToken()
    if err != nil {
		return nil, err
	}
ok, err := p.Client.PaymentDedicated.SyncPaymentOrders(input, client.BearerToken(*accessToken.AccessToken))
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentDedicatedService) CreatePaymentOrderByDedicatedShort(input *payment_dedicated.CreatePaymentOrderByDedicatedParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentOrderCreateResult, error) {
    created, err := p.Client.PaymentDedicated.CreatePaymentOrderByDedicatedShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (p *PaymentDedicatedService) RefundPaymentOrderByDedicatedShort(input *payment_dedicated.RefundPaymentOrderByDedicatedParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentOrderRefundResult, error) {
    ok, err := p.Client.PaymentDedicated.RefundPaymentOrderByDedicatedShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentDedicatedService) SyncPaymentOrdersShort(input *payment_dedicated.SyncPaymentOrdersParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentOrderSyncResult, error) {
    ok, err := p.Client.PaymentDedicated.SyncPaymentOrdersShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}


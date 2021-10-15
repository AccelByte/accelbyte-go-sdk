// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_dedicated"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type PaymentDedicatedService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (p *PaymentDedicatedService) CreatePaymentOrderByDedicated(input *payment_dedicated.CreatePaymentOrderByDedicatedParams) (*platformclientmodels.PaymentOrderCreateResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, forbidden, notFound, conflict, unprocessableEntity, err := p.Client.PaymentDedicated.CreatePaymentOrderByDedicated(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

func (p *PaymentDedicatedService) SyncPaymentOrders(input *payment_dedicated.SyncPaymentOrdersParams) (*platformclientmodels.PaymentOrderSyncResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentDedicated.SyncPaymentOrders(input, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentDedicatedService) RefundPaymentOrderByDedicated(input *payment_dedicated.RefundPaymentOrderByDedicatedParams) (*platformclientmodels.PaymentOrderRefundResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, noContent, notFound, conflict, unprocessableEntity, err := p.Client.PaymentDedicated.RefundPaymentOrderByDedicated(input, client.BearerToken(*accessToken.AccessToken))

	if noContent != nil {
		logrus.Error(noContent)
		return nil, noContent
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

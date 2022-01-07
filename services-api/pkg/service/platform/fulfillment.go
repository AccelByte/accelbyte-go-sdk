// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type FulfillmentService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use QueryFulfillmentHistoriesShort instead
func (f *FulfillmentService) QueryFulfillmentHistories(input *fulfillment.QueryFulfillmentHistoriesParams) (*platformclientmodels.FulfillmentHistoryPagingSlicedResult, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := f.Client.Fulfillment.QueryFulfillmentHistories(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use FulfillItemShort instead
func (f *FulfillmentService) FulfillItem(input *fulfillment.FulfillItemParams) (*platformclientmodels.FulfillmentResult, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := f.Client.Fulfillment.FulfillItem(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use RedeemCodeShort instead
func (f *FulfillmentService) RedeemCode(input *fulfillment.RedeemCodeParams) (*platformclientmodels.FulfillmentResult, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := f.Client.Fulfillment.RedeemCode(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicRedeemCodeShort instead
func (f *FulfillmentService) PublicRedeemCode(input *fulfillment.PublicRedeemCodeParams) (*platformclientmodels.FulfillmentResult, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := f.Client.Fulfillment.PublicRedeemCode(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FulfillmentService) QueryFulfillmentHistoriesShort(input *fulfillment.QueryFulfillmentHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.FulfillmentHistoryPagingSlicedResult, error) {
	ok, err := f.Client.Fulfillment.QueryFulfillmentHistoriesShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FulfillmentService) FulfillItemShort(input *fulfillment.FulfillItemParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.FulfillmentResult, error) {
	ok, err := f.Client.Fulfillment.FulfillItemShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FulfillmentService) RedeemCodeShort(input *fulfillment.RedeemCodeParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.FulfillmentResult, error) {
	ok, err := f.Client.Fulfillment.RedeemCodeShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FulfillmentService) PublicRedeemCodeShort(input *fulfillment.PublicRedeemCodeParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.FulfillmentResult, error) {
	ok, err := f.Client.Fulfillment.PublicRedeemCodeShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

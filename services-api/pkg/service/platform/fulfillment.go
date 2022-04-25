// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type FulfillmentService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use QueryFulfillmentHistoriesShort instead
func (f *FulfillmentService) QueryFulfillmentHistories(input *fulfillment.QueryFulfillmentHistoriesParams) (*platformclientmodels.FulfillmentHistoryPagingSlicedResult, error) {
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := f.Client.Fulfillment.QueryFulfillmentHistories(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use FulfillItemShort instead
func (f *FulfillmentService) FulfillItem(input *fulfillment.FulfillItemParams) (*platformclientmodels.FulfillmentResult, error) {
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := f.Client.Fulfillment.FulfillItem(input, client.BearerToken(*token.AccessToken))
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
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := f.Client.Fulfillment.RedeemCode(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use FulfillRewardsShort instead
func (f *FulfillmentService) FulfillRewards(input *fulfillment.FulfillRewardsParams) error {
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, conflict, err := f.Client.Fulfillment.FulfillRewards(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublicRedeemCodeShort instead
func (f *FulfillmentService) PublicRedeemCode(input *fulfillment.PublicRedeemCodeParams) (*platformclientmodels.FulfillmentResult, error) {
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := f.Client.Fulfillment.PublicRedeemCode(input, client.BearerToken(*token.AccessToken))
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

func (f *FulfillmentService) QueryFulfillmentHistoriesShort(input *fulfillment.QueryFulfillmentHistoriesParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FulfillmentHistoryPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.TokenRepository, nil, security, "")
	}
	ok, err := f.Client.Fulfillment.QueryFulfillmentHistoriesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (f *FulfillmentService) FulfillItemShort(input *fulfillment.FulfillItemParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FulfillmentResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.TokenRepository, nil, security, "")
	}
	ok, err := f.Client.Fulfillment.FulfillItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (f *FulfillmentService) RedeemCodeShort(input *fulfillment.RedeemCodeParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FulfillmentResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.TokenRepository, nil, security, "")
	}
	ok, err := f.Client.Fulfillment.RedeemCodeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (f *FulfillmentService) FulfillRewardsShort(input *fulfillment.FulfillRewardsParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.TokenRepository, nil, security, "")
	}
	_, err := f.Client.Fulfillment.FulfillRewardsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (f *FulfillmentService) PublicRedeemCodeShort(input *fulfillment.PublicRedeemCodeParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FulfillmentResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.TokenRepository, nil, security, "")
	}
	ok, err := f.Client.Fulfillment.PublicRedeemCodeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

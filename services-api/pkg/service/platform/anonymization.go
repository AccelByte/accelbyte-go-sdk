// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type AnonymizationService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// AnonymizeEntitlement anonymize entitlement
func (a *AnonymizationService) AnonymizeEntitlement(input *anonymization.AnonymizeEntitlementParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeEntitlement(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AnonymizeFulfillment anonymize fulfillment
func (a *AnonymizationService) AnonymizeFulfillment(input *anonymization.AnonymizeFulfillmentParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeFulfillment(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AnonymizeWallet anonymize wallet
func (a *AnonymizationService) AnonymizeWallet(input *anonymization.AnonymizeWalletParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeWallet(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (a *AnonymizationService) AnonymizeCampaign(input *anonymization.AnonymizeCampaignParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeCampaign(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (a *AnonymizationService) AnonymizeIntegration(input *anonymization.AnonymizeIntegrationParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeIntegration(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (a *AnonymizationService) AnonymizeOrder(input *anonymization.AnonymizeOrderParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeOrder(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (a *AnonymizationService) AnonymizePayment(input *anonymization.AnonymizePaymentParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizePayment(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (a *AnonymizationService) AnonymizeSubscription(input *anonymization.AnonymizeSubscriptionParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeSubscription(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

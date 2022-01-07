// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AnonymizationService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AnonymizeCampaignShort instead
func (a *AnonymizationService) AnonymizeCampaign(input *anonymization.AnonymizeCampaignParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeCampaign(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AnonymizeEntitlementShort instead
func (a *AnonymizationService) AnonymizeEntitlement(input *anonymization.AnonymizeEntitlementParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeEntitlement(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AnonymizeFulfillmentShort instead
func (a *AnonymizationService) AnonymizeFulfillment(input *anonymization.AnonymizeFulfillmentParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeFulfillment(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AnonymizeIntegrationShort instead
func (a *AnonymizationService) AnonymizeIntegration(input *anonymization.AnonymizeIntegrationParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeIntegration(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AnonymizeOrderShort instead
func (a *AnonymizationService) AnonymizeOrder(input *anonymization.AnonymizeOrderParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeOrder(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AnonymizePaymentShort instead
func (a *AnonymizationService) AnonymizePayment(input *anonymization.AnonymizePaymentParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizePayment(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AnonymizeSubscriptionShort instead
func (a *AnonymizationService) AnonymizeSubscription(input *anonymization.AnonymizeSubscriptionParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeSubscription(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AnonymizeWalletShort instead
func (a *AnonymizationService) AnonymizeWallet(input *anonymization.AnonymizeWalletParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeWallet(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) AnonymizeCampaignShort(input *anonymization.AnonymizeCampaignParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Anonymization.AnonymizeCampaignShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) AnonymizeEntitlementShort(input *anonymization.AnonymizeEntitlementParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Anonymization.AnonymizeEntitlementShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) AnonymizeFulfillmentShort(input *anonymization.AnonymizeFulfillmentParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Anonymization.AnonymizeFulfillmentShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) AnonymizeIntegrationShort(input *anonymization.AnonymizeIntegrationParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Anonymization.AnonymizeIntegrationShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) AnonymizeOrderShort(input *anonymization.AnonymizeOrderParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Anonymization.AnonymizeOrderShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) AnonymizePaymentShort(input *anonymization.AnonymizePaymentParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Anonymization.AnonymizePaymentShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) AnonymizeSubscriptionShort(input *anonymization.AnonymizeSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Anonymization.AnonymizeSubscriptionShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) AnonymizeWalletShort(input *anonymization.AnonymizeWalletParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Anonymization.AnonymizeWalletShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

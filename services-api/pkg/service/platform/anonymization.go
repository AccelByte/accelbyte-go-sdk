// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type AnonymizationService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AnonymizeCampaignShort instead
func (a *AnonymizationService) AnonymizeCampaign(input *anonymization.AnonymizeCampaignParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeCampaign(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AnonymizeEntitlementShort instead
func (a *AnonymizationService) AnonymizeEntitlement(input *anonymization.AnonymizeEntitlementParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeEntitlement(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AnonymizeFulfillmentShort instead
func (a *AnonymizationService) AnonymizeFulfillment(input *anonymization.AnonymizeFulfillmentParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeFulfillment(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AnonymizeIntegrationShort instead
func (a *AnonymizationService) AnonymizeIntegration(input *anonymization.AnonymizeIntegrationParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeIntegration(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AnonymizeOrderShort instead
func (a *AnonymizationService) AnonymizeOrder(input *anonymization.AnonymizeOrderParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeOrder(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AnonymizePaymentShort instead
func (a *AnonymizationService) AnonymizePayment(input *anonymization.AnonymizePaymentParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizePayment(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AnonymizeSubscriptionShort instead
func (a *AnonymizationService) AnonymizeSubscription(input *anonymization.AnonymizeSubscriptionParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeSubscription(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AnonymizeWalletShort instead
func (a *AnonymizationService) AnonymizeWallet(input *anonymization.AnonymizeWalletParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AnonymizeWallet(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (a *AnonymizationService) AnonymizeCampaignShort(input *anonymization.AnonymizeCampaignParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := a.Client.Anonymization.AnonymizeCampaignShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AnonymizationService) AnonymizeEntitlementShort(input *anonymization.AnonymizeEntitlementParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := a.Client.Anonymization.AnonymizeEntitlementShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AnonymizationService) AnonymizeFulfillmentShort(input *anonymization.AnonymizeFulfillmentParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := a.Client.Anonymization.AnonymizeFulfillmentShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AnonymizationService) AnonymizeIntegrationShort(input *anonymization.AnonymizeIntegrationParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := a.Client.Anonymization.AnonymizeIntegrationShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AnonymizationService) AnonymizeOrderShort(input *anonymization.AnonymizeOrderParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := a.Client.Anonymization.AnonymizeOrderShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AnonymizationService) AnonymizePaymentShort(input *anonymization.AnonymizePaymentParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := a.Client.Anonymization.AnonymizePaymentShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AnonymizationService) AnonymizeSubscriptionShort(input *anonymization.AnonymizeSubscriptionParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := a.Client.Anonymization.AnonymizeSubscriptionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AnonymizationService) AnonymizeWalletShort(input *anonymization.AnonymizeWalletParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := a.Client.Anonymization.AnonymizeWalletShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

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
	Client                 *platformclient.JusticePlatformService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *AnonymizationService) GetAuthSession() auth.Session {
	if aaa.RefreshTokenRepository != nil {
		return auth.Session{
			aaa.TokenRepository,
			aaa.ConfigRepository,
			aaa.RefreshTokenRepository,
		}
	}

	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: 2022-01-10 - please use AnonymizeCampaignShort instead.
func (aaa *AnonymizationService) AnonymizeCampaign(input *anonymization.AnonymizeCampaignParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.Anonymization.AnonymizeCampaign(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AnonymizeEntitlementShort instead.
func (aaa *AnonymizationService) AnonymizeEntitlement(input *anonymization.AnonymizeEntitlementParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.Anonymization.AnonymizeEntitlement(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AnonymizeFulfillmentShort instead.
func (aaa *AnonymizationService) AnonymizeFulfillment(input *anonymization.AnonymizeFulfillmentParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.Anonymization.AnonymizeFulfillment(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AnonymizeIntegrationShort instead.
func (aaa *AnonymizationService) AnonymizeIntegration(input *anonymization.AnonymizeIntegrationParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.Anonymization.AnonymizeIntegration(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AnonymizeOrderShort instead.
func (aaa *AnonymizationService) AnonymizeOrder(input *anonymization.AnonymizeOrderParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.Anonymization.AnonymizeOrder(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AnonymizePaymentShort instead.
func (aaa *AnonymizationService) AnonymizePayment(input *anonymization.AnonymizePaymentParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.Anonymization.AnonymizePayment(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AnonymizeRevocationShort instead.
func (aaa *AnonymizationService) AnonymizeRevocation(input *anonymization.AnonymizeRevocationParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.Anonymization.AnonymizeRevocation(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AnonymizeSubscriptionShort instead.
func (aaa *AnonymizationService) AnonymizeSubscription(input *anonymization.AnonymizeSubscriptionParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.Anonymization.AnonymizeSubscription(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AnonymizeWalletShort instead.
func (aaa *AnonymizationService) AnonymizeWallet(input *anonymization.AnonymizeWalletParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.Anonymization.AnonymizeWallet(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AnonymizationService) AnonymizeCampaignShort(input *anonymization.AnonymizeCampaignParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Anonymization.AnonymizeCampaignShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AnonymizationService) AnonymizeEntitlementShort(input *anonymization.AnonymizeEntitlementParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Anonymization.AnonymizeEntitlementShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AnonymizationService) AnonymizeFulfillmentShort(input *anonymization.AnonymizeFulfillmentParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Anonymization.AnonymizeFulfillmentShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AnonymizationService) AnonymizeIntegrationShort(input *anonymization.AnonymizeIntegrationParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Anonymization.AnonymizeIntegrationShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AnonymizationService) AnonymizeOrderShort(input *anonymization.AnonymizeOrderParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Anonymization.AnonymizeOrderShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AnonymizationService) AnonymizePaymentShort(input *anonymization.AnonymizePaymentParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Anonymization.AnonymizePaymentShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AnonymizationService) AnonymizeRevocationShort(input *anonymization.AnonymizeRevocationParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Anonymization.AnonymizeRevocationShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AnonymizationService) AnonymizeSubscriptionShort(input *anonymization.AnonymizeSubscriptionParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Anonymization.AnonymizeSubscriptionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AnonymizationService) AnonymizeWalletShort(input *anonymization.AnonymizeWalletParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Anonymization.AnonymizeWalletShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

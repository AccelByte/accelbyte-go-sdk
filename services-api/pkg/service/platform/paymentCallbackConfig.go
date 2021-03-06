// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_callback_config"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type PaymentCallbackConfigService struct {
	Client                 *platformclient.JusticePlatformService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (p *PaymentCallbackConfigService) GetAuthSession() auth.Session {
	if p.RefreshTokenRepository != nil {
		return auth.Session{
			p.TokenRepository,
			p.ConfigRepository,
			p.RefreshTokenRepository,
		}
	}

	return auth.Session{
		p.TokenRepository,
		p.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use GetPaymentCallbackConfigShort instead
func (p *PaymentCallbackConfigService) GetPaymentCallbackConfig(input *payment_callback_config.GetPaymentCallbackConfigParams) (*platformclientmodels.PaymentCallbackConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentCallbackConfig.GetPaymentCallbackConfig(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdatePaymentCallbackConfigShort instead
func (p *PaymentCallbackConfigService) UpdatePaymentCallbackConfig(input *payment_callback_config.UpdatePaymentCallbackConfigParams) (*platformclientmodels.PaymentCallbackConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentCallbackConfig.UpdatePaymentCallbackConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PaymentCallbackConfigService) GetPaymentCallbackConfigShort(input *payment_callback_config.GetPaymentCallbackConfigParams) (*platformclientmodels.PaymentCallbackConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  p.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := p.Client.PaymentCallbackConfig.GetPaymentCallbackConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PaymentCallbackConfigService) UpdatePaymentCallbackConfigShort(input *payment_callback_config.UpdatePaymentCallbackConfigParams) (*platformclientmodels.PaymentCallbackConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  p.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := p.Client.PaymentCallbackConfig.UpdatePaymentCallbackConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

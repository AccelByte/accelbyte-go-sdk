// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_account"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type PaymentAccountService struct {
	Client                 *platformclient.JusticePlatformService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (p *PaymentAccountService) GetAuthSession() auth.Session {
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

// Deprecated: Use PublicGetPaymentAccountsShort instead
func (p *PaymentAccountService) PublicGetPaymentAccounts(input *payment_account.PublicGetPaymentAccountsParams) ([]*platformclientmodels.PaymentAccount, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentAccount.PublicGetPaymentAccounts(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicDeletePaymentAccountShort instead
func (p *PaymentAccountService) PublicDeletePaymentAccount(input *payment_account.PublicDeletePaymentAccountParams) error {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = p.Client.PaymentAccount.PublicDeletePaymentAccount(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (p *PaymentAccountService) PublicGetPaymentAccountsShort(input *payment_account.PublicGetPaymentAccountsParams) ([]*platformclientmodels.PaymentAccount, error) {
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

	ok, err := p.Client.PaymentAccount.PublicGetPaymentAccountsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PaymentAccountService) PublicDeletePaymentAccountShort(input *payment_account.PublicDeletePaymentAccountParams) error {
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

	_, err := p.Client.PaymentAccount.PublicDeletePaymentAccountShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_account"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type PaymentAccountService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (p *PaymentAccountService) PublicGetPaymentAccounts(input *payment_account.PublicGetPaymentAccountsParams)([]*platformclientmodels.PaymentAccount, error) {
    accessToken, err := p.TokenRepository.GetToken()
    if err != nil {
		return nil, err
	}
ok, err := p.Client.PaymentAccount.PublicGetPaymentAccounts(input, client.BearerToken(*accessToken.AccessToken))
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentAccountService) PublicDeletePaymentAccount(input *payment_account.PublicDeletePaymentAccountParams) error {
	accessToken, err := p.TokenRepository.GetToken()
    if err != nil {
		return err
	}
    _, err = p.Client.PaymentAccount.PublicDeletePaymentAccount(input, client.BearerToken(*accessToken.AccessToken))
    if err != nil {
		return err
	}
	return nil
}

func (p *PaymentAccountService) PublicGetPaymentAccountsShort(input *payment_account.PublicGetPaymentAccountsParams, authInfo runtime.ClientAuthInfoWriter)([]*platformclientmodels.PaymentAccount, error) {
    ok, err := p.Client.PaymentAccount.PublicGetPaymentAccountsShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentAccountService) PublicDeletePaymentAccountShort(input *payment_account.PublicDeletePaymentAccountParams, authInfo runtime.ClientAuthInfoWriter) error {
    _, err := p.Client.PaymentAccount.PublicDeletePaymentAccountShort(input, authInfo)
    if err != nil {
		return err
	}
	return nil
}


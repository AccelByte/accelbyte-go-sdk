package service

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_account"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type PaymentAccount struct {
	PlatformServiceClient *platformclient.JusticePlatformService
	TokenRepository       repository.TokenRepository
}

func (p *PaymentAccount) PublicGetPaymentAccounts(namespace, userId string) ([]*platformclientmodels.PaymentAccount, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_account.PublicGetPaymentAccountsParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, err := p.PlatformServiceClient.PaymentAccount.PublicGetPaymentAccounts(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentAccount) PublicDeletePaymentAccount(namespace, userId, id, paymentAccountType string) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &payment_account.PublicDeletePaymentAccountParams{
		ID:        id,
		Namespace: namespace,
		Type:      paymentAccountType,
		UserID:    userId,
	}
	_, err = p.PlatformServiceClient.PaymentAccount.PublicDeletePaymentAccount(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_account"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type PaymentAccount struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (p *PaymentAccount) PublicGetPaymentAccounts(input *payment_account.PublicGetPaymentAccountsParams) ([]*platformclientmodels.PaymentAccount, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentAccount.PublicGetPaymentAccounts(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentAccount) PublicDeletePaymentAccount(input *payment_account.PublicDeletePaymentAccountParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = p.Client.PaymentAccount.PublicDeletePaymentAccount(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

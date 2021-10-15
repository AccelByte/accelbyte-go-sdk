package platform

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/currency"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type CurrencyService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (c *CurrencyService) ListCurrencies(input *currency.ListCurrenciesParams) ([]*platformclientmodels.CurrencyInfo, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	currencies, err := c.Client.Currency.ListCurrencies(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return currencies.GetPayload(), nil
}

func (c *CurrencyService) CreateCurrency(input *currency.CreateCurrencyParams) (*platformclientmodels.CurrencyInfo, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, conflict, unprocessableEntity, err := c.Client.Currency.CreateCurrency(input, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CurrencyService) GetCurrencySummary(input *currency.GetCurrencySummaryParams) (*platformclientmodels.CurrencySummary, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	currencySummary, notFound, err := c.Client.Currency.GetCurrencySummary(input, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return currencySummary.GetPayload(), nil
}

func (c *CurrencyService) UpdateCurrency(input *currency.UpdateCurrencyParams) (*platformclientmodels.CurrencyInfo, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, unprocessableEntity, err := c.Client.Currency.UpdateCurrency(input, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CurrencyService) DeleteCurrency(input *currency.DeleteCurrencyParams) (*platformclientmodels.CurrencyInfo, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := c.Client.Currency.DeleteCurrency(input, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CurrencyService) GetCurrencyConfig(input *currency.GetCurrencyConfigParams) (*platformclientmodels.CurrencyConfig, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := c.Client.Currency.GetCurrencyConfig(input, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CurrencyService) PublicListCurrencies(input *currency.PublicListCurrenciesParams) ([]*platformclientmodels.CurrencyInfo, error) {
	ok, err := c.Client.Currency.PublicListCurrencies(input)

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

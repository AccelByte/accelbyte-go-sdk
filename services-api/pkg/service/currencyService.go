package service

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
	PlatformServiceClient *platformclient.JusticePlatformService
	TokenRepository       repository.TokenRepository
}

func (c *CurrencyService) ListCurrencies(namespace string) ([]*platformclientmodels.CurrencyInfo, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &currency.ListCurrenciesParams{
		Namespace: namespace,
	}
	currencies, err := c.PlatformServiceClient.Currency.ListCurrencies(params, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return currencies.GetPayload(), nil
}

func (c *CurrencyService) CreateCurrency(namespace string, body *platformclientmodels.CurrencyCreate) (*platformclientmodels.CurrencyInfo, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &currency.CreateCurrencyParams{
		Body:      body,
		Namespace: namespace,
	}
	ok, conflict, unprocessableEntity, err := c.PlatformServiceClient.Currency.CreateCurrency(params, client.BearerToken(*accessToken.AccessToken))

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

func (c *CurrencyService) GetCurrencySummary(namespace, currencyCode string) (*platformclientmodels.CurrencySummary, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &currency.GetCurrencySummaryParams{
		CurrencyCode: currencyCode,
		Namespace:    namespace,
	}
	currencySummary, notFound, err := c.PlatformServiceClient.Currency.GetCurrencySummary(params, client.BearerToken(*accessToken.AccessToken))

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

func (c *CurrencyService) UpdateCurrency(namespace, currencyCode string, content *platformclientmodels.CurrencyUpdate) (*platformclientmodels.CurrencyInfo, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &currency.UpdateCurrencyParams{
		Body:         content,
		CurrencyCode: currencyCode,
		Namespace:    namespace,
	}
	ok, notFound, unprocessableEntity, err := c.PlatformServiceClient.Currency.UpdateCurrency(params, client.BearerToken(*accessToken.AccessToken))

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

func (c *CurrencyService) DeleteCurrency(namespace, currencyCode string) (*platformclientmodels.CurrencyInfo, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &currency.DeleteCurrencyParams{
		CurrencyCode: currencyCode,
		Namespace:    namespace,
	}
	ok, notFound, err := c.PlatformServiceClient.Currency.DeleteCurrency(params, client.BearerToken(*accessToken.AccessToken))

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

func (c *CurrencyService) GetCurrencyConfig(namespace, currencyCode string) (*platformclientmodels.CurrencyConfig, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &currency.GetCurrencyConfigParams{
		CurrencyCode: currencyCode,
		Namespace:    namespace,
	}
	ok, notFound, err := c.PlatformServiceClient.Currency.GetCurrencyConfig(params, client.BearerToken(*accessToken.AccessToken))

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

func (c *CurrencyService) PublicListCurrencies(namespace string) ([]*platformclientmodels.CurrencyInfo, error) {
	params := &currency.PublicListCurrenciesParams{
		Namespace: namespace,
	}
	ok, err := c.PlatformServiceClient.Currency.PublicListCurrencies(params)

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

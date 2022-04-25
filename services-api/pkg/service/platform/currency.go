// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/currency"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type CurrencyService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use ListCurrenciesShort instead
func (c *CurrencyService) ListCurrencies(input *currency.ListCurrenciesParams) ([]*platformclientmodels.CurrencyInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.Currency.ListCurrencies(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateCurrencyShort instead
func (c *CurrencyService) CreateCurrency(input *currency.CreateCurrencyParams) (*platformclientmodels.CurrencyInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, conflict, unprocessableEntity, err := c.Client.Currency.CreateCurrency(input, client.BearerToken(*token.AccessToken))
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateCurrencyShort instead
func (c *CurrencyService) UpdateCurrency(input *currency.UpdateCurrencyParams) (*platformclientmodels.CurrencyInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, unprocessableEntity, err := c.Client.Currency.UpdateCurrency(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteCurrencyShort instead
func (c *CurrencyService) DeleteCurrency(input *currency.DeleteCurrencyParams) (*platformclientmodels.CurrencyInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := c.Client.Currency.DeleteCurrency(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetCurrencyConfigShort instead
func (c *CurrencyService) GetCurrencyConfig(input *currency.GetCurrencyConfigParams) (*platformclientmodels.CurrencyConfig, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := c.Client.Currency.GetCurrencyConfig(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetCurrencySummaryShort instead
func (c *CurrencyService) GetCurrencySummary(input *currency.GetCurrencySummaryParams) (*platformclientmodels.CurrencySummary, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := c.Client.Currency.GetCurrencySummary(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicListCurrenciesShort instead
func (c *CurrencyService) PublicListCurrencies(input *currency.PublicListCurrenciesParams) ([]*platformclientmodels.CurrencyInfo, error) {
	ok, err := c.Client.Currency.PublicListCurrencies(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CurrencyService) ListCurrenciesShort(input *currency.ListCurrenciesParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*platformclientmodels.CurrencyInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Currency.ListCurrenciesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CurrencyService) CreateCurrencyShort(input *currency.CreateCurrencyParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.CurrencyInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Currency.CreateCurrencyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CurrencyService) UpdateCurrencyShort(input *currency.UpdateCurrencyParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.CurrencyInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Currency.UpdateCurrencyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CurrencyService) DeleteCurrencyShort(input *currency.DeleteCurrencyParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.CurrencyInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Currency.DeleteCurrencyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CurrencyService) GetCurrencyConfigShort(input *currency.GetCurrencyConfigParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.CurrencyConfig, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Currency.GetCurrencyConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CurrencyService) GetCurrencySummaryShort(input *currency.GetCurrencySummaryParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.CurrencySummary, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Currency.GetCurrencySummaryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CurrencyService) PublicListCurrenciesShort(input *currency.PublicListCurrenciesParams) ([]*platformclientmodels.CurrencyInfo, error) {
	ok, err := c.Client.Currency.PublicListCurrenciesShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

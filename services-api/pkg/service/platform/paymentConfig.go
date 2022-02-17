// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type PaymentConfigService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use TestAdyenConfigShort instead
func (p *PaymentConfigService) TestAdyenConfig(input *payment_config.TestAdyenConfigParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestAdyenConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use TestAliPayConfigShort instead
func (p *PaymentConfigService) TestAliPayConfig(input *payment_config.TestAliPayConfigParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestAliPayConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use TestCheckoutConfigShort instead
func (p *PaymentConfigService) TestCheckoutConfig(input *payment_config.TestCheckoutConfigParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestCheckoutConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use DebugMatchedPaymentMerchantConfigShort instead
func (p *PaymentConfigService) DebugMatchedPaymentMerchantConfig(input *payment_config.DebugMatchedPaymentMerchantConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.DebugMatchedPaymentMerchantConfig(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use TestPayPalConfigShort instead
func (p *PaymentConfigService) TestPayPalConfig(input *payment_config.TestPayPalConfigParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestPayPalConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use TestStripeConfigShort instead
func (p *PaymentConfigService) TestStripeConfig(input *payment_config.TestStripeConfigParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestStripeConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use TestWxPayConfigShort instead
func (p *PaymentConfigService) TestWxPayConfig(input *payment_config.TestWxPayConfigParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestWxPayConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use TestXsollaConfigShort instead
func (p *PaymentConfigService) TestXsollaConfig(input *payment_config.TestXsollaConfigParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestXsollaConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetPaymentMerchantConfigShort instead
func (p *PaymentConfigService) GetPaymentMerchantConfig(input *payment_config.GetPaymentMerchantConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.GetPaymentMerchantConfig(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateAdyenConfigShort instead
func (p *PaymentConfigService) UpdateAdyenConfig(input *payment_config.UpdateAdyenConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateAdyenConfig(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use TestAdyenConfigByIDShort instead
func (p *PaymentConfigService) TestAdyenConfigByID(input *payment_config.TestAdyenConfigByIDParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.TestAdyenConfigByID(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateAliPayConfigShort instead
func (p *PaymentConfigService) UpdateAliPayConfig(input *payment_config.UpdateAliPayConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateAliPayConfig(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use TestAliPayConfigByIDShort instead
func (p *PaymentConfigService) TestAliPayConfigByID(input *payment_config.TestAliPayConfigByIDParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.TestAliPayConfigByID(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateCheckoutConfigShort instead
func (p *PaymentConfigService) UpdateCheckoutConfig(input *payment_config.UpdateCheckoutConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateCheckoutConfig(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use TestCheckoutConfigByIDShort instead
func (p *PaymentConfigService) TestCheckoutConfigByID(input *payment_config.TestCheckoutConfigByIDParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.TestCheckoutConfigByID(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdatePayPalConfigShort instead
func (p *PaymentConfigService) UpdatePayPalConfig(input *payment_config.UpdatePayPalConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdatePayPalConfig(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use TestPayPalConfigByIDShort instead
func (p *PaymentConfigService) TestPayPalConfigByID(input *payment_config.TestPayPalConfigByIDParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.TestPayPalConfigByID(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateStripeConfigShort instead
func (p *PaymentConfigService) UpdateStripeConfig(input *payment_config.UpdateStripeConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateStripeConfig(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use TestStripeConfigByIDShort instead
func (p *PaymentConfigService) TestStripeConfigByID(input *payment_config.TestStripeConfigByIDParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.TestStripeConfigByID(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateWxPayConfigShort instead
func (p *PaymentConfigService) UpdateWxPayConfig(input *payment_config.UpdateWxPayConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateWxPayConfig(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateWxPayConfigCertShort instead
func (p *PaymentConfigService) UpdateWxPayConfigCert(input *payment_config.UpdateWxPayConfigCertParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateWxPayConfigCert(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use TestWxPayConfigByIDShort instead
func (p *PaymentConfigService) TestWxPayConfigByID(input *payment_config.TestWxPayConfigByIDParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.TestWxPayConfigByID(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateXsollaConfigShort instead
func (p *PaymentConfigService) UpdateXsollaConfig(input *payment_config.UpdateXsollaConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateXsollaConfig(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use TestXsollaConfigByIDShort instead
func (p *PaymentConfigService) TestXsollaConfigByID(input *payment_config.TestXsollaConfigByIDParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.TestXsollaConfigByID(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateXsollaUIConfigShort instead
func (p *PaymentConfigService) UpdateXsollaUIConfig(input *payment_config.UpdateXsollaUIConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateXsollaUIConfig(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use QueryPaymentProviderConfigShort instead
func (p *PaymentConfigService) QueryPaymentProviderConfig(input *payment_config.QueryPaymentProviderConfigParams) (*platformclientmodels.PaymentProviderConfigPagingSlicedResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.QueryPaymentProviderConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use CreatePaymentProviderConfigShort instead
func (p *PaymentConfigService) CreatePaymentProviderConfig(input *payment_config.CreatePaymentProviderConfigParams) (*platformclientmodels.PaymentProviderConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, conflict, unprocessableEntity, err := p.Client.PaymentConfig.CreatePaymentProviderConfig(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
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

// Deprecated: Use GetAggregatePaymentProvidersShort instead
func (p *PaymentConfigService) GetAggregatePaymentProviders(input *payment_config.GetAggregatePaymentProvidersParams) ([]string, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.GetAggregatePaymentProviders(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use DebugMatchedPaymentProviderConfigShort instead
func (p *PaymentConfigService) DebugMatchedPaymentProviderConfig(input *payment_config.DebugMatchedPaymentProviderConfigParams) (*platformclientmodels.PaymentProviderConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.DebugMatchedPaymentProviderConfig(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetSpecialPaymentProvidersShort instead
func (p *PaymentConfigService) GetSpecialPaymentProviders(input *payment_config.GetSpecialPaymentProvidersParams) ([]string, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.GetSpecialPaymentProviders(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdatePaymentProviderConfigShort instead
func (p *PaymentConfigService) UpdatePaymentProviderConfig(input *payment_config.UpdatePaymentProviderConfigParams) (*platformclientmodels.PaymentProviderConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := p.Client.PaymentConfig.UpdatePaymentProviderConfig(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
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

// Deprecated: Use DeletePaymentProviderConfigShort instead
func (p *PaymentConfigService) DeletePaymentProviderConfig(input *payment_config.DeletePaymentProviderConfigParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := p.Client.PaymentConfig.DeletePaymentProviderConfig(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use GetPaymentTaxConfigShort instead
func (p *PaymentConfigService) GetPaymentTaxConfig(input *payment_config.GetPaymentTaxConfigParams) (*platformclientmodels.PaymentTaxConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.GetPaymentTaxConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdatePaymentTaxConfigShort instead
func (p *PaymentConfigService) UpdatePaymentTaxConfig(input *payment_config.UpdatePaymentTaxConfigParams) (*platformclientmodels.PaymentTaxConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unprocessableEntity, err := p.Client.PaymentConfig.UpdatePaymentTaxConfig(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestAdyenConfigShort(input *payment_config.TestAdyenConfigParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestAdyenConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestAliPayConfigShort(input *payment_config.TestAliPayConfigParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestAliPayConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestCheckoutConfigShort(input *payment_config.TestCheckoutConfigParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestCheckoutConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) DebugMatchedPaymentMerchantConfigShort(input *payment_config.DebugMatchedPaymentMerchantConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.DebugMatchedPaymentMerchantConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestPayPalConfigShort(input *payment_config.TestPayPalConfigParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestPayPalConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestStripeConfigShort(input *payment_config.TestStripeConfigParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestStripeConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestWxPayConfigShort(input *payment_config.TestWxPayConfigParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestWxPayConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestXsollaConfigShort(input *payment_config.TestXsollaConfigParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestXsollaConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) GetPaymentMerchantConfigShort(input *payment_config.GetPaymentMerchantConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.GetPaymentMerchantConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateAdyenConfigShort(input *payment_config.UpdateAdyenConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.UpdateAdyenConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestAdyenConfigByIDShort(input *payment_config.TestAdyenConfigByIDParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestAdyenConfigByIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateAliPayConfigShort(input *payment_config.UpdateAliPayConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.UpdateAliPayConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestAliPayConfigByIDShort(input *payment_config.TestAliPayConfigByIDParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestAliPayConfigByIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateCheckoutConfigShort(input *payment_config.UpdateCheckoutConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.UpdateCheckoutConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestCheckoutConfigByIDShort(input *payment_config.TestCheckoutConfigByIDParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestCheckoutConfigByIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdatePayPalConfigShort(input *payment_config.UpdatePayPalConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.UpdatePayPalConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestPayPalConfigByIDShort(input *payment_config.TestPayPalConfigByIDParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestPayPalConfigByIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateStripeConfigShort(input *payment_config.UpdateStripeConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.UpdateStripeConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestStripeConfigByIDShort(input *payment_config.TestStripeConfigByIDParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestStripeConfigByIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateWxPayConfigShort(input *payment_config.UpdateWxPayConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.UpdateWxPayConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateWxPayConfigCertShort(input *payment_config.UpdateWxPayConfigCertParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.UpdateWxPayConfigCertShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestWxPayConfigByIDShort(input *payment_config.TestWxPayConfigByIDParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestWxPayConfigByIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateXsollaConfigShort(input *payment_config.UpdateXsollaConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.UpdateXsollaConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestXsollaConfigByIDShort(input *payment_config.TestXsollaConfigByIDParams) (*platformclientmodels.TestResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestXsollaConfigByIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateXsollaUIConfigShort(input *payment_config.UpdateXsollaUIConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.UpdateXsollaUIConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) QueryPaymentProviderConfigShort(input *payment_config.QueryPaymentProviderConfigParams) (*platformclientmodels.PaymentProviderConfigPagingSlicedResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.QueryPaymentProviderConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) CreatePaymentProviderConfigShort(input *payment_config.CreatePaymentProviderConfigParams) (*platformclientmodels.PaymentProviderConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.CreatePaymentProviderConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) GetAggregatePaymentProvidersShort(input *payment_config.GetAggregatePaymentProvidersParams) ([]string, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.GetAggregatePaymentProvidersShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) DebugMatchedPaymentProviderConfigShort(input *payment_config.DebugMatchedPaymentProviderConfigParams) (*platformclientmodels.PaymentProviderConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.DebugMatchedPaymentProviderConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) GetSpecialPaymentProvidersShort(input *payment_config.GetSpecialPaymentProvidersParams) ([]string, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.GetSpecialPaymentProvidersShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdatePaymentProviderConfigShort(input *payment_config.UpdatePaymentProviderConfigParams) (*platformclientmodels.PaymentProviderConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.UpdatePaymentProviderConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) DeletePaymentProviderConfigShort(input *payment_config.DeletePaymentProviderConfigParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = p.Client.PaymentConfig.DeletePaymentProviderConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (p *PaymentConfigService) GetPaymentTaxConfigShort(input *payment_config.GetPaymentTaxConfigParams) (*platformclientmodels.PaymentTaxConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.GetPaymentTaxConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdatePaymentTaxConfigShort(input *payment_config.UpdatePaymentTaxConfigParams) (*platformclientmodels.PaymentTaxConfigInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.UpdatePaymentTaxConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

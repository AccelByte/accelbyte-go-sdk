package service

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type PaymentConfig struct {
	PlatformServiceClient *platformclient.JusticePlatformService
	TokenRepository       repository.TokenRepository
}

func (p *PaymentConfig) UpdateCheckoutConfig(id string, sandbox, validate *bool, content *platformclientmodels.CheckoutConfig) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.UpdateCheckoutConfigParams{
		Body:     content,
		ID:       id,
		Sandbox:  sandbox,
		Validate: validate,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.UpdateCheckoutConfig(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) DebugMatchedPaymentMerchantConfig(namespace, region *string) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.DebugMatchedPaymentMerchantConfigParams{
		Namespace: namespace,
		Region:    region,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.DebugMatchedPaymentMerchantConfig(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) DebugMatchedPaymentProviderConfig(namespace, region *string) (*platformclientmodels.PaymentProviderConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.DebugMatchedPaymentProviderConfigParams{
		Namespace: namespace,
		Region:    region,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.DebugMatchedPaymentProviderConfig(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestCheckoutConfig(content *platformclientmodels.CheckoutConfig, sandbox *bool) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.TestCheckoutConfigParams{
		Body:    content,
		Sandbox: sandbox,
	}
	ok, err := p.PlatformServiceClient.PaymentConfig.TestCheckoutConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) TestAdyenConfig(content *platformclientmodels.AdyenConfig, sandbox *bool) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.TestAdyenConfigParams{
		Body:    content,
		Sandbox: sandbox,
	}
	ok, err := p.PlatformServiceClient.PaymentConfig.TestAdyenConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) GetPaymentMerchantConfig(id string) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.GetPaymentMerchantConfigParams{
		ID: id,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.GetPaymentMerchantConfig(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestStripeConfigByID(id string, sandbox *bool) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.TestStripeConfigByIDParams{
		ID:      id,
		Sandbox: sandbox,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.TestStripeConfigByID(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestStripeConfig(content *platformclientmodels.StripeConfig, sandbox *bool) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.TestStripeConfigParams{
		Body:    content,
		Sandbox: sandbox,
	}
	ok, err := p.PlatformServiceClient.PaymentConfig.TestStripeConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) TestWxPayConfigByID(id string) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.TestWxPayConfigByIDParams{
		ID: id,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.TestWxPayConfigByID(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) UpdateStripeConfig(id string, sandbox, validate *bool, content *platformclientmodels.StripeConfig) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.UpdateStripeConfigParams{
		Body:     content,
		ID:       id,
		Sandbox:  sandbox,
		Validate: validate,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.UpdateStripeConfig(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) UpdateAdyenConfig(id string, sandbox, validate *bool, content *platformclientmodels.AdyenConfig) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.UpdateAdyenConfigParams{
		Body:     content,
		ID:       id,
		Sandbox:  sandbox,
		Validate: validate,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.UpdateAdyenConfig(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestCheckoutConfigByID(id string) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.TestCheckoutConfigByIDParams{
		ID: id,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.TestCheckoutConfigByID(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) UpdateAliPayConfig(id string, sandbox, validate *bool, content *platformclientmodels.AliPayConfig) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.UpdateAliPayConfigParams{
		Body:     content,
		ID:       id,
		Sandbox:  sandbox,
		Validate: validate,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.UpdateAliPayConfig(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) UpdateWxPayConfig(id string, validate *bool, content *platformclientmodels.WxPayConfigRequest) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.UpdateWxPayConfigParams{
		Body:     content,
		ID:       id,
		Validate: validate,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.UpdateWxPayConfig(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestPayPalConfig(content *platformclientmodels.PayPalConfig, sandbox *bool) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.TestPayPalConfigParams{
		Body:    content,
		Sandbox: sandbox,
	}
	ok, err := p.PlatformServiceClient.PaymentConfig.TestPayPalConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) TestAliPayConfigByID(id string, sandbox *bool) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.TestAliPayConfigByIDParams{
		ID:      id,
		Sandbox: sandbox,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.TestAliPayConfigByID(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestAdyenConfigByID(id string, sandbox *bool) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.TestAdyenConfigByIDParams{
		ID:      id,
		Sandbox: sandbox,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.TestAdyenConfigByID(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) UpdateXsollaConfig(id string, validate *bool, content *platformclientmodels.XsollaConfig) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.UpdateXsollaConfigParams{
		Body:     content,
		ID:       id,
		Validate: validate,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.UpdateXsollaConfig(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestPayPalConfigByID(id string, sandbox *bool) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.TestPayPalConfigByIDParams{
		ID:      id,
		Sandbox: sandbox,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.TestPayPalConfigByID(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestXsollaConfig(content *platformclientmodels.XsollaConfig) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.TestXsollaConfigParams{
		Body: content,
	}
	ok, err := p.PlatformServiceClient.PaymentConfig.TestXsollaConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) UpdateWxPayConfigCert(id string, file runtime.NamedReadCloser) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.UpdateWxPayConfigCertParams{
		File: file,
		ID:   id,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.UpdateWxPayConfigCert(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestWxPayConfig(content *platformclientmodels.WxPayConfigRequest) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.TestWxPayConfigParams{
		Body: content,
	}
	ok, err := p.PlatformServiceClient.PaymentConfig.TestWxPayConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) TestAliPayConfig(content *platformclientmodels.AliPayConfig, sandbox *bool) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.TestAliPayConfigParams{
		Body:    content,
		Sandbox: sandbox,
	}
	ok, err := p.PlatformServiceClient.PaymentConfig.TestAliPayConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) UpdateXsollaUIConfig(id string, content *platformclientmodels.XsollaPaywallConfigRequest) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.UpdateXsollaUIConfigParams{
		Body: content,
		ID:   id,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.UpdateXsollaUIConfig(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) UpdatePayPalConfig(id string, sandbox, validate *bool, content *platformclientmodels.PayPalConfig) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.UpdatePayPalConfigParams{
		Body:     content,
		ID:       id,
		Sandbox:  sandbox,
		Validate: validate,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.UpdatePayPalConfig(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestXsollaConfigByID(id string) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.TestXsollaConfigByIDParams{
		ID: id,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentConfig.TestXsollaConfigByID(params, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) QueryPaymentProviderConfig(namespace, region *string, limit, offset *int32) (*platformclientmodels.PaymentProviderConfigPagingSlicedResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.QueryPaymentProviderConfigParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		Region:    region,
	}
	ok, err := p.PlatformServiceClient.PaymentConfig.QueryPaymentProviderConfig(params, client.BearerToken(*token.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) CreatePaymentProviderConfig(content *platformclientmodels.PaymentProviderConfigEdit) (*platformclientmodels.PaymentProviderConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.CreatePaymentProviderConfigParams{
		Body: content,
	}
	ok, badRequest, conflict, unprocessableEntity, err := p.PlatformServiceClient.PaymentConfig.CreatePaymentProviderConfig(params, client.BearerToken(*token.AccessToken))

	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
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

func (p *PaymentConfig) GetAggregatePaymentProviders() ([]string, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.GetAggregatePaymentProvidersParams{}
	ok, err := p.PlatformServiceClient.PaymentConfig.GetAggregatePaymentProviders(params, client.BearerToken(*token.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) GetSpecialPaymentProviders() ([]string, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.GetSpecialPaymentProvidersParams{}
	ok, err := p.PlatformServiceClient.PaymentConfig.GetSpecialPaymentProviders(params, client.BearerToken(*token.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) UpdatePaymentProviderConfig(id string, content *platformclientmodels.PaymentProviderConfigEdit) (*platformclientmodels.PaymentProviderConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.UpdatePaymentProviderConfigParams{
		Body: content,
		ID:   id,
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := p.PlatformServiceClient.PaymentConfig.UpdatePaymentProviderConfig(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
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

func (p *PaymentConfig) DeletePaymentProviderConfig(id string) error {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &payment_config.DeletePaymentProviderConfigParams{
		ID: id,
	}
	_, notFound, err := p.PlatformServiceClient.PaymentConfig.DeletePaymentProviderConfig(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (p *PaymentConfig) GetPaymentTaxConfig() (*platformclientmodels.PaymentTaxConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.GetPaymentTaxConfigParams{}
	ok, err := p.PlatformServiceClient.PaymentConfig.GetPaymentTaxConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) UpdatePaymentTaxConfig(content *platformclientmodels.PaymentTaxConfigEdit) (*platformclientmodels.PaymentTaxConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_config.UpdatePaymentTaxConfigParams{
		Body: content,
	}
	ok, badRequest, unprocessableEntity, err := p.PlatformServiceClient.PaymentConfig.UpdatePaymentTaxConfig(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
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

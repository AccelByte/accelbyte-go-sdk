package platform

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type PaymentConfig struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (p *PaymentConfig) UpdateCheckoutConfig(input *payment_config.UpdateCheckoutConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateCheckoutConfig(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) DebugMatchedPaymentMerchantConfig(input *payment_config.DebugMatchedPaymentMerchantConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.DebugMatchedPaymentMerchantConfig(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) DebugMatchedPaymentProviderConfig(input *payment_config.DebugMatchedPaymentProviderConfigParams) (*platformclientmodels.PaymentProviderConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.DebugMatchedPaymentProviderConfig(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestCheckoutConfig(input *payment_config.TestCheckoutConfigParams) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestCheckoutConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) TestAdyenConfig(input *payment_config.TestAdyenConfigParams) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestAdyenConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) GetPaymentMerchantConfig(input *payment_config.GetPaymentMerchantConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.GetPaymentMerchantConfig(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestStripeConfigByID(input *payment_config.TestStripeConfigByIDParams) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.TestStripeConfigByID(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestStripeConfig(input *payment_config.TestStripeConfigParams) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestStripeConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) TestWxPayConfigByID(input *payment_config.TestWxPayConfigByIDParams) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.TestWxPayConfigByID(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) UpdateStripeConfig(input *payment_config.UpdateStripeConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateStripeConfig(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) UpdateAdyenConfig(input *payment_config.UpdateAdyenConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateAdyenConfig(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestCheckoutConfigByID(input *payment_config.TestCheckoutConfigByIDParams) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.TestCheckoutConfigByID(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) UpdateAliPayConfig(input *payment_config.UpdateAliPayConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateAliPayConfig(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) UpdateWxPayConfig(input *payment_config.UpdateWxPayConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateWxPayConfig(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestPayPalConfig(input *payment_config.TestPayPalConfigParams) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestPayPalConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) TestAliPayConfigByID(input *payment_config.TestAliPayConfigByIDParams) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.TestAliPayConfigByID(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestAdyenConfigByID(input *payment_config.TestAdyenConfigByIDParams) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.TestAdyenConfigByID(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) UpdateXsollaConfig(input *payment_config.UpdateXsollaConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateXsollaConfig(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestPayPalConfigByID(input *payment_config.TestPayPalConfigByIDParams) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.TestPayPalConfigByID(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestXsollaConfig(input *payment_config.TestXsollaConfigParams) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestXsollaConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) UpdateWxPayConfigCert(input *payment_config.UpdateWxPayConfigCertParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateWxPayConfigCert(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestWxPayConfig(input *payment_config.TestWxPayConfigParams) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestWxPayConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) TestAliPayConfig(input *payment_config.TestAliPayConfigParams) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.TestAliPayConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) UpdateXsollaUIConfig(input *payment_config.UpdateXsollaUIConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdateXsollaUIConfig(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) UpdatePayPalConfig(input *payment_config.UpdatePayPalConfigParams) (*platformclientmodels.PaymentMerchantConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.UpdatePayPalConfig(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) TestXsollaConfigByID(input *payment_config.TestXsollaConfigByIDParams) (*platformclientmodels.TestResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PaymentConfig.TestXsollaConfigByID(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) QueryPaymentProviderConfig(input *payment_config.QueryPaymentProviderConfigParams) (*platformclientmodels.PaymentProviderConfigPagingSlicedResult, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PaymentConfig.QueryPaymentProviderConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) CreatePaymentProviderConfig(input *payment_config.CreatePaymentProviderConfigParams) (*platformclientmodels.PaymentProviderConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, conflict, unprocessableEntity, err := p.Client.PaymentConfig.CreatePaymentProviderConfig(input, client.BearerToken(*token.AccessToken))
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
	ok, err := p.Client.PaymentConfig.GetAggregatePaymentProviders(nil, client.BearerToken(*token.AccessToken))

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
	ok, err := p.Client.PaymentConfig.GetSpecialPaymentProviders(nil, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) UpdatePaymentProviderConfig(input *payment_config.UpdatePaymentProviderConfigParams) (*platformclientmodels.PaymentProviderConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := p.Client.PaymentConfig.UpdatePaymentProviderConfig(input, client.BearerToken(*token.AccessToken))
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

func (p *PaymentConfig) DeletePaymentProviderConfig(input *payment_config.DeletePaymentProviderConfigParams) error {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := p.Client.PaymentConfig.DeletePaymentProviderConfig(input, client.BearerToken(*token.AccessToken))
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
	ok, err := p.Client.PaymentConfig.GetPaymentTaxConfig(nil, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfig) UpdatePaymentTaxConfig(input *payment_config.UpdatePaymentTaxConfigParams) (*platformclientmodels.PaymentTaxConfigInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unprocessableEntity, err := p.Client.PaymentConfig.UpdatePaymentTaxConfig(input, client.BearerToken(*token.AccessToken))
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

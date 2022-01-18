// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type PaymentConfigService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (p *PaymentConfigService) TestAdyenConfig(input *payment_config.TestAdyenConfigParams)(*platformclientmodels.TestResult, error) {
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

func (p *PaymentConfigService) TestAliPayConfig(input *payment_config.TestAliPayConfigParams)(*platformclientmodels.TestResult, error) {
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

func (p *PaymentConfigService) TestCheckoutConfig(input *payment_config.TestCheckoutConfigParams)(*platformclientmodels.TestResult, error) {
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

func (p *PaymentConfigService) DebugMatchedPaymentMerchantConfig(input *payment_config.DebugMatchedPaymentMerchantConfigParams)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
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

func (p *PaymentConfigService) TestPayPalConfig(input *payment_config.TestPayPalConfigParams)(*platformclientmodels.TestResult, error) {
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

func (p *PaymentConfigService) TestStripeConfig(input *payment_config.TestStripeConfigParams)(*platformclientmodels.TestResult, error) {
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

func (p *PaymentConfigService) TestWxPayConfig(input *payment_config.TestWxPayConfigParams)(*platformclientmodels.TestResult, error) {
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

func (p *PaymentConfigService) TestXsollaConfig(input *payment_config.TestXsollaConfigParams)(*platformclientmodels.TestResult, error) {
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

func (p *PaymentConfigService) GetPaymentMerchantConfig(input *payment_config.GetPaymentMerchantConfigParams)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
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

func (p *PaymentConfigService) UpdateAdyenConfig(input *payment_config.UpdateAdyenConfigParams)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
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

func (p *PaymentConfigService) TestAdyenConfigByID(input *payment_config.TestAdyenConfigByIDParams)(*platformclientmodels.TestResult, error) {
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

func (p *PaymentConfigService) UpdateAliPayConfig(input *payment_config.UpdateAliPayConfigParams)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
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

func (p *PaymentConfigService) TestAliPayConfigByID(input *payment_config.TestAliPayConfigByIDParams)(*platformclientmodels.TestResult, error) {
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

func (p *PaymentConfigService) UpdateCheckoutConfig(input *payment_config.UpdateCheckoutConfigParams)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
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

func (p *PaymentConfigService) TestCheckoutConfigByID(input *payment_config.TestCheckoutConfigByIDParams)(*platformclientmodels.TestResult, error) {
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

func (p *PaymentConfigService) UpdatePayPalConfig(input *payment_config.UpdatePayPalConfigParams)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
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

func (p *PaymentConfigService) TestPayPalConfigByID(input *payment_config.TestPayPalConfigByIDParams)(*platformclientmodels.TestResult, error) {
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

func (p *PaymentConfigService) UpdateStripeConfig(input *payment_config.UpdateStripeConfigParams)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
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

func (p *PaymentConfigService) TestStripeConfigByID(input *payment_config.TestStripeConfigByIDParams)(*platformclientmodels.TestResult, error) {
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

func (p *PaymentConfigService) UpdateWxPayConfig(input *payment_config.UpdateWxPayConfigParams)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
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

func (p *PaymentConfigService) UpdateWxPayConfigCert(input *payment_config.UpdateWxPayConfigCertParams)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
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

func (p *PaymentConfigService) TestWxPayConfigByID(input *payment_config.TestWxPayConfigByIDParams)(*platformclientmodels.TestResult, error) {
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

func (p *PaymentConfigService) UpdateXsollaConfig(input *payment_config.UpdateXsollaConfigParams)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
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

func (p *PaymentConfigService) TestXsollaConfigByID(input *payment_config.TestXsollaConfigByIDParams)(*platformclientmodels.TestResult, error) {
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

func (p *PaymentConfigService) UpdateXsollaUIConfig(input *payment_config.UpdateXsollaUIConfigParams)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
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

func (p *PaymentConfigService) QueryPaymentProviderConfig(input *payment_config.QueryPaymentProviderConfigParams)(*platformclientmodels.PaymentProviderConfigPagingSlicedResult, error) {
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

func (p *PaymentConfigService) CreatePaymentProviderConfig(input *payment_config.CreatePaymentProviderConfigParams)(*platformclientmodels.PaymentProviderConfigInfo, error) {
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

func (p *PaymentConfigService) GetAggregatePaymentProviders(input *payment_config.GetAggregatePaymentProvidersParams)([]string, error) {
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

func (p *PaymentConfigService) DebugMatchedPaymentProviderConfig(input *payment_config.DebugMatchedPaymentProviderConfigParams)(*platformclientmodels.PaymentProviderConfigInfo, error) {
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

func (p *PaymentConfigService) GetSpecialPaymentProviders(input *payment_config.GetSpecialPaymentProvidersParams)([]string, error) {
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

func (p *PaymentConfigService) UpdatePaymentProviderConfig(input *payment_config.UpdatePaymentProviderConfigParams)(*platformclientmodels.PaymentProviderConfigInfo, error) {
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

func (p *PaymentConfigService) GetPaymentTaxConfig(input *payment_config.GetPaymentTaxConfigParams)(*platformclientmodels.PaymentTaxConfigInfo, error) {
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

func (p *PaymentConfigService) UpdatePaymentTaxConfig(input *payment_config.UpdatePaymentTaxConfigParams)(*platformclientmodels.PaymentTaxConfigInfo, error) {
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

func (p *PaymentConfigService) TestAdyenConfigShort(input *payment_config.TestAdyenConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TestResult, error) {
    ok, err := p.Client.PaymentConfig.TestAdyenConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestAliPayConfigShort(input *payment_config.TestAliPayConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TestResult, error) {
    ok, err := p.Client.PaymentConfig.TestAliPayConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestCheckoutConfigShort(input *payment_config.TestCheckoutConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TestResult, error) {
    ok, err := p.Client.PaymentConfig.TestCheckoutConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) DebugMatchedPaymentMerchantConfigShort(input *payment_config.DebugMatchedPaymentMerchantConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.DebugMatchedPaymentMerchantConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestPayPalConfigShort(input *payment_config.TestPayPalConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TestResult, error) {
    ok, err := p.Client.PaymentConfig.TestPayPalConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestStripeConfigShort(input *payment_config.TestStripeConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TestResult, error) {
    ok, err := p.Client.PaymentConfig.TestStripeConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestWxPayConfigShort(input *payment_config.TestWxPayConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TestResult, error) {
    ok, err := p.Client.PaymentConfig.TestWxPayConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestXsollaConfigShort(input *payment_config.TestXsollaConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TestResult, error) {
    ok, err := p.Client.PaymentConfig.TestXsollaConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) GetPaymentMerchantConfigShort(input *payment_config.GetPaymentMerchantConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.GetPaymentMerchantConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateAdyenConfigShort(input *payment_config.UpdateAdyenConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.UpdateAdyenConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestAdyenConfigByIDShort(input *payment_config.TestAdyenConfigByIDParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TestResult, error) {
    ok, err := p.Client.PaymentConfig.TestAdyenConfigByIDShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateAliPayConfigShort(input *payment_config.UpdateAliPayConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.UpdateAliPayConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestAliPayConfigByIDShort(input *payment_config.TestAliPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TestResult, error) {
    ok, err := p.Client.PaymentConfig.TestAliPayConfigByIDShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateCheckoutConfigShort(input *payment_config.UpdateCheckoutConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.UpdateCheckoutConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestCheckoutConfigByIDShort(input *payment_config.TestCheckoutConfigByIDParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TestResult, error) {
    ok, err := p.Client.PaymentConfig.TestCheckoutConfigByIDShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdatePayPalConfigShort(input *payment_config.UpdatePayPalConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.UpdatePayPalConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestPayPalConfigByIDShort(input *payment_config.TestPayPalConfigByIDParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TestResult, error) {
    ok, err := p.Client.PaymentConfig.TestPayPalConfigByIDShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateStripeConfigShort(input *payment_config.UpdateStripeConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.UpdateStripeConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestStripeConfigByIDShort(input *payment_config.TestStripeConfigByIDParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TestResult, error) {
    ok, err := p.Client.PaymentConfig.TestStripeConfigByIDShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateWxPayConfigShort(input *payment_config.UpdateWxPayConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.UpdateWxPayConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateWxPayConfigCertShort(input *payment_config.UpdateWxPayConfigCertParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.UpdateWxPayConfigCertShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestWxPayConfigByIDShort(input *payment_config.TestWxPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TestResult, error) {
    ok, err := p.Client.PaymentConfig.TestWxPayConfigByIDShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateXsollaConfigShort(input *payment_config.UpdateXsollaConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.UpdateXsollaConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) TestXsollaConfigByIDShort(input *payment_config.TestXsollaConfigByIDParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.TestResult, error) {
    ok, err := p.Client.PaymentConfig.TestXsollaConfigByIDShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdateXsollaUIConfigShort(input *payment_config.UpdateXsollaUIConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentMerchantConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.UpdateXsollaUIConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) QueryPaymentProviderConfigShort(input *payment_config.QueryPaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentProviderConfigPagingSlicedResult, error) {
    ok, err := p.Client.PaymentConfig.QueryPaymentProviderConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) CreatePaymentProviderConfigShort(input *payment_config.CreatePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentProviderConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.CreatePaymentProviderConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) GetAggregatePaymentProvidersShort(input *payment_config.GetAggregatePaymentProvidersParams, authInfo runtime.ClientAuthInfoWriter)([]string, error) {
    ok, err := p.Client.PaymentConfig.GetAggregatePaymentProvidersShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) DebugMatchedPaymentProviderConfigShort(input *payment_config.DebugMatchedPaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentProviderConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.DebugMatchedPaymentProviderConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) GetSpecialPaymentProvidersShort(input *payment_config.GetSpecialPaymentProvidersParams, authInfo runtime.ClientAuthInfoWriter)([]string, error) {
    ok, err := p.Client.PaymentConfig.GetSpecialPaymentProvidersShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdatePaymentProviderConfigShort(input *payment_config.UpdatePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentProviderConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.UpdatePaymentProviderConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) DeletePaymentProviderConfigShort(input *payment_config.DeletePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) error {
    _, err := p.Client.PaymentConfig.DeletePaymentProviderConfigShort(input, authInfo)
    if err != nil {
		return err
	}
	return nil
}

func (p *PaymentConfigService) GetPaymentTaxConfigShort(input *payment_config.GetPaymentTaxConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentTaxConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.GetPaymentTaxConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentConfigService) UpdatePaymentTaxConfigShort(input *payment_config.UpdatePaymentTaxConfigParams, authInfo runtime.ClientAuthInfoWriter)(*platformclientmodels.PaymentTaxConfigInfo, error) {
    ok, err := p.Client.PaymentConfig.UpdatePaymentTaxConfigShort(input, authInfo)
    if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}


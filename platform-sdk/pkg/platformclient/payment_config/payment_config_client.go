// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package payment_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new payment config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for payment config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	TestAdyenConfig(params *TestAdyenConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestAdyenConfigOK, error)
	TestAdyenConfigShort(params *TestAdyenConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestAdyenConfigOK, error)
	TestAliPayConfig(params *TestAliPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestAliPayConfigOK, error)
	TestAliPayConfigShort(params *TestAliPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestAliPayConfigOK, error)
	TestCheckoutConfig(params *TestCheckoutConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestCheckoutConfigOK, error)
	TestCheckoutConfigShort(params *TestCheckoutConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestCheckoutConfigOK, error)
	DebugMatchedPaymentMerchantConfig(params *DebugMatchedPaymentMerchantConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DebugMatchedPaymentMerchantConfigOK, *DebugMatchedPaymentMerchantConfigNotFound, error)
	DebugMatchedPaymentMerchantConfigShort(params *DebugMatchedPaymentMerchantConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DebugMatchedPaymentMerchantConfigOK, error)
	TestPayPalConfig(params *TestPayPalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestPayPalConfigOK, error)
	TestPayPalConfigShort(params *TestPayPalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestPayPalConfigOK, error)
	TestStripeConfig(params *TestStripeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestStripeConfigOK, error)
	TestStripeConfigShort(params *TestStripeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestStripeConfigOK, error)
	TestWxPayConfig(params *TestWxPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestWxPayConfigOK, error)
	TestWxPayConfigShort(params *TestWxPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestWxPayConfigOK, error)
	TestXsollaConfig(params *TestXsollaConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestXsollaConfigOK, error)
	TestXsollaConfigShort(params *TestXsollaConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestXsollaConfigOK, error)
	GetPaymentMerchantConfig(params *GetPaymentMerchantConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentMerchantConfigOK, *GetPaymentMerchantConfigNotFound, error)
	GetPaymentMerchantConfigShort(params *GetPaymentMerchantConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentMerchantConfigOK, error)
	UpdateAdyenConfig(params *UpdateAdyenConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAdyenConfigOK, *UpdateAdyenConfigNotFound, error)
	UpdateAdyenConfigShort(params *UpdateAdyenConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAdyenConfigOK, error)
	TestAdyenConfigByID(params *TestAdyenConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestAdyenConfigByIDOK, *TestAdyenConfigByIDNotFound, error)
	TestAdyenConfigByIDShort(params *TestAdyenConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestAdyenConfigByIDOK, error)
	UpdateAliPayConfig(params *UpdateAliPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAliPayConfigOK, *UpdateAliPayConfigNotFound, error)
	UpdateAliPayConfigShort(params *UpdateAliPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAliPayConfigOK, error)
	TestAliPayConfigByID(params *TestAliPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestAliPayConfigByIDOK, *TestAliPayConfigByIDNotFound, error)
	TestAliPayConfigByIDShort(params *TestAliPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestAliPayConfigByIDOK, error)
	UpdateCheckoutConfig(params *UpdateCheckoutConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCheckoutConfigOK, *UpdateCheckoutConfigNotFound, error)
	UpdateCheckoutConfigShort(params *UpdateCheckoutConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCheckoutConfigOK, error)
	TestCheckoutConfigByID(params *TestCheckoutConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestCheckoutConfigByIDOK, *TestCheckoutConfigByIDNotFound, error)
	TestCheckoutConfigByIDShort(params *TestCheckoutConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestCheckoutConfigByIDOK, error)
	UpdatePayPalConfig(params *UpdatePayPalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePayPalConfigOK, *UpdatePayPalConfigNotFound, error)
	UpdatePayPalConfigShort(params *UpdatePayPalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePayPalConfigOK, error)
	TestPayPalConfigByID(params *TestPayPalConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestPayPalConfigByIDOK, *TestPayPalConfigByIDNotFound, error)
	TestPayPalConfigByIDShort(params *TestPayPalConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestPayPalConfigByIDOK, error)
	UpdateStripeConfig(params *UpdateStripeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStripeConfigOK, *UpdateStripeConfigNotFound, error)
	UpdateStripeConfigShort(params *UpdateStripeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStripeConfigOK, error)
	TestStripeConfigByID(params *TestStripeConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestStripeConfigByIDOK, *TestStripeConfigByIDNotFound, error)
	TestStripeConfigByIDShort(params *TestStripeConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestStripeConfigByIDOK, error)
	UpdateWxPayConfig(params *UpdateWxPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateWxPayConfigOK, *UpdateWxPayConfigNotFound, error)
	UpdateWxPayConfigShort(params *UpdateWxPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateWxPayConfigOK, error)
	UpdateWxPayConfigCert(params *UpdateWxPayConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateWxPayConfigCertOK, *UpdateWxPayConfigCertNotFound, error)
	UpdateWxPayConfigCertShort(params *UpdateWxPayConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateWxPayConfigCertOK, error)
	TestWxPayConfigByID(params *TestWxPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestWxPayConfigByIDOK, *TestWxPayConfigByIDNotFound, error)
	TestWxPayConfigByIDShort(params *TestWxPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestWxPayConfigByIDOK, error)
	UpdateXsollaConfig(params *UpdateXsollaConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXsollaConfigOK, *UpdateXsollaConfigNotFound, error)
	UpdateXsollaConfigShort(params *UpdateXsollaConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXsollaConfigOK, error)
	TestXsollaConfigByID(params *TestXsollaConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestXsollaConfigByIDOK, *TestXsollaConfigByIDNotFound, error)
	TestXsollaConfigByIDShort(params *TestXsollaConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestXsollaConfigByIDOK, error)
	UpdateXsollaUIConfig(params *UpdateXsollaUIConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXsollaUIConfigOK, *UpdateXsollaUIConfigNotFound, error)
	UpdateXsollaUIConfigShort(params *UpdateXsollaUIConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXsollaUIConfigOK, error)
	QueryPaymentProviderConfig(params *QueryPaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentProviderConfigOK, error)
	QueryPaymentProviderConfigShort(params *QueryPaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentProviderConfigOK, error)
	CreatePaymentProviderConfig(params *CreatePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePaymentProviderConfigOK, *CreatePaymentProviderConfigBadRequest, *CreatePaymentProviderConfigConflict, *CreatePaymentProviderConfigUnprocessableEntity, error)
	CreatePaymentProviderConfigShort(params *CreatePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePaymentProviderConfigOK, error)
	GetAggregatePaymentProviders(params *GetAggregatePaymentProvidersParams, authInfo runtime.ClientAuthInfoWriter) (*GetAggregatePaymentProvidersOK, error)
	GetAggregatePaymentProvidersShort(params *GetAggregatePaymentProvidersParams, authInfo runtime.ClientAuthInfoWriter) (*GetAggregatePaymentProvidersOK, error)
	DebugMatchedPaymentProviderConfig(params *DebugMatchedPaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DebugMatchedPaymentProviderConfigOK, *DebugMatchedPaymentProviderConfigNotFound, error)
	DebugMatchedPaymentProviderConfigShort(params *DebugMatchedPaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DebugMatchedPaymentProviderConfigOK, error)
	GetSpecialPaymentProviders(params *GetSpecialPaymentProvidersParams, authInfo runtime.ClientAuthInfoWriter) (*GetSpecialPaymentProvidersOK, error)
	GetSpecialPaymentProvidersShort(params *GetSpecialPaymentProvidersParams, authInfo runtime.ClientAuthInfoWriter) (*GetSpecialPaymentProvidersOK, error)
	UpdatePaymentProviderConfig(params *UpdatePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentProviderConfigOK, *UpdatePaymentProviderConfigBadRequest, *UpdatePaymentProviderConfigNotFound, *UpdatePaymentProviderConfigConflict, *UpdatePaymentProviderConfigUnprocessableEntity, error)
	UpdatePaymentProviderConfigShort(params *UpdatePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentProviderConfigOK, error)
	DeletePaymentProviderConfig(params *DeletePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePaymentProviderConfigNoContent, *DeletePaymentProviderConfigNotFound, error)
	DeletePaymentProviderConfigShort(params *DeletePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePaymentProviderConfigNoContent, error)
	GetPaymentTaxConfig(params *GetPaymentTaxConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentTaxConfigOK, error)
	GetPaymentTaxConfigShort(params *GetPaymentTaxConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentTaxConfigOK, error)
	UpdatePaymentTaxConfig(params *UpdatePaymentTaxConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentTaxConfigOK, *UpdatePaymentTaxConfigBadRequest, *UpdatePaymentTaxConfigUnprocessableEntity, error)
	UpdatePaymentTaxConfigShort(params *UpdatePaymentTaxConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentTaxConfigOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use TestAdyenConfigShort instead.

TestAdyenConfig test adyen configuration
 [Not Supported Yet In Starter] Test adyen configuration.

#### Check List:

  * apiKey
  * merchantAccount



#### Non-check list:

  * notificationHmacKey
  * notificationUsername
  * notificationPassword
  * liveEndpointUrlPrefix
  * allowedPaymentMethods
  * blockedPaymentMethods
  * settings

Other detail info:
  * Returns : test adyen config
*/
func (a *Client) TestAdyenConfig(params *TestAdyenConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestAdyenConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestAdyenConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testAdyenConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/adyenconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestAdyenConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestAdyenConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestAdyenConfigShort test adyen configuration
 [Not Supported Yet In Starter] Test adyen configuration.

#### Check List:

  * apiKey
  * merchantAccount



#### Non-check list:

  * notificationHmacKey
  * notificationUsername
  * notificationPassword
  * liveEndpointUrlPrefix
  * allowedPaymentMethods
  * blockedPaymentMethods
  * settings

Other detail info:
  * Returns : test adyen config
*/
func (a *Client) TestAdyenConfigShort(params *TestAdyenConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestAdyenConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestAdyenConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testAdyenConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/adyenconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestAdyenConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestAdyenConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TestAliPayConfigShort instead.

TestAliPayConfig test alipay configuration
 [Not Supported Yet In Starter] Test AliPay configuration.Reference: [Alipay Document](https://docs.open.alipay.com/270/alipay.trade.page.pay).
Other detail info:

  * Returns : test result
*/
func (a *Client) TestAliPayConfig(params *TestAliPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestAliPayConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestAliPayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testAliPayConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/alipayconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestAliPayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestAliPayConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestAliPayConfigShort test alipay configuration
 [Not Supported Yet In Starter] Test AliPay configuration.Reference: [Alipay Document](https://docs.open.alipay.com/270/alipay.trade.page.pay).
Other detail info:

  * Returns : test result
*/
func (a *Client) TestAliPayConfigShort(params *TestAliPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestAliPayConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestAliPayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testAliPayConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/alipayconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestAliPayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestAliPayConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TestCheckoutConfigShort instead.

TestCheckoutConfig test checkout.com configuration
 [Not Supported Yet In Starter] Test checkout.com configuration.

#### Check List:

  * publicKey
  * secretKey

Other detail info:
  * Returns : test result
*/
func (a *Client) TestCheckoutConfig(params *TestCheckoutConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestCheckoutConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestCheckoutConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testCheckoutConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/checkoutconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestCheckoutConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestCheckoutConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestCheckoutConfigShort test checkout.com configuration
 [Not Supported Yet In Starter] Test checkout.com configuration.

#### Check List:

  * publicKey
  * secretKey

Other detail info:
  * Returns : test result
*/
func (a *Client) TestCheckoutConfigShort(params *TestCheckoutConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestCheckoutConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestCheckoutConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testCheckoutConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/checkoutconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestCheckoutConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestCheckoutConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DebugMatchedPaymentMerchantConfigShort instead.

DebugMatchedPaymentMerchantConfig debug matched payment merchant config(internal)
 [Not Supported Yet In Starter] Debug matched payment merchant config.
Other detail info:

  * Returns : payment merchant config info
*/
func (a *Client) DebugMatchedPaymentMerchantConfig(params *DebugMatchedPaymentMerchantConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DebugMatchedPaymentMerchantConfigOK, *DebugMatchedPaymentMerchantConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDebugMatchedPaymentMerchantConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "debugMatchedPaymentMerchantConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/matched",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DebugMatchedPaymentMerchantConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DebugMatchedPaymentMerchantConfigOK:
		return v, nil, nil

	case *DebugMatchedPaymentMerchantConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DebugMatchedPaymentMerchantConfigShort debug matched payment merchant config(internal)
 [Not Supported Yet In Starter] Debug matched payment merchant config.
Other detail info:

  * Returns : payment merchant config info
*/
func (a *Client) DebugMatchedPaymentMerchantConfigShort(params *DebugMatchedPaymentMerchantConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DebugMatchedPaymentMerchantConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDebugMatchedPaymentMerchantConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "debugMatchedPaymentMerchantConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/matched",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DebugMatchedPaymentMerchantConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DebugMatchedPaymentMerchantConfigOK:
		return v, nil
	case *DebugMatchedPaymentMerchantConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TestPayPalConfigShort instead.

TestPayPalConfig test paypal configuration
 [Not Supported Yet In Starter] Test PayPal configuration.

#### Check List:

  * clientID
  * clientSecret



#### Non-check list:

  * webHookId

Other detail info:
  * Returns : test result
*/
func (a *Client) TestPayPalConfig(params *TestPayPalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestPayPalConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestPayPalConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testPayPalConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/paypalconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestPayPalConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestPayPalConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestPayPalConfigShort test paypal configuration
 [Not Supported Yet In Starter] Test PayPal configuration.

#### Check List:

  * clientID
  * clientSecret



#### Non-check list:

  * webHookId

Other detail info:
  * Returns : test result
*/
func (a *Client) TestPayPalConfigShort(params *TestPayPalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestPayPalConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestPayPalConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testPayPalConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/paypalconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestPayPalConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestPayPalConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TestStripeConfigShort instead.

TestStripeConfig test stripe configuration
 [Not Supported Yet In Starter] Test stripe configuration.

#### Check List:

  * secretKey
  * allowedPaymentMethodTypes



#### Non-check list:

  * publishableKey
  * webhookSecret

Other detail info:
  * Returns : test adyen config
*/
func (a *Client) TestStripeConfig(params *TestStripeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestStripeConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestStripeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testStripeConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/stripeconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestStripeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestStripeConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestStripeConfigShort test stripe configuration
 [Not Supported Yet In Starter] Test stripe configuration.

#### Check List:

  * secretKey
  * allowedPaymentMethodTypes



#### Non-check list:

  * publishableKey
  * webhookSecret

Other detail info:
  * Returns : test adyen config
*/
func (a *Client) TestStripeConfigShort(params *TestStripeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestStripeConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestStripeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testStripeConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/stripeconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestStripeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestStripeConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TestWxPayConfigShort instead.

TestWxPayConfig test wxpay configuration
 [Not Supported Yet In Starter] Test WxPay configuration. Reference: [WxPay Document](https://pay.weixin.qq.com/wiki/doc/api/native.php?chapter=9_1).
Other detail info:

  * Returns : test WxPay config
*/
func (a *Client) TestWxPayConfig(params *TestWxPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestWxPayConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestWxPayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testWxPayConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/wxpayconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestWxPayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestWxPayConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestWxPayConfigShort test wxpay configuration
 [Not Supported Yet In Starter] Test WxPay configuration. Reference: [WxPay Document](https://pay.weixin.qq.com/wiki/doc/api/native.php?chapter=9_1).
Other detail info:

  * Returns : test WxPay config
*/
func (a *Client) TestWxPayConfigShort(params *TestWxPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestWxPayConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestWxPayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testWxPayConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/wxpayconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestWxPayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestWxPayConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TestXsollaConfigShort instead.

TestXsollaConfig test xsolla configuration
 [Not Supported Yet In Starter] Check xsolla configuration, Reference: [Xsolla Document](https://developers.xsolla.com/?#simple-checkout).

#### Check List:

  * merchantId
  * projectId
  * apiKey



#### Non-check list:

  * projectSecretKey

Other detail info:
  * Returns : test result
*/
func (a *Client) TestXsollaConfig(params *TestXsollaConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestXsollaConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestXsollaConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testXsollaConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/xsollaconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestXsollaConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestXsollaConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestXsollaConfigShort test xsolla configuration
 [Not Supported Yet In Starter] Check xsolla configuration, Reference: [Xsolla Document](https://developers.xsolla.com/?#simple-checkout).

#### Check List:

  * merchantId
  * projectId
  * apiKey



#### Non-check list:

  * projectSecretKey

Other detail info:
  * Returns : test result
*/
func (a *Client) TestXsollaConfigShort(params *TestXsollaConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestXsollaConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestXsollaConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testXsollaConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/xsollaconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestXsollaConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestXsollaConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPaymentMerchantConfigShort instead.

GetPaymentMerchantConfig get payment merchant config
 [Not Supported Yet In Starter] Get payment merchant config by id.
Other detail info:

  * Returns : payment merchant config info
*/
func (a *Client) GetPaymentMerchantConfig(params *GetPaymentMerchantConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentMerchantConfigOK, *GetPaymentMerchantConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentMerchantConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentMerchantConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentMerchantConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetPaymentMerchantConfigOK:
		return v, nil, nil

	case *GetPaymentMerchantConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPaymentMerchantConfigShort get payment merchant config
 [Not Supported Yet In Starter] Get payment merchant config by id.
Other detail info:

  * Returns : payment merchant config info
*/
func (a *Client) GetPaymentMerchantConfigShort(params *GetPaymentMerchantConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentMerchantConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentMerchantConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentMerchantConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentMerchantConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentMerchantConfigOK:
		return v, nil
	case *GetPaymentMerchantConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateAdyenConfigShort instead.

UpdateAdyenConfig update adyen config
 [Not Supported Yet In Starter] Update adyen config.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateAdyenConfig(params *UpdateAdyenConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAdyenConfigOK, *UpdateAdyenConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAdyenConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateAdyenConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/adyenconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAdyenConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateAdyenConfigOK:
		return v, nil, nil

	case *UpdateAdyenConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAdyenConfigShort update adyen config
 [Not Supported Yet In Starter] Update adyen config.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateAdyenConfigShort(params *UpdateAdyenConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAdyenConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAdyenConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateAdyenConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/adyenconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAdyenConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAdyenConfigOK:
		return v, nil
	case *UpdateAdyenConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TestAdyenConfigByIDShort instead.

TestAdyenConfigByID test adyen configuration by id
 [Not Supported Yet In Starter] Test adyen configuration in payment merchant config. Other detail info:

  * Returns : test adyen config
*/
func (a *Client) TestAdyenConfigByID(params *TestAdyenConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestAdyenConfigByIDOK, *TestAdyenConfigByIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestAdyenConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testAdyenConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/adyenconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestAdyenConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *TestAdyenConfigByIDOK:
		return v, nil, nil

	case *TestAdyenConfigByIDNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestAdyenConfigByIDShort test adyen configuration by id
 [Not Supported Yet In Starter] Test adyen configuration in payment merchant config. Other detail info:

  * Returns : test adyen config
*/
func (a *Client) TestAdyenConfigByIDShort(params *TestAdyenConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestAdyenConfigByIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestAdyenConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testAdyenConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/adyenconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestAdyenConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestAdyenConfigByIDOK:
		return v, nil
	case *TestAdyenConfigByIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateAliPayConfigShort instead.

UpdateAliPayConfig update alipay configuration
 [Not Supported Yet In Starter] Update alipay configuration.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateAliPayConfig(params *UpdateAliPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAliPayConfigOK, *UpdateAliPayConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAliPayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateAliPayConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/alipayconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAliPayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateAliPayConfigOK:
		return v, nil, nil

	case *UpdateAliPayConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAliPayConfigShort update alipay configuration
 [Not Supported Yet In Starter] Update alipay configuration.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateAliPayConfigShort(params *UpdateAliPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAliPayConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAliPayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateAliPayConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/alipayconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAliPayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAliPayConfigOK:
		return v, nil
	case *UpdateAliPayConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TestAliPayConfigByIDShort instead.

TestAliPayConfigByID test alipay configuration by id
 [Not Supported Yet In Starter] Test AliPay configuration in payment merchant config. Reference: [Alipay Document](https://docs.open.alipay.com/270/alipay.trade.page.pay).
Other detail info:

  * Returns : test alipay config
*/
func (a *Client) TestAliPayConfigByID(params *TestAliPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestAliPayConfigByIDOK, *TestAliPayConfigByIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestAliPayConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testAliPayConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/alipayconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestAliPayConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *TestAliPayConfigByIDOK:
		return v, nil, nil

	case *TestAliPayConfigByIDNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestAliPayConfigByIDShort test alipay configuration by id
 [Not Supported Yet In Starter] Test AliPay configuration in payment merchant config. Reference: [Alipay Document](https://docs.open.alipay.com/270/alipay.trade.page.pay).
Other detail info:

  * Returns : test alipay config
*/
func (a *Client) TestAliPayConfigByIDShort(params *TestAliPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestAliPayConfigByIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestAliPayConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testAliPayConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/alipayconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestAliPayConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestAliPayConfigByIDOK:
		return v, nil
	case *TestAliPayConfigByIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateCheckoutConfigShort instead.

UpdateCheckoutConfig update checkout.com config
 [Not Supported Yet In Starter] Update checkout.com config.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateCheckoutConfig(params *UpdateCheckoutConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCheckoutConfigOK, *UpdateCheckoutConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCheckoutConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateCheckoutConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/checkoutconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCheckoutConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateCheckoutConfigOK:
		return v, nil, nil

	case *UpdateCheckoutConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateCheckoutConfigShort update checkout.com config
 [Not Supported Yet In Starter] Update checkout.com config.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateCheckoutConfigShort(params *UpdateCheckoutConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCheckoutConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCheckoutConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateCheckoutConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/checkoutconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCheckoutConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateCheckoutConfigOK:
		return v, nil
	case *UpdateCheckoutConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TestCheckoutConfigByIDShort instead.

TestCheckoutConfigByID test checkout.com configuration by id
 [Not Supported Yet In Starter] Test checkout.com configuration in payment merchant config. Other detail info:

  * Returns : test result
*/
func (a *Client) TestCheckoutConfigByID(params *TestCheckoutConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestCheckoutConfigByIDOK, *TestCheckoutConfigByIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestCheckoutConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testCheckoutConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/checkoutconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestCheckoutConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *TestCheckoutConfigByIDOK:
		return v, nil, nil

	case *TestCheckoutConfigByIDNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestCheckoutConfigByIDShort test checkout.com configuration by id
 [Not Supported Yet In Starter] Test checkout.com configuration in payment merchant config. Other detail info:

  * Returns : test result
*/
func (a *Client) TestCheckoutConfigByIDShort(params *TestCheckoutConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestCheckoutConfigByIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestCheckoutConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testCheckoutConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/checkoutconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestCheckoutConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestCheckoutConfigByIDOK:
		return v, nil
	case *TestCheckoutConfigByIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePayPalConfigShort instead.

UpdatePayPalConfig update paypal config
 [Not Supported Yet In Starter] Update PayPal config.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdatePayPalConfig(params *UpdatePayPalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePayPalConfigOK, *UpdatePayPalConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePayPalConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePayPalConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/paypalconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePayPalConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePayPalConfigOK:
		return v, nil, nil

	case *UpdatePayPalConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePayPalConfigShort update paypal config
 [Not Supported Yet In Starter] Update PayPal config.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdatePayPalConfigShort(params *UpdatePayPalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePayPalConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePayPalConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePayPalConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/paypalconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePayPalConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePayPalConfigOK:
		return v, nil
	case *UpdatePayPalConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TestPayPalConfigByIDShort instead.

TestPayPalConfigByID test paypal configuration by id
 [Not Supported Yet In Starter] Test PayPal configuration in payment merchant config. Other detail info:

  * Returns : test result
*/
func (a *Client) TestPayPalConfigByID(params *TestPayPalConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestPayPalConfigByIDOK, *TestPayPalConfigByIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestPayPalConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testPayPalConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/paypalconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestPayPalConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *TestPayPalConfigByIDOK:
		return v, nil, nil

	case *TestPayPalConfigByIDNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestPayPalConfigByIDShort test paypal configuration by id
 [Not Supported Yet In Starter] Test PayPal configuration in payment merchant config. Other detail info:

  * Returns : test result
*/
func (a *Client) TestPayPalConfigByIDShort(params *TestPayPalConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestPayPalConfigByIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestPayPalConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testPayPalConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/paypalconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestPayPalConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestPayPalConfigByIDOK:
		return v, nil
	case *TestPayPalConfigByIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateStripeConfigShort instead.

UpdateStripeConfig update stripe config
 [Not Supported Yet In Starter] Update stripe config.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateStripeConfig(params *UpdateStripeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStripeConfigOK, *UpdateStripeConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateStripeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateStripeConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/stripeconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateStripeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateStripeConfigOK:
		return v, nil, nil

	case *UpdateStripeConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateStripeConfigShort update stripe config
 [Not Supported Yet In Starter] Update stripe config.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateStripeConfigShort(params *UpdateStripeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStripeConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateStripeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateStripeConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/stripeconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateStripeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateStripeConfigOK:
		return v, nil
	case *UpdateStripeConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TestStripeConfigByIDShort instead.

TestStripeConfigByID test stripe configuration by id
 [Not Supported Yet In Starter] Test stripe configuration in payment merchant config. Other detail info:

  * Returns : test adyen config
*/
func (a *Client) TestStripeConfigByID(params *TestStripeConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestStripeConfigByIDOK, *TestStripeConfigByIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestStripeConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testStripeConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/stripeconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestStripeConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *TestStripeConfigByIDOK:
		return v, nil, nil

	case *TestStripeConfigByIDNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestStripeConfigByIDShort test stripe configuration by id
 [Not Supported Yet In Starter] Test stripe configuration in payment merchant config. Other detail info:

  * Returns : test adyen config
*/
func (a *Client) TestStripeConfigByIDShort(params *TestStripeConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestStripeConfigByIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestStripeConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testStripeConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/stripeconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestStripeConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestStripeConfigByIDOK:
		return v, nil
	case *TestStripeConfigByIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateWxPayConfigShort instead.

UpdateWxPayConfig update wxpay configuration
 [Not Supported Yet In Starter] Update wxpay configuration.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateWxPayConfig(params *UpdateWxPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateWxPayConfigOK, *UpdateWxPayConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateWxPayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateWxPayConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/wxpayconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateWxPayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateWxPayConfigOK:
		return v, nil, nil

	case *UpdateWxPayConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateWxPayConfigShort update wxpay configuration
 [Not Supported Yet In Starter] Update wxpay configuration.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateWxPayConfigShort(params *UpdateWxPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateWxPayConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateWxPayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateWxPayConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/wxpayconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateWxPayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateWxPayConfigOK:
		return v, nil
	case *UpdateWxPayConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateWxPayConfigCertShort instead.

UpdateWxPayConfigCert upload wxpay cert file
 [Not Supported Yet In Starter] Upload wxpay cert file.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateWxPayConfigCert(params *UpdateWxPayConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateWxPayConfigCertOK, *UpdateWxPayConfigCertNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateWxPayConfigCertParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateWxPayConfigCert",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/wxpayconfig/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateWxPayConfigCertReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateWxPayConfigCertOK:
		return v, nil, nil

	case *UpdateWxPayConfigCertNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateWxPayConfigCertShort upload wxpay cert file
 [Not Supported Yet In Starter] Upload wxpay cert file.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateWxPayConfigCertShort(params *UpdateWxPayConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateWxPayConfigCertOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateWxPayConfigCertParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateWxPayConfigCert",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/wxpayconfig/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateWxPayConfigCertReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateWxPayConfigCertOK:
		return v, nil
	case *UpdateWxPayConfigCertNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TestWxPayConfigByIDShort instead.

TestWxPayConfigByID test wxpay configuration by id
 [Not Supported Yet In Starter] Test WxPay configuration in payment merchant config. Reference: [WxPay Document](https://pay.weixin.qq.com/wiki/doc/api/native.php?chapter=9_1).
Other detail info:

  * Returns : test WxPay config
*/
func (a *Client) TestWxPayConfigByID(params *TestWxPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestWxPayConfigByIDOK, *TestWxPayConfigByIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestWxPayConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testWxPayConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/wxpayconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestWxPayConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *TestWxPayConfigByIDOK:
		return v, nil, nil

	case *TestWxPayConfigByIDNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestWxPayConfigByIDShort test wxpay configuration by id
 [Not Supported Yet In Starter] Test WxPay configuration in payment merchant config. Reference: [WxPay Document](https://pay.weixin.qq.com/wiki/doc/api/native.php?chapter=9_1).
Other detail info:

  * Returns : test WxPay config
*/
func (a *Client) TestWxPayConfigByIDShort(params *TestWxPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestWxPayConfigByIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestWxPayConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testWxPayConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/wxpayconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestWxPayConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestWxPayConfigByIDOK:
		return v, nil
	case *TestWxPayConfigByIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateXsollaConfigShort instead.

UpdateXsollaConfig update xsolla configuration
 [Not Supported Yet In Starter] Update xsolla configuration. Reference: [Xsolla Document](https://developers.xsolla.com/?#simple-checkout).
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateXsollaConfig(params *UpdateXsollaConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXsollaConfigOK, *UpdateXsollaConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateXsollaConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateXsollaConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/xsollaconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateXsollaConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateXsollaConfigOK:
		return v, nil, nil

	case *UpdateXsollaConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateXsollaConfigShort update xsolla configuration
 [Not Supported Yet In Starter] Update xsolla configuration. Reference: [Xsolla Document](https://developers.xsolla.com/?#simple-checkout).
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateXsollaConfigShort(params *UpdateXsollaConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXsollaConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateXsollaConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateXsollaConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/xsollaconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateXsollaConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateXsollaConfigOK:
		return v, nil
	case *UpdateXsollaConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TestXsollaConfigByIDShort instead.

TestXsollaConfigByID test xsolla configuration by id
 [Not Supported Yet In Starter] Test xsolla configuration in payment merchant config. Reference: [Xsolla Document](https://developers.xsolla.com/?#simple-checkout).
Other detail info:

  * Returns : test xsolla config
*/
func (a *Client) TestXsollaConfigByID(params *TestXsollaConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestXsollaConfigByIDOK, *TestXsollaConfigByIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestXsollaConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testXsollaConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/xsollaconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestXsollaConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *TestXsollaConfigByIDOK:
		return v, nil, nil

	case *TestXsollaConfigByIDNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestXsollaConfigByIDShort test xsolla configuration by id
 [Not Supported Yet In Starter] Test xsolla configuration in payment merchant config. Reference: [Xsolla Document](https://developers.xsolla.com/?#simple-checkout).
Other detail info:

  * Returns : test xsolla config
*/
func (a *Client) TestXsollaConfigByIDShort(params *TestXsollaConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestXsollaConfigByIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestXsollaConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testXsollaConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/xsollaconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestXsollaConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestXsollaConfigByIDOK:
		return v, nil
	case *TestXsollaConfigByIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateXsollaUIConfigShort instead.

UpdateXsollaUIConfig update xsolla ui configuration
 [Not Supported Yet In Starter] Update xsolla UI configuration.Reference: [Xsolla Document](https://developers.xsolla.com/api.html#ui-integrations).
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateXsollaUIConfig(params *UpdateXsollaUIConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXsollaUIConfigOK, *UpdateXsollaUIConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateXsollaUIConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateXsollaUIConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/xsollauiconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateXsollaUIConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateXsollaUIConfigOK:
		return v, nil, nil

	case *UpdateXsollaUIConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateXsollaUIConfigShort update xsolla ui configuration
 [Not Supported Yet In Starter] Update xsolla UI configuration.Reference: [Xsolla Document](https://developers.xsolla.com/api.html#ui-integrations).
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateXsollaUIConfigShort(params *UpdateXsollaUIConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXsollaUIConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateXsollaUIConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateXsollaUIConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/xsollauiconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateXsollaUIConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateXsollaUIConfigOK:
		return v, nil
	case *UpdateXsollaUIConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryPaymentProviderConfigShort instead.

QueryPaymentProviderConfig query payment provider config
 [Not Supported Yet In Starter] Query payment provider config.
Other detail info:

  * Returns : payment provider config list
*/
func (a *Client) QueryPaymentProviderConfig(params *QueryPaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentProviderConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryPaymentProviderConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryPaymentProviderConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/provider",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryPaymentProviderConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryPaymentProviderConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryPaymentProviderConfigShort query payment provider config
 [Not Supported Yet In Starter] Query payment provider config.
Other detail info:

  * Returns : payment provider config list
*/
func (a *Client) QueryPaymentProviderConfigShort(params *QueryPaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentProviderConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryPaymentProviderConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryPaymentProviderConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/provider",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryPaymentProviderConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryPaymentProviderConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreatePaymentProviderConfigShort instead.

CreatePaymentProviderConfig create payment provider config
 [Not Supported Yet In Starter] Create payment provider config.



     Request Body Parameters:


     Parameter | Type   | Required | Description
    -----------|--------|----------|-----------------------------------------------------------
    namespace  | String | Yes      | namespace, * indicates all namespace
    region     | String | Yes      | region, * indicates all regions
    aggregate  | String | No       | aggregate payment provider, such as XSOLLA, ADYEN, STRIPE
    specials   | List   | No       | special payment provider, such as ALIPAY, WXPAY



payment provider applied has priority:

  1. namespace and region match
  2. namespace matches and region is *
  3. region matches and namespace is *
  4. namespace and region are *

Other detail info:
  * Returns : payment provider config
*/
func (a *Client) CreatePaymentProviderConfig(params *CreatePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePaymentProviderConfigOK, *CreatePaymentProviderConfigBadRequest, *CreatePaymentProviderConfigConflict, *CreatePaymentProviderConfigUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePaymentProviderConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createPaymentProviderConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/provider",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePaymentProviderConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreatePaymentProviderConfigOK:
		return v, nil, nil, nil, nil

	case *CreatePaymentProviderConfigBadRequest:
		return nil, v, nil, nil, nil

	case *CreatePaymentProviderConfigConflict:
		return nil, nil, v, nil, nil

	case *CreatePaymentProviderConfigUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePaymentProviderConfigShort create payment provider config
 [Not Supported Yet In Starter] Create payment provider config.



     Request Body Parameters:


     Parameter | Type   | Required | Description
    -----------|--------|----------|-----------------------------------------------------------
    namespace  | String | Yes      | namespace, * indicates all namespace
    region     | String | Yes      | region, * indicates all regions
    aggregate  | String | No       | aggregate payment provider, such as XSOLLA, ADYEN, STRIPE
    specials   | List   | No       | special payment provider, such as ALIPAY, WXPAY



payment provider applied has priority:

  1. namespace and region match
  2. namespace matches and region is *
  3. region matches and namespace is *
  4. namespace and region are *

Other detail info:
  * Returns : payment provider config
*/
func (a *Client) CreatePaymentProviderConfigShort(params *CreatePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePaymentProviderConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePaymentProviderConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createPaymentProviderConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/provider",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePaymentProviderConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePaymentProviderConfigOK:
		return v, nil
	case *CreatePaymentProviderConfigBadRequest:
		return nil, v
	case *CreatePaymentProviderConfigConflict:
		return nil, v
	case *CreatePaymentProviderConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAggregatePaymentProvidersShort instead.

GetAggregatePaymentProviders get aggregate payment providers
 [Not Supported Yet In Starter] Get aggregate payment providers, such as XSOLLA, ADYEN.
Other detail info:

  * Returns : payment provider list
*/
func (a *Client) GetAggregatePaymentProviders(params *GetAggregatePaymentProvidersParams, authInfo runtime.ClientAuthInfoWriter) (*GetAggregatePaymentProvidersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAggregatePaymentProvidersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getAggregatePaymentProviders",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/provider/aggregate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAggregatePaymentProvidersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAggregatePaymentProvidersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAggregatePaymentProvidersShort get aggregate payment providers
 [Not Supported Yet In Starter] Get aggregate payment providers, such as XSOLLA, ADYEN.
Other detail info:

  * Returns : payment provider list
*/
func (a *Client) GetAggregatePaymentProvidersShort(params *GetAggregatePaymentProvidersParams, authInfo runtime.ClientAuthInfoWriter) (*GetAggregatePaymentProvidersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAggregatePaymentProvidersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getAggregatePaymentProviders",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/provider/aggregate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAggregatePaymentProvidersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAggregatePaymentProvidersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DebugMatchedPaymentProviderConfigShort instead.

DebugMatchedPaymentProviderConfig debug matched payment provider config(internal)
 [Not Supported Yet In Starter] Debug matched payment provider config.
Other detail info:

  * Returns : payment provider config
*/
func (a *Client) DebugMatchedPaymentProviderConfig(params *DebugMatchedPaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DebugMatchedPaymentProviderConfigOK, *DebugMatchedPaymentProviderConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDebugMatchedPaymentProviderConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "debugMatchedPaymentProviderConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/provider/matched",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DebugMatchedPaymentProviderConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DebugMatchedPaymentProviderConfigOK:
		return v, nil, nil

	case *DebugMatchedPaymentProviderConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DebugMatchedPaymentProviderConfigShort debug matched payment provider config(internal)
 [Not Supported Yet In Starter] Debug matched payment provider config.
Other detail info:

  * Returns : payment provider config
*/
func (a *Client) DebugMatchedPaymentProviderConfigShort(params *DebugMatchedPaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DebugMatchedPaymentProviderConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDebugMatchedPaymentProviderConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "debugMatchedPaymentProviderConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/provider/matched",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DebugMatchedPaymentProviderConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DebugMatchedPaymentProviderConfigOK:
		return v, nil
	case *DebugMatchedPaymentProviderConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSpecialPaymentProvidersShort instead.

GetSpecialPaymentProviders get special payment providers
 [Not Supported Yet In Starter] Get special payment providers, such as ALIPAY, WXPAY.
Other detail info:

  * Returns : payment provider list
*/
func (a *Client) GetSpecialPaymentProviders(params *GetSpecialPaymentProvidersParams, authInfo runtime.ClientAuthInfoWriter) (*GetSpecialPaymentProvidersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSpecialPaymentProvidersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSpecialPaymentProviders",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/provider/special",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSpecialPaymentProvidersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSpecialPaymentProvidersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSpecialPaymentProvidersShort get special payment providers
 [Not Supported Yet In Starter] Get special payment providers, such as ALIPAY, WXPAY.
Other detail info:

  * Returns : payment provider list
*/
func (a *Client) GetSpecialPaymentProvidersShort(params *GetSpecialPaymentProvidersParams, authInfo runtime.ClientAuthInfoWriter) (*GetSpecialPaymentProvidersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSpecialPaymentProvidersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSpecialPaymentProviders",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/provider/special",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSpecialPaymentProvidersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSpecialPaymentProvidersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePaymentProviderConfigShort instead.

UpdatePaymentProviderConfig update payment provider config
 [Not Supported Yet In Starter] Update payment provider config.



     Request Body Parameters:


     Parameter | Type   | Required | Description
    -----------|--------|----------|-----------------------------------------------------------
    namespace  | String | Yes      | namespace, * indicates all namespace
    region     | String | Yes      | region, * indicates all regions
    aggregate  | String | No       | aggregate payment provider, such as XSOLLA, ADYEN, STRIPE
    specials   | List   | No       | special payment provider, such as ALIPAY, WXPAY



payment provider applied has priority:

  1. namespace and region match
  2. namespace matches and region is *
  3. region matches and namespace is *
  4. namespace and region are *

Other detail info:
  * Returns : payment provider config
*/
func (a *Client) UpdatePaymentProviderConfig(params *UpdatePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentProviderConfigOK, *UpdatePaymentProviderConfigBadRequest, *UpdatePaymentProviderConfigNotFound, *UpdatePaymentProviderConfigConflict, *UpdatePaymentProviderConfigUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePaymentProviderConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePaymentProviderConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/provider/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePaymentProviderConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePaymentProviderConfigOK:
		return v, nil, nil, nil, nil, nil

	case *UpdatePaymentProviderConfigBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdatePaymentProviderConfigNotFound:
		return nil, nil, v, nil, nil, nil

	case *UpdatePaymentProviderConfigConflict:
		return nil, nil, nil, v, nil, nil

	case *UpdatePaymentProviderConfigUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePaymentProviderConfigShort update payment provider config
 [Not Supported Yet In Starter] Update payment provider config.



     Request Body Parameters:


     Parameter | Type   | Required | Description
    -----------|--------|----------|-----------------------------------------------------------
    namespace  | String | Yes      | namespace, * indicates all namespace
    region     | String | Yes      | region, * indicates all regions
    aggregate  | String | No       | aggregate payment provider, such as XSOLLA, ADYEN, STRIPE
    specials   | List   | No       | special payment provider, such as ALIPAY, WXPAY



payment provider applied has priority:

  1. namespace and region match
  2. namespace matches and region is *
  3. region matches and namespace is *
  4. namespace and region are *

Other detail info:
  * Returns : payment provider config
*/
func (a *Client) UpdatePaymentProviderConfigShort(params *UpdatePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentProviderConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePaymentProviderConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePaymentProviderConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/provider/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePaymentProviderConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePaymentProviderConfigOK:
		return v, nil
	case *UpdatePaymentProviderConfigBadRequest:
		return nil, v
	case *UpdatePaymentProviderConfigNotFound:
		return nil, v
	case *UpdatePaymentProviderConfigConflict:
		return nil, v
	case *UpdatePaymentProviderConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeletePaymentProviderConfigShort instead.

DeletePaymentProviderConfig delete payment provider config
 [Not Supported Yet In Starter] Delete payment provider config.
Other detail info:

  * Returns : payment provider config
*/
func (a *Client) DeletePaymentProviderConfig(params *DeletePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePaymentProviderConfigNoContent, *DeletePaymentProviderConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePaymentProviderConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePaymentProviderConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/payment/config/provider/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePaymentProviderConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DeletePaymentProviderConfigNoContent:
		return v, nil, nil

	case *DeletePaymentProviderConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePaymentProviderConfigShort delete payment provider config
 [Not Supported Yet In Starter] Delete payment provider config.
Other detail info:

  * Returns : payment provider config
*/
func (a *Client) DeletePaymentProviderConfigShort(params *DeletePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePaymentProviderConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePaymentProviderConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePaymentProviderConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/payment/config/provider/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePaymentProviderConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePaymentProviderConfigNoContent:
		return v, nil
	case *DeletePaymentProviderConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPaymentTaxConfigShort instead.

GetPaymentTaxConfig get payment global tax config
 [Not Supported Yet In Starter] Get payment global tax config.
Other detail info:

  * Returns : payment provider list
*/
func (a *Client) GetPaymentTaxConfig(params *GetPaymentTaxConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentTaxConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentTaxConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentTaxConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/tax",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentTaxConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentTaxConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPaymentTaxConfigShort get payment global tax config
 [Not Supported Yet In Starter] Get payment global tax config.
Other detail info:

  * Returns : payment provider list
*/
func (a *Client) GetPaymentTaxConfigShort(params *GetPaymentTaxConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentTaxConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentTaxConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentTaxConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/tax",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentTaxConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentTaxConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePaymentTaxConfigShort instead.

UpdatePaymentTaxConfig update payment global tax config
 [Not Supported Yet In Starter] Update payment tax config.



     Request Body Parameters:


     Parameter                | Type    | Required | Description
    --------------------------|---------|----------|---------------------------------------------------------------------
    taxJarEnabled             | Boolean | false
    taxJarApiToken            | String  | false    | required, when taxJarEnabled is true and there is no existing token
    sandboxTaxJarApiToken     | String  | false    | optional
    taxJarProductCodesMapping | Map     | No       | key is item type(APP                                                |COINS |INGAMEITEM |BUNDLE |CODE |SUBSCRIPTION) and value is product tax code: https://developers.taxjar.com/api/reference/?ruby#get-list-tax-categories



Other detail info:
  * Returns : payment global tax config
*/
func (a *Client) UpdatePaymentTaxConfig(params *UpdatePaymentTaxConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentTaxConfigOK, *UpdatePaymentTaxConfigBadRequest, *UpdatePaymentTaxConfigUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePaymentTaxConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePaymentTaxConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/tax",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePaymentTaxConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePaymentTaxConfigOK:
		return v, nil, nil, nil

	case *UpdatePaymentTaxConfigBadRequest:
		return nil, v, nil, nil

	case *UpdatePaymentTaxConfigUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePaymentTaxConfigShort update payment global tax config
 [Not Supported Yet In Starter] Update payment tax config.



     Request Body Parameters:


     Parameter                | Type    | Required | Description
    --------------------------|---------|----------|---------------------------------------------------------------------
    taxJarEnabled             | Boolean | false
    taxJarApiToken            | String  | false    | required, when taxJarEnabled is true and there is no existing token
    sandboxTaxJarApiToken     | String  | false    | optional
    taxJarProductCodesMapping | Map     | No       | key is item type(APP                                                |COINS |INGAMEITEM |BUNDLE |CODE |SUBSCRIPTION) and value is product tax code: https://developers.taxjar.com/api/reference/?ruby#get-list-tax-categories



Other detail info:
  * Returns : payment global tax config
*/
func (a *Client) UpdatePaymentTaxConfigShort(params *UpdatePaymentTaxConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentTaxConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePaymentTaxConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePaymentTaxConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/tax",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePaymentTaxConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePaymentTaxConfigOK:
		return v, nil
	case *UpdatePaymentTaxConfigBadRequest:
		return nil, v
	case *UpdatePaymentTaxConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}

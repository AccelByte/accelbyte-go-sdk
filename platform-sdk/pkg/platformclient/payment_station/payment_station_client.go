// Code generated by go-swagger; DO NOT EDIT.

package payment_station

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new payment station API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for payment station API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetPaymentCustomization(params *GetPaymentCustomizationParams) (*GetPaymentCustomizationOK, error)
	GetPaymentCustomizationShort(params *GetPaymentCustomizationParams) (*GetPaymentCustomizationOK, error)
	GetPaymentPublicConfig(params *GetPaymentPublicConfigParams) (*GetPaymentPublicConfigOK, error)
	GetPaymentPublicConfigShort(params *GetPaymentPublicConfigParams) (*GetPaymentPublicConfigOK, error)
	GetPaymentTaxValue(params *GetPaymentTaxValueParams) (*GetPaymentTaxValueOK, *GetPaymentTaxValueBadRequest, *GetPaymentTaxValueNotFound, error)
	GetPaymentTaxValueShort(params *GetPaymentTaxValueParams) (*GetPaymentTaxValueOK, error)
	Pay(params *PayParams) (*PayOK, *PayBadRequest, *PayNotFound, *PayConflict, error)
	PayShort(params *PayParams) (*PayOK, error)
	PublicCheckPaymentOrderPaidStatus(params *PublicCheckPaymentOrderPaidStatusParams) (*PublicCheckPaymentOrderPaidStatusOK, *PublicCheckPaymentOrderPaidStatusNotFound, error)
	PublicCheckPaymentOrderPaidStatusShort(params *PublicCheckPaymentOrderPaidStatusParams) (*PublicCheckPaymentOrderPaidStatusOK, error)
	PublicGetPaymentMethods(params *PublicGetPaymentMethodsParams) (*PublicGetPaymentMethodsOK, *PublicGetPaymentMethodsNotFound, error)
	PublicGetPaymentMethodsShort(params *PublicGetPaymentMethodsParams) (*PublicGetPaymentMethodsOK, error)
	PublicGetPaymentURL(params *PublicGetPaymentURLParams) (*PublicGetPaymentURLOK, *PublicGetPaymentURLBadRequest, *PublicGetPaymentURLForbidden, *PublicGetPaymentURLNotFound, error)
	PublicGetPaymentURLShort(params *PublicGetPaymentURLParams) (*PublicGetPaymentURLOK, error)
	PublicGetQRCode(params *PublicGetQRCodeParams, writer io.Writer) (*PublicGetQRCodeOK, error)
	PublicGetQRCodeShort(params *PublicGetQRCodeParams, writer io.Writer) (*PublicGetQRCodeOK, error)
	PublicGetUnpaidPaymentOrder(params *PublicGetUnpaidPaymentOrderParams) (*PublicGetUnpaidPaymentOrderOK, *PublicGetUnpaidPaymentOrderNotFound, *PublicGetUnpaidPaymentOrderConflict, error)
	PublicGetUnpaidPaymentOrderShort(params *PublicGetUnpaidPaymentOrderParams) (*PublicGetUnpaidPaymentOrderOK, error)
	PublicNormalizePaymentReturnURL(params *PublicNormalizePaymentReturnURLParams) (*PublicNormalizePaymentReturnURLNoContent, *PublicNormalizePaymentReturnURLTemporaryRedirect, error)
	PublicNormalizePaymentReturnURLShort(params *PublicNormalizePaymentReturnURLParams) (*PublicNormalizePaymentReturnURLNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  GetPaymentCustomization gets payment provider customization

  Get payment provider customization, at current only Adyen provide customization. This api has been deprecated, pls use /public/namespaces/{namespace}/payment/publicconfig to get adyen config&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: customization&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) GetPaymentCustomization(params *GetPaymentCustomizationParams) (*GetPaymentCustomizationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentCustomizationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentCustomization",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/customization",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentCustomizationReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentCustomizationOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetPaymentCustomizationShort(params *GetPaymentCustomizationParams) (*GetPaymentCustomizationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentCustomizationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentCustomization",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/customization",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentCustomizationReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentCustomizationOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetPaymentPublicConfig gets payment provider public config

  Get payment provider public config, at current only Strip provide public config.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: Public config&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) GetPaymentPublicConfig(params *GetPaymentPublicConfigParams) (*GetPaymentPublicConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentPublicConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentPublicConfig",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/publicconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentPublicConfigReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentPublicConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetPaymentPublicConfigShort(params *GetPaymentPublicConfigParams) (*GetPaymentPublicConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentPublicConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentPublicConfig",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/publicconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentPublicConfigReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentPublicConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetPaymentTaxValue gets tax result of a payment order

  Check and get a payment order&#39;s should pay tax.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: tax result&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) GetPaymentTaxValue(params *GetPaymentTaxValueParams) (*GetPaymentTaxValueOK, *GetPaymentTaxValueBadRequest, *GetPaymentTaxValueNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentTaxValueParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentTaxValue",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/tax",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentTaxValueReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetPaymentTaxValueOK:
		return v, nil, nil, nil

	case *GetPaymentTaxValueBadRequest:
		return nil, v, nil, nil

	case *GetPaymentTaxValueNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetPaymentTaxValueShort(params *GetPaymentTaxValueParams) (*GetPaymentTaxValueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentTaxValueParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentTaxValue",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/tax",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentTaxValueReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentTaxValueOK:
		return v, nil
	case *GetPaymentTaxValueBadRequest:
		return nil, v
	case *GetPaymentTaxValueNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  Pay dos payment

  Do payment(For now, this only support checkout.com).&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: Payment process result&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) Pay(params *PayParams) (*PayOK, *PayBadRequest, *PayNotFound, *PayConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPayParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "pay",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/pay",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PayReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PayOK:
		return v, nil, nil, nil, nil

	case *PayBadRequest:
		return nil, v, nil, nil, nil

	case *PayNotFound:
		return nil, nil, v, nil, nil

	case *PayConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PayShort(params *PayParams) (*PayOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPayParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "pay",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/pay",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PayReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PayOK:
		return v, nil
	case *PayBadRequest:
		return nil, v
	case *PayNotFound:
		return nil, v
	case *PayConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicCheckPaymentOrderPaidStatus checks payment order paid status

  Check payment order paid status.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: Payment order paid result&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicCheckPaymentOrderPaidStatus(params *PublicCheckPaymentOrderPaidStatusParams) (*PublicCheckPaymentOrderPaidStatusOK, *PublicCheckPaymentOrderPaidStatusNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCheckPaymentOrderPaidStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicCheckPaymentOrderPaidStatus",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCheckPaymentOrderPaidStatusReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCheckPaymentOrderPaidStatusOK:
		return v, nil, nil

	case *PublicCheckPaymentOrderPaidStatusNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicCheckPaymentOrderPaidStatusShort(params *PublicCheckPaymentOrderPaidStatusParams) (*PublicCheckPaymentOrderPaidStatusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCheckPaymentOrderPaidStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicCheckPaymentOrderPaidStatus",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCheckPaymentOrderPaidStatusReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCheckPaymentOrderPaidStatusOK:
		return v, nil
	case *PublicCheckPaymentOrderPaidStatusNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicGetPaymentMethods gets payment methods

  Get payment methods.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: Payment method list&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicGetPaymentMethods(params *PublicGetPaymentMethodsParams) (*PublicGetPaymentMethodsOK, *PublicGetPaymentMethodsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPaymentMethodsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetPaymentMethods",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/methods",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPaymentMethodsReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetPaymentMethodsOK:
		return v, nil, nil

	case *PublicGetPaymentMethodsNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicGetPaymentMethodsShort(params *PublicGetPaymentMethodsParams) (*PublicGetPaymentMethodsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPaymentMethodsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetPaymentMethods",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/methods",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPaymentMethodsReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPaymentMethodsOK:
		return v, nil
	case *PublicGetPaymentMethodsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicGetPaymentURL gets payment url

  Get payment url.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: Get payment link&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicGetPaymentURL(params *PublicGetPaymentURLParams) (*PublicGetPaymentURLOK, *PublicGetPaymentURLBadRequest, *PublicGetPaymentURLForbidden, *PublicGetPaymentURLNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPaymentURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetPaymentUrl",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPaymentURLReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetPaymentURLOK:
		return v, nil, nil, nil, nil

	case *PublicGetPaymentURLBadRequest:
		return nil, v, nil, nil, nil

	case *PublicGetPaymentURLForbidden:
		return nil, nil, v, nil, nil

	case *PublicGetPaymentURLNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicGetPaymentURLShort(params *PublicGetPaymentURLParams) (*PublicGetPaymentURLOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPaymentURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetPaymentUrl",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPaymentURLReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPaymentURLOK:
		return v, nil
	case *PublicGetPaymentURLBadRequest:
		return nil, v
	case *PublicGetPaymentURLForbidden:
		return nil, v
	case *PublicGetPaymentURLNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicGetQRCode gets qrcode

  Get qrcode.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: QRCode image stream&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicGetQRCode(params *PublicGetQRCodeParams, writer io.Writer) (*PublicGetQRCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetQRCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetQRCode",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/qrcode",
		ProducesMediaTypes: []string{"image/png"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetQRCodeReader{formats: a.formats, writer: writer},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetQRCodeOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicGetQRCodeShort(params *PublicGetQRCodeParams, writer io.Writer) (*PublicGetQRCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetQRCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetQRCode",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/qrcode",
		ProducesMediaTypes: []string{"image/png"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetQRCodeReader{formats: a.formats, writer: writer},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetQRCodeOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicGetUnpaidPaymentOrder gets payment order info

  Get payment order info.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: Payment order details&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicGetUnpaidPaymentOrder(params *PublicGetUnpaidPaymentOrderParams) (*PublicGetUnpaidPaymentOrderOK, *PublicGetUnpaidPaymentOrderNotFound, *PublicGetUnpaidPaymentOrderConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUnpaidPaymentOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUnpaidPaymentOrder",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/info",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUnpaidPaymentOrderReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUnpaidPaymentOrderOK:
		return v, nil, nil, nil

	case *PublicGetUnpaidPaymentOrderNotFound:
		return nil, v, nil, nil

	case *PublicGetUnpaidPaymentOrderConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicGetUnpaidPaymentOrderShort(params *PublicGetUnpaidPaymentOrderParams) (*PublicGetUnpaidPaymentOrderOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUnpaidPaymentOrderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUnpaidPaymentOrder",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/info",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUnpaidPaymentOrderReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUnpaidPaymentOrderOK:
		return v, nil
	case *PublicGetUnpaidPaymentOrderNotFound:
		return nil, v
	case *PublicGetUnpaidPaymentOrderConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicNormalizePaymentReturnURL normalizes payment return url

  Normalize payment return url for payment provider&lt;br&gt;Payment response: &lt;table&gt;&lt;tr&gt;&lt;td&gt;Field&lt;/td&gt;&lt;td&gt;Type&lt;/td&gt;&lt;td&gt;Required&lt;/td&gt;&lt;td&gt;Description&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;orderNo&lt;/td&gt;&lt;td&gt;String&lt;/td&gt;&lt;td&gt;Yes&lt;/td&gt;&lt;td&gt;order no&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;paymentStatus&lt;/td&gt;&lt;td&gt;String&lt;/td&gt;&lt;td&gt;Yes&lt;/td&gt;&lt;td&gt;&lt;ul&gt;&lt;li&gt;DONE: The payment was successfully completed.&lt;/li&gt;&lt;li&gt;CANCELLED: The payment was cancelled by the shopper before completion, or the shopper returned to the merchant&#39;s site before completing the transaction.&lt;/li&gt;&lt;li&gt;PENDING: Inform the shopper that you&#39;ve received their order, and are waiting for the payment to be completed.

When the shopper has completed the payment you will receive a successful AUTHORISATION.&lt;/li&gt;&lt;li&gt;RECEIVED: Inform the shopper that you&#39;ve received their order, and are waiting for the payment to clear.&lt;/li&gt;&lt;li&gt;UNKNOWN: An error occurred during the payment processing.&lt;/li&gt;&lt;li&gt;FAILED: Shopper paid failed because of various reasons.&lt;/li&gt;&lt;/ul&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;reason&lt;/td&gt;&lt;td&gt;String&lt;/td&gt;&lt;td&gt;No&lt;/td&gt;&lt;td&gt;payment status reason&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;xsolla&lt;/i&gt;: parameters &#39;user_id&#39;, &#39;foreinginvoice&#39;, &#39;invoice_id&#39; and &#39;status&#39; will be automatically added to the link&lt;/li&gt;&lt;li&gt;&lt;i&gt;adyen&lt;/i&gt;: https://docs.adyen.com/developers/checkout/web-sdk&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicNormalizePaymentReturnURL(params *PublicNormalizePaymentReturnURLParams) (*PublicNormalizePaymentReturnURLNoContent, *PublicNormalizePaymentReturnURLTemporaryRedirect, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicNormalizePaymentReturnURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicNormalizePaymentReturnUrl",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/returnurl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicNormalizePaymentReturnURLReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicNormalizePaymentReturnURLNoContent:
		return v, nil, nil

	case *PublicNormalizePaymentReturnURLTemporaryRedirect:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicNormalizePaymentReturnURLShort(params *PublicNormalizePaymentReturnURLParams) (*PublicNormalizePaymentReturnURLNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicNormalizePaymentReturnURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicNormalizePaymentReturnUrl",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/returnurl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicNormalizePaymentReturnURLReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicNormalizePaymentReturnURLNoContent:
		return v, nil
	case *PublicNormalizePaymentReturnURLTemporaryRedirect:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}

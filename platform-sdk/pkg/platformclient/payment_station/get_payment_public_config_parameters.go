// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_station

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// Deprecated: 2025-07-16 - Use GetPaymentPublicConfigPaymentProvider<EnumValue>Constant instead.
// Get the enum in GetPaymentPublicConfigParams
const (
	GetPaymentPublicConfigADYENConstant    = "ADYEN"
	GetPaymentPublicConfigALIPAYConstant   = "ALIPAY"
	GetPaymentPublicConfigCHECKOUTConstant = "CHECKOUT"
	GetPaymentPublicConfigNEONPAYConstant  = "NEONPAY"
	GetPaymentPublicConfigPAYPALConstant   = "PAYPAL"
	GetPaymentPublicConfigSTRIPEConstant   = "STRIPE"
	GetPaymentPublicConfigWALLETConstant   = "WALLET"
	GetPaymentPublicConfigWXPAYConstant    = "WXPAY"
	GetPaymentPublicConfigXSOLLAConstant   = "XSOLLA"
)

// Get the enum in GetPaymentPublicConfigParams
const (
	GetPaymentPublicConfigPaymentProviderADYENConstant    = "ADYEN"
	GetPaymentPublicConfigPaymentProviderALIPAYConstant   = "ALIPAY"
	GetPaymentPublicConfigPaymentProviderCHECKOUTConstant = "CHECKOUT"
	GetPaymentPublicConfigPaymentProviderNEONPAYConstant  = "NEONPAY"
	GetPaymentPublicConfigPaymentProviderPAYPALConstant   = "PAYPAL"
	GetPaymentPublicConfigPaymentProviderSTRIPEConstant   = "STRIPE"
	GetPaymentPublicConfigPaymentProviderWALLETConstant   = "WALLET"
	GetPaymentPublicConfigPaymentProviderWXPAYConstant    = "WXPAY"
	GetPaymentPublicConfigPaymentProviderXSOLLAConstant   = "XSOLLA"
)

// NewGetPaymentPublicConfigParams creates a new GetPaymentPublicConfigParams object
// with the default values initialized.
func NewGetPaymentPublicConfigParams() *GetPaymentPublicConfigParams {
	var (
		sandboxDefault = bool(false)
	)
	return &GetPaymentPublicConfigParams{
		Sandbox: &sandboxDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPaymentPublicConfigParamsWithTimeout creates a new GetPaymentPublicConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPaymentPublicConfigParamsWithTimeout(timeout time.Duration) *GetPaymentPublicConfigParams {
	var (
		sandboxDefault = bool(false)
	)
	return &GetPaymentPublicConfigParams{
		Sandbox: &sandboxDefault,

		timeout: timeout,
	}
}

// NewGetPaymentPublicConfigParamsWithContext creates a new GetPaymentPublicConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPaymentPublicConfigParamsWithContext(ctx context.Context) *GetPaymentPublicConfigParams {
	var (
		sandboxDefault = bool(false)
	)
	return &GetPaymentPublicConfigParams{
		Sandbox: &sandboxDefault,

		Context: ctx,
	}
}

// NewGetPaymentPublicConfigParamsWithHTTPClient creates a new GetPaymentPublicConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPaymentPublicConfigParamsWithHTTPClient(client *http.Client) *GetPaymentPublicConfigParams {
	var (
		sandboxDefault = bool(false)
	)
	return &GetPaymentPublicConfigParams{
		Sandbox:    &sandboxDefault,
		HTTPClient: client,
	}
}

/*GetPaymentPublicConfigParams contains all the parameters to send to the API endpoint
for the get payment public config operation typically these are written to a http.Request
*/
type GetPaymentPublicConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Sandbox*/
	Sandbox *bool
	/*PaymentProvider*/
	PaymentProvider string
	/*Region*/
	Region string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get payment public config params
func (o *GetPaymentPublicConfigParams) WithTimeout(timeout time.Duration) *GetPaymentPublicConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get payment public config params
func (o *GetPaymentPublicConfigParams) WithContext(ctx context.Context) *GetPaymentPublicConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get payment public config params
func (o *GetPaymentPublicConfigParams) WithHTTPClient(client *http.Client) *GetPaymentPublicConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetPaymentPublicConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get payment public config params
func (o *GetPaymentPublicConfigParams) WithNamespace(namespace string) *GetPaymentPublicConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSandbox adds the sandbox to the get payment public config params
func (o *GetPaymentPublicConfigParams) WithSandbox(sandbox *bool) *GetPaymentPublicConfigParams {
	o.SetSandbox(sandbox)
	return o
}

// SetSandbox adds the sandbox to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetSandbox(sandbox *bool) {
	o.Sandbox = sandbox
}

// WithPaymentProvider adds the paymentProvider to the get payment public config params
func (o *GetPaymentPublicConfigParams) WithPaymentProvider(paymentProvider string) *GetPaymentPublicConfigParams {
	o.SetPaymentProvider(paymentProvider)
	return o
}

// SetPaymentProvider adds the paymentProvider to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetPaymentProvider(paymentProvider string) {
	o.PaymentProvider = paymentProvider
}

// WithRegion adds the region to the get payment public config params
func (o *GetPaymentPublicConfigParams) WithRegion(region string) *GetPaymentPublicConfigParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the get payment public config params
func (o *GetPaymentPublicConfigParams) SetRegion(region string) {
	o.Region = region
}

// WriteToRequest writes these params to a swagger request
func (o *GetPaymentPublicConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Sandbox != nil {

		// query param sandbox
		var qrSandbox bool
		if o.Sandbox != nil {
			qrSandbox = *o.Sandbox
		}
		qSandbox := swag.FormatBool(qrSandbox)
		if qSandbox != "" {
			if err := r.SetQueryParam("sandbox", qSandbox); err != nil {
				return err
			}
		}

	}

	// query param paymentProvider
	qrPaymentProvider := o.PaymentProvider
	qPaymentProvider := qrPaymentProvider
	if qPaymentProvider != "" {
		if err := r.SetQueryParam("paymentProvider", qPaymentProvider); err != nil {
			return err
		}
	}

	// query param region
	qrRegion := o.Region
	qRegion := qrRegion
	if qRegion != "" {
		if err := r.SetQueryParam("region", qRegion); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

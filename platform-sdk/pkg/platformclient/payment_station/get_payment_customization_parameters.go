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

// Get the enum in GetPaymentCustomizationParams
const (
	GetPaymentCustomizationADYENConstant    = "ADYEN"
	GetPaymentCustomizationALIPAYConstant   = "ALIPAY"
	GetPaymentCustomizationCHECKOUTConstant = "CHECKOUT"
	GetPaymentCustomizationPAYPALConstant   = "PAYPAL"
	GetPaymentCustomizationSTRIPEConstant   = "STRIPE"
	GetPaymentCustomizationWALLETConstant   = "WALLET"
	GetPaymentCustomizationWXPAYConstant    = "WXPAY"
	GetPaymentCustomizationXSOLLAConstant   = "XSOLLA"
)

// NewGetPaymentCustomizationParams creates a new GetPaymentCustomizationParams object
// with the default values initialized.
func NewGetPaymentCustomizationParams() *GetPaymentCustomizationParams {
	var (
		sandboxDefault = bool(false)
	)
	return &GetPaymentCustomizationParams{
		Sandbox: &sandboxDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPaymentCustomizationParamsWithTimeout creates a new GetPaymentCustomizationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPaymentCustomizationParamsWithTimeout(timeout time.Duration) *GetPaymentCustomizationParams {
	var (
		sandboxDefault = bool(false)
	)
	return &GetPaymentCustomizationParams{
		Sandbox: &sandboxDefault,

		timeout: timeout,
	}
}

// NewGetPaymentCustomizationParamsWithContext creates a new GetPaymentCustomizationParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPaymentCustomizationParamsWithContext(ctx context.Context) *GetPaymentCustomizationParams {
	var (
		sandboxDefault = bool(false)
	)
	return &GetPaymentCustomizationParams{
		Sandbox: &sandboxDefault,

		Context: ctx,
	}
}

// NewGetPaymentCustomizationParamsWithHTTPClient creates a new GetPaymentCustomizationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPaymentCustomizationParamsWithHTTPClient(client *http.Client) *GetPaymentCustomizationParams {
	var (
		sandboxDefault = bool(false)
	)
	return &GetPaymentCustomizationParams{
		Sandbox:    &sandboxDefault,
		HTTPClient: client,
	}
}

/*GetPaymentCustomizationParams contains all the parameters to send to the API endpoint
for the get payment customization operation typically these are written to a http.Request
*/
type GetPaymentCustomizationParams struct {

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
}

// WithTimeout adds the timeout to the get payment customization params
func (o *GetPaymentCustomizationParams) WithTimeout(timeout time.Duration) *GetPaymentCustomizationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get payment customization params
func (o *GetPaymentCustomizationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get payment customization params
func (o *GetPaymentCustomizationParams) WithContext(ctx context.Context) *GetPaymentCustomizationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get payment customization params
func (o *GetPaymentCustomizationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get payment customization params
func (o *GetPaymentCustomizationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get payment customization params
func (o *GetPaymentCustomizationParams) WithHTTPClient(client *http.Client) *GetPaymentCustomizationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get payment customization params
func (o *GetPaymentCustomizationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get payment customization params
func (o *GetPaymentCustomizationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get payment customization params
func (o *GetPaymentCustomizationParams) WithNamespace(namespace string) *GetPaymentCustomizationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get payment customization params
func (o *GetPaymentCustomizationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSandbox adds the sandbox to the get payment customization params
func (o *GetPaymentCustomizationParams) WithSandbox(sandbox *bool) *GetPaymentCustomizationParams {
	o.SetSandbox(sandbox)
	return o
}

// SetSandbox adds the sandbox to the get payment customization params
func (o *GetPaymentCustomizationParams) SetSandbox(sandbox *bool) {
	o.Sandbox = sandbox
}

// WithPaymentProvider adds the paymentProvider to the get payment customization params
func (o *GetPaymentCustomizationParams) WithPaymentProvider(paymentProvider string) *GetPaymentCustomizationParams {
	o.SetPaymentProvider(paymentProvider)
	return o
}

// SetPaymentProvider adds the paymentProvider to the get payment customization params
func (o *GetPaymentCustomizationParams) SetPaymentProvider(paymentProvider string) {
	o.PaymentProvider = paymentProvider
}

// WithRegion adds the region to the get payment customization params
func (o *GetPaymentCustomizationParams) WithRegion(region string) *GetPaymentCustomizationParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the get payment customization params
func (o *GetPaymentCustomizationParams) SetRegion(region string) {
	o.Region = region
}

// WriteToRequest writes these params to a swagger request
func (o *GetPaymentCustomizationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

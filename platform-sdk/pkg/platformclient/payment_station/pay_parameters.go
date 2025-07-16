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

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// Deprecated: 2025-07-16 - Use PayPaymentProvider<EnumValue>Constant instead.
// Get the enum in PayParams
const (
	PayADYENConstant    = "ADYEN"
	PayALIPAYConstant   = "ALIPAY"
	PayCHECKOUTConstant = "CHECKOUT"
	PayNEONPAYConstant  = "NEONPAY"
	PayPAYPALConstant   = "PAYPAL"
	PaySTRIPEConstant   = "STRIPE"
	PayWALLETConstant   = "WALLET"
	PayWXPAYConstant    = "WXPAY"
	PayXSOLLAConstant   = "XSOLLA"
)

// Get the enum in PayParams
const (
	PayPaymentProviderADYENConstant    = "ADYEN"
	PayPaymentProviderALIPAYConstant   = "ALIPAY"
	PayPaymentProviderCHECKOUTConstant = "CHECKOUT"
	PayPaymentProviderNEONPAYConstant  = "NEONPAY"
	PayPaymentProviderPAYPALConstant   = "PAYPAL"
	PayPaymentProviderSTRIPEConstant   = "STRIPE"
	PayPaymentProviderWALLETConstant   = "WALLET"
	PayPaymentProviderWXPAYConstant    = "WXPAY"
	PayPaymentProviderXSOLLAConstant   = "XSOLLA"
)

// NewPayParams creates a new PayParams object
// with the default values initialized.
func NewPayParams() *PayParams {
	var (
		paymentProviderDefault = string("CHECKOUT")
	)
	return &PayParams{
		PaymentProvider: &paymentProviderDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPayParamsWithTimeout creates a new PayParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPayParamsWithTimeout(timeout time.Duration) *PayParams {
	var (
		paymentProviderDefault = string("CHECKOUT")
	)
	return &PayParams{
		PaymentProvider: &paymentProviderDefault,

		timeout: timeout,
	}
}

// NewPayParamsWithContext creates a new PayParams object
// with the default values initialized, and the ability to set a context for a request
func NewPayParamsWithContext(ctx context.Context) *PayParams {
	var (
		paymentProviderDefault = string("CHECKOUT")
	)
	return &PayParams{
		PaymentProvider: &paymentProviderDefault,

		Context: ctx,
	}
}

// NewPayParamsWithHTTPClient creates a new PayParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPayParamsWithHTTPClient(client *http.Client) *PayParams {
	var (
		paymentProviderDefault = string("CHECKOUT")
	)
	return &PayParams{
		PaymentProvider: &paymentProviderDefault,
		HTTPClient:      client,
	}
}

/*PayParams contains all the parameters to send to the API endpoint
for the pay operation typically these are written to a http.Request
*/
type PayParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PaymentToken
	/*Namespace*/
	Namespace string
	/*PaymentOrderNo*/
	PaymentOrderNo string
	/*PaymentProvider
	  payment provider

	*/
	PaymentProvider *string
	/*ZipCode
	  zip code

	*/
	ZipCode *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the pay params
func (o *PayParams) WithTimeout(timeout time.Duration) *PayParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the pay params
func (o *PayParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the pay params
func (o *PayParams) WithContext(ctx context.Context) *PayParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the pay params
func (o *PayParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the pay params
func (o *PayParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the pay params
func (o *PayParams) WithHTTPClient(client *http.Client) *PayParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the pay params
func (o *PayParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the pay params
func (o *PayParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PayParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the pay params
func (o *PayParams) WithBody(body *platformclientmodels.PaymentToken) *PayParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the pay params
func (o *PayParams) SetBody(body *platformclientmodels.PaymentToken) {
	o.Body = body
}

// WithNamespace adds the namespace to the pay params
func (o *PayParams) WithNamespace(namespace string) *PayParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the pay params
func (o *PayParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPaymentOrderNo adds the paymentOrderNo to the pay params
func (o *PayParams) WithPaymentOrderNo(paymentOrderNo string) *PayParams {
	o.SetPaymentOrderNo(paymentOrderNo)
	return o
}

// SetPaymentOrderNo adds the paymentOrderNo to the pay params
func (o *PayParams) SetPaymentOrderNo(paymentOrderNo string) {
	o.PaymentOrderNo = paymentOrderNo
}

// WithPaymentProvider adds the paymentProvider to the pay params
func (o *PayParams) WithPaymentProvider(paymentProvider *string) *PayParams {
	o.SetPaymentProvider(paymentProvider)
	return o
}

// SetPaymentProvider adds the paymentProvider to the pay params
func (o *PayParams) SetPaymentProvider(paymentProvider *string) {
	o.PaymentProvider = paymentProvider
}

// WithZipCode adds the zipCode to the pay params
func (o *PayParams) WithZipCode(zipCode *string) *PayParams {
	o.SetZipCode(zipCode)
	return o
}

// SetZipCode adds the zipCode to the pay params
func (o *PayParams) SetZipCode(zipCode *string) {
	o.ZipCode = zipCode
}

// WriteToRequest writes these params to a swagger request
func (o *PayParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param paymentOrderNo
	if err := r.SetPathParam("paymentOrderNo", o.PaymentOrderNo); err != nil {
		return err
	}

	if o.PaymentProvider != nil {

		// query param paymentProvider
		var qrPaymentProvider string
		if o.PaymentProvider != nil {
			qrPaymentProvider = *o.PaymentProvider
		}
		qPaymentProvider := qrPaymentProvider
		if qPaymentProvider != "" {
			if err := r.SetQueryParam("paymentProvider", qPaymentProvider); err != nil {
				return err
			}
		}

	}

	if o.ZipCode != nil {

		// query param zipCode
		var qrZipCode string
		if o.ZipCode != nil {
			qrZipCode = *o.ZipCode
		}
		qZipCode := qrZipCode
		if qZipCode != "" {
			if err := r.SetQueryParam("zipCode", qZipCode); err != nil {
				return err
			}
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

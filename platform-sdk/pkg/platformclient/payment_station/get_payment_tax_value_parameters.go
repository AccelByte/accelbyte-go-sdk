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
)

// Deprecated: 2025-07-16 - Use GetPaymentTaxValuePaymentProvider<EnumValue>Constant instead.
// Get the enum in GetPaymentTaxValueParams
const (
	GetPaymentTaxValueADYENConstant    = "ADYEN"
	GetPaymentTaxValueALIPAYConstant   = "ALIPAY"
	GetPaymentTaxValueCHECKOUTConstant = "CHECKOUT"
	GetPaymentTaxValueNEONPAYConstant  = "NEONPAY"
	GetPaymentTaxValuePAYPALConstant   = "PAYPAL"
	GetPaymentTaxValueSTRIPEConstant   = "STRIPE"
	GetPaymentTaxValueWALLETConstant   = "WALLET"
	GetPaymentTaxValueWXPAYConstant    = "WXPAY"
	GetPaymentTaxValueXSOLLAConstant   = "XSOLLA"
)

// Get the enum in GetPaymentTaxValueParams
const (
	GetPaymentTaxValuePaymentProviderADYENConstant    = "ADYEN"
	GetPaymentTaxValuePaymentProviderALIPAYConstant   = "ALIPAY"
	GetPaymentTaxValuePaymentProviderCHECKOUTConstant = "CHECKOUT"
	GetPaymentTaxValuePaymentProviderNEONPAYConstant  = "NEONPAY"
	GetPaymentTaxValuePaymentProviderPAYPALConstant   = "PAYPAL"
	GetPaymentTaxValuePaymentProviderSTRIPEConstant   = "STRIPE"
	GetPaymentTaxValuePaymentProviderWALLETConstant   = "WALLET"
	GetPaymentTaxValuePaymentProviderWXPAYConstant    = "WXPAY"
	GetPaymentTaxValuePaymentProviderXSOLLAConstant   = "XSOLLA"
)

// NewGetPaymentTaxValueParams creates a new GetPaymentTaxValueParams object
// with the default values initialized.
func NewGetPaymentTaxValueParams() *GetPaymentTaxValueParams {
	var ()
	return &GetPaymentTaxValueParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPaymentTaxValueParamsWithTimeout creates a new GetPaymentTaxValueParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPaymentTaxValueParamsWithTimeout(timeout time.Duration) *GetPaymentTaxValueParams {
	var ()
	return &GetPaymentTaxValueParams{

		timeout: timeout,
	}
}

// NewGetPaymentTaxValueParamsWithContext creates a new GetPaymentTaxValueParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPaymentTaxValueParamsWithContext(ctx context.Context) *GetPaymentTaxValueParams {
	var ()
	return &GetPaymentTaxValueParams{

		Context: ctx,
	}
}

// NewGetPaymentTaxValueParamsWithHTTPClient creates a new GetPaymentTaxValueParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPaymentTaxValueParamsWithHTTPClient(client *http.Client) *GetPaymentTaxValueParams {
	var ()
	return &GetPaymentTaxValueParams{
		HTTPClient: client,
	}
}

/*GetPaymentTaxValueParams contains all the parameters to send to the API endpoint
for the get payment tax value operation typically these are written to a http.Request
*/
type GetPaymentTaxValueParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ZipCode*/
	ZipCode *string
	/*PaymentOrderNo*/
	PaymentOrderNo string
	/*PaymentProvider*/
	PaymentProvider string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get payment tax value params
func (o *GetPaymentTaxValueParams) WithTimeout(timeout time.Duration) *GetPaymentTaxValueParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get payment tax value params
func (o *GetPaymentTaxValueParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get payment tax value params
func (o *GetPaymentTaxValueParams) WithContext(ctx context.Context) *GetPaymentTaxValueParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get payment tax value params
func (o *GetPaymentTaxValueParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get payment tax value params
func (o *GetPaymentTaxValueParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get payment tax value params
func (o *GetPaymentTaxValueParams) WithHTTPClient(client *http.Client) *GetPaymentTaxValueParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get payment tax value params
func (o *GetPaymentTaxValueParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get payment tax value params
func (o *GetPaymentTaxValueParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetPaymentTaxValueParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get payment tax value params
func (o *GetPaymentTaxValueParams) WithNamespace(namespace string) *GetPaymentTaxValueParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get payment tax value params
func (o *GetPaymentTaxValueParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithZipCode adds the zipCode to the get payment tax value params
func (o *GetPaymentTaxValueParams) WithZipCode(zipCode *string) *GetPaymentTaxValueParams {
	o.SetZipCode(zipCode)
	return o
}

// SetZipCode adds the zipCode to the get payment tax value params
func (o *GetPaymentTaxValueParams) SetZipCode(zipCode *string) {
	o.ZipCode = zipCode
}

// WithPaymentOrderNo adds the paymentOrderNo to the get payment tax value params
func (o *GetPaymentTaxValueParams) WithPaymentOrderNo(paymentOrderNo string) *GetPaymentTaxValueParams {
	o.SetPaymentOrderNo(paymentOrderNo)
	return o
}

// SetPaymentOrderNo adds the paymentOrderNo to the get payment tax value params
func (o *GetPaymentTaxValueParams) SetPaymentOrderNo(paymentOrderNo string) {
	o.PaymentOrderNo = paymentOrderNo
}

// WithPaymentProvider adds the paymentProvider to the get payment tax value params
func (o *GetPaymentTaxValueParams) WithPaymentProvider(paymentProvider string) *GetPaymentTaxValueParams {
	o.SetPaymentProvider(paymentProvider)
	return o
}

// SetPaymentProvider adds the paymentProvider to the get payment tax value params
func (o *GetPaymentTaxValueParams) SetPaymentProvider(paymentProvider string) {
	o.PaymentProvider = paymentProvider
}

// WriteToRequest writes these params to a swagger request
func (o *GetPaymentTaxValueParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	// query param paymentOrderNo
	qrPaymentOrderNo := o.PaymentOrderNo
	qPaymentOrderNo := qrPaymentOrderNo
	if qPaymentOrderNo != "" {
		if err := r.SetQueryParam("paymentOrderNo", qPaymentOrderNo); err != nil {
			return err
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

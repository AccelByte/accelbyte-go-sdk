// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment

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

// NewChargePaymentOrderParams creates a new ChargePaymentOrderParams object
// with the default values initialized.
func NewChargePaymentOrderParams() *ChargePaymentOrderParams {
	var ()
	return &ChargePaymentOrderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewChargePaymentOrderParamsWithTimeout creates a new ChargePaymentOrderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewChargePaymentOrderParamsWithTimeout(timeout time.Duration) *ChargePaymentOrderParams {
	var ()
	return &ChargePaymentOrderParams{

		timeout: timeout,
	}
}

// NewChargePaymentOrderParamsWithContext creates a new ChargePaymentOrderParams object
// with the default values initialized, and the ability to set a context for a request
func NewChargePaymentOrderParamsWithContext(ctx context.Context) *ChargePaymentOrderParams {
	var ()
	return &ChargePaymentOrderParams{

		Context: ctx,
	}
}

// NewChargePaymentOrderParamsWithHTTPClient creates a new ChargePaymentOrderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewChargePaymentOrderParamsWithHTTPClient(client *http.Client) *ChargePaymentOrderParams {
	var ()
	return &ChargePaymentOrderParams{
		HTTPClient: client,
	}
}

/*ChargePaymentOrderParams contains all the parameters to send to the API endpoint
for the charge payment order operation typically these are written to a http.Request
*/
type ChargePaymentOrderParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PaymentOrderChargeRequest
	/*Namespace*/
	Namespace string
	/*PaymentOrderNo*/
	PaymentOrderNo string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the charge payment order params
func (o *ChargePaymentOrderParams) WithTimeout(timeout time.Duration) *ChargePaymentOrderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the charge payment order params
func (o *ChargePaymentOrderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the charge payment order params
func (o *ChargePaymentOrderParams) WithContext(ctx context.Context) *ChargePaymentOrderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the charge payment order params
func (o *ChargePaymentOrderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the charge payment order params
func (o *ChargePaymentOrderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the charge payment order params
func (o *ChargePaymentOrderParams) WithHTTPClient(client *http.Client) *ChargePaymentOrderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the charge payment order params
func (o *ChargePaymentOrderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the charge payment order params
func (o *ChargePaymentOrderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ChargePaymentOrderParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the charge payment order params
func (o *ChargePaymentOrderParams) WithBody(body *platformclientmodels.PaymentOrderChargeRequest) *ChargePaymentOrderParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the charge payment order params
func (o *ChargePaymentOrderParams) SetBody(body *platformclientmodels.PaymentOrderChargeRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the charge payment order params
func (o *ChargePaymentOrderParams) WithNamespace(namespace string) *ChargePaymentOrderParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the charge payment order params
func (o *ChargePaymentOrderParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPaymentOrderNo adds the paymentOrderNo to the charge payment order params
func (o *ChargePaymentOrderParams) WithPaymentOrderNo(paymentOrderNo string) *ChargePaymentOrderParams {
	o.SetPaymentOrderNo(paymentOrderNo)
	return o
}

// SetPaymentOrderNo adds the paymentOrderNo to the charge payment order params
func (o *ChargePaymentOrderParams) SetPaymentOrderNo(paymentOrderNo string) {
	o.PaymentOrderNo = paymentOrderNo
}

// WriteToRequest writes these params to a swagger request
func (o *ChargePaymentOrderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

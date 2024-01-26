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

// NewPublicGetUnpaidPaymentOrderParams creates a new PublicGetUnpaidPaymentOrderParams object
// with the default values initialized.
func NewPublicGetUnpaidPaymentOrderParams() *PublicGetUnpaidPaymentOrderParams {
	var ()
	return &PublicGetUnpaidPaymentOrderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUnpaidPaymentOrderParamsWithTimeout creates a new PublicGetUnpaidPaymentOrderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUnpaidPaymentOrderParamsWithTimeout(timeout time.Duration) *PublicGetUnpaidPaymentOrderParams {
	var ()
	return &PublicGetUnpaidPaymentOrderParams{

		timeout: timeout,
	}
}

// NewPublicGetUnpaidPaymentOrderParamsWithContext creates a new PublicGetUnpaidPaymentOrderParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUnpaidPaymentOrderParamsWithContext(ctx context.Context) *PublicGetUnpaidPaymentOrderParams {
	var ()
	return &PublicGetUnpaidPaymentOrderParams{

		Context: ctx,
	}
}

// NewPublicGetUnpaidPaymentOrderParamsWithHTTPClient creates a new PublicGetUnpaidPaymentOrderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUnpaidPaymentOrderParamsWithHTTPClient(client *http.Client) *PublicGetUnpaidPaymentOrderParams {
	var ()
	return &PublicGetUnpaidPaymentOrderParams{
		HTTPClient: client,
	}
}

/*PublicGetUnpaidPaymentOrderParams contains all the parameters to send to the API endpoint
for the public get unpaid payment order operation typically these are written to a http.Request
*/
type PublicGetUnpaidPaymentOrderParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the public get unpaid payment order params
func (o *PublicGetUnpaidPaymentOrderParams) WithTimeout(timeout time.Duration) *PublicGetUnpaidPaymentOrderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get unpaid payment order params
func (o *PublicGetUnpaidPaymentOrderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get unpaid payment order params
func (o *PublicGetUnpaidPaymentOrderParams) WithContext(ctx context.Context) *PublicGetUnpaidPaymentOrderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get unpaid payment order params
func (o *PublicGetUnpaidPaymentOrderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get unpaid payment order params
func (o *PublicGetUnpaidPaymentOrderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get unpaid payment order params
func (o *PublicGetUnpaidPaymentOrderParams) WithHTTPClient(client *http.Client) *PublicGetUnpaidPaymentOrderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get unpaid payment order params
func (o *PublicGetUnpaidPaymentOrderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get unpaid payment order params
func (o *PublicGetUnpaidPaymentOrderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUnpaidPaymentOrderParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get unpaid payment order params
func (o *PublicGetUnpaidPaymentOrderParams) WithNamespace(namespace string) *PublicGetUnpaidPaymentOrderParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get unpaid payment order params
func (o *PublicGetUnpaidPaymentOrderParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPaymentOrderNo adds the paymentOrderNo to the public get unpaid payment order params
func (o *PublicGetUnpaidPaymentOrderParams) WithPaymentOrderNo(paymentOrderNo string) *PublicGetUnpaidPaymentOrderParams {
	o.SetPaymentOrderNo(paymentOrderNo)
	return o
}

// SetPaymentOrderNo adds the paymentOrderNo to the public get unpaid payment order params
func (o *PublicGetUnpaidPaymentOrderParams) SetPaymentOrderNo(paymentOrderNo string) {
	o.PaymentOrderNo = paymentOrderNo
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUnpaidPaymentOrderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

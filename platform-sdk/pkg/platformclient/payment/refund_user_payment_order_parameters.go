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

// NewRefundUserPaymentOrderParams creates a new RefundUserPaymentOrderParams object
// with the default values initialized.
func NewRefundUserPaymentOrderParams() *RefundUserPaymentOrderParams {
	var ()
	return &RefundUserPaymentOrderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRefundUserPaymentOrderParamsWithTimeout creates a new RefundUserPaymentOrderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRefundUserPaymentOrderParamsWithTimeout(timeout time.Duration) *RefundUserPaymentOrderParams {
	var ()
	return &RefundUserPaymentOrderParams{

		timeout: timeout,
	}
}

// NewRefundUserPaymentOrderParamsWithContext creates a new RefundUserPaymentOrderParams object
// with the default values initialized, and the ability to set a context for a request
func NewRefundUserPaymentOrderParamsWithContext(ctx context.Context) *RefundUserPaymentOrderParams {
	var ()
	return &RefundUserPaymentOrderParams{

		Context: ctx,
	}
}

// NewRefundUserPaymentOrderParamsWithHTTPClient creates a new RefundUserPaymentOrderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRefundUserPaymentOrderParamsWithHTTPClient(client *http.Client) *RefundUserPaymentOrderParams {
	var ()
	return &RefundUserPaymentOrderParams{
		HTTPClient: client,
	}
}

/*RefundUserPaymentOrderParams contains all the parameters to send to the API endpoint
for the refund user payment order operation typically these are written to a http.Request
*/
type RefundUserPaymentOrderParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PaymentOrderRefund
	/*Namespace*/
	Namespace string
	/*PaymentOrderNo*/
	PaymentOrderNo string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the refund user payment order params
func (o *RefundUserPaymentOrderParams) WithTimeout(timeout time.Duration) *RefundUserPaymentOrderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the refund user payment order params
func (o *RefundUserPaymentOrderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the refund user payment order params
func (o *RefundUserPaymentOrderParams) WithContext(ctx context.Context) *RefundUserPaymentOrderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the refund user payment order params
func (o *RefundUserPaymentOrderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the refund user payment order params
func (o *RefundUserPaymentOrderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the refund user payment order params
func (o *RefundUserPaymentOrderParams) WithHTTPClient(client *http.Client) *RefundUserPaymentOrderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the refund user payment order params
func (o *RefundUserPaymentOrderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the refund user payment order params
func (o *RefundUserPaymentOrderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RefundUserPaymentOrderParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the refund user payment order params
func (o *RefundUserPaymentOrderParams) WithBody(body *platformclientmodels.PaymentOrderRefund) *RefundUserPaymentOrderParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the refund user payment order params
func (o *RefundUserPaymentOrderParams) SetBody(body *platformclientmodels.PaymentOrderRefund) {
	o.Body = body
}

// WithNamespace adds the namespace to the refund user payment order params
func (o *RefundUserPaymentOrderParams) WithNamespace(namespace string) *RefundUserPaymentOrderParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the refund user payment order params
func (o *RefundUserPaymentOrderParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPaymentOrderNo adds the paymentOrderNo to the refund user payment order params
func (o *RefundUserPaymentOrderParams) WithPaymentOrderNo(paymentOrderNo string) *RefundUserPaymentOrderParams {
	o.SetPaymentOrderNo(paymentOrderNo)
	return o
}

// SetPaymentOrderNo adds the paymentOrderNo to the refund user payment order params
func (o *RefundUserPaymentOrderParams) SetPaymentOrderNo(paymentOrderNo string) {
	o.PaymentOrderNo = paymentOrderNo
}

// WithUserID adds the userID to the refund user payment order params
func (o *RefundUserPaymentOrderParams) WithUserID(userID string) *RefundUserPaymentOrderParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the refund user payment order params
func (o *RefundUserPaymentOrderParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *RefundUserPaymentOrderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fulfillment

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

// NewRetryFulfillItemsParams creates a new RetryFulfillItemsParams object
// with the default values initialized.
func NewRetryFulfillItemsParams() *RetryFulfillItemsParams {
	var ()
	return &RetryFulfillItemsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetryFulfillItemsParamsWithTimeout creates a new RetryFulfillItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetryFulfillItemsParamsWithTimeout(timeout time.Duration) *RetryFulfillItemsParams {
	var ()
	return &RetryFulfillItemsParams{

		timeout: timeout,
	}
}

// NewRetryFulfillItemsParamsWithContext creates a new RetryFulfillItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetryFulfillItemsParamsWithContext(ctx context.Context) *RetryFulfillItemsParams {
	var ()
	return &RetryFulfillItemsParams{

		Context: ctx,
	}
}

// NewRetryFulfillItemsParamsWithHTTPClient creates a new RetryFulfillItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetryFulfillItemsParamsWithHTTPClient(client *http.Client) *RetryFulfillItemsParams {
	var ()
	return &RetryFulfillItemsParams{
		HTTPClient: client,
	}
}

/*RetryFulfillItemsParams contains all the parameters to send to the API endpoint
for the retry fulfill items operation typically these are written to a http.Request
*/
type RetryFulfillItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*TransactionID*/
	TransactionID string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retry fulfill items params
func (o *RetryFulfillItemsParams) WithTimeout(timeout time.Duration) *RetryFulfillItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retry fulfill items params
func (o *RetryFulfillItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retry fulfill items params
func (o *RetryFulfillItemsParams) WithContext(ctx context.Context) *RetryFulfillItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retry fulfill items params
func (o *RetryFulfillItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retry fulfill items params
func (o *RetryFulfillItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retry fulfill items params
func (o *RetryFulfillItemsParams) WithHTTPClient(client *http.Client) *RetryFulfillItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retry fulfill items params
func (o *RetryFulfillItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retry fulfill items params
func (o *RetryFulfillItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetryFulfillItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the retry fulfill items params
func (o *RetryFulfillItemsParams) WithNamespace(namespace string) *RetryFulfillItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retry fulfill items params
func (o *RetryFulfillItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTransactionID adds the transactionID to the retry fulfill items params
func (o *RetryFulfillItemsParams) WithTransactionID(transactionID string) *RetryFulfillItemsParams {
	o.SetTransactionID(transactionID)
	return o
}

// SetTransactionID adds the transactionId to the retry fulfill items params
func (o *RetryFulfillItemsParams) SetTransactionID(transactionID string) {
	o.TransactionID = transactionID
}

// WithUserID adds the userID to the retry fulfill items params
func (o *RetryFulfillItemsParams) WithUserID(userID string) *RetryFulfillItemsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the retry fulfill items params
func (o *RetryFulfillItemsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *RetryFulfillItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param transactionId
	if err := r.SetPathParam("transactionId", o.TransactionID); err != nil {
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

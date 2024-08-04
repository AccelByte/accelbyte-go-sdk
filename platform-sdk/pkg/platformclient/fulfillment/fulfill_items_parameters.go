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

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewFulfillItemsParams creates a new FulfillItemsParams object
// with the default values initialized.
func NewFulfillItemsParams() *FulfillItemsParams {
	var ()
	return &FulfillItemsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFulfillItemsParamsWithTimeout creates a new FulfillItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFulfillItemsParamsWithTimeout(timeout time.Duration) *FulfillItemsParams {
	var ()
	return &FulfillItemsParams{

		timeout: timeout,
	}
}

// NewFulfillItemsParamsWithContext creates a new FulfillItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewFulfillItemsParamsWithContext(ctx context.Context) *FulfillItemsParams {
	var ()
	return &FulfillItemsParams{

		Context: ctx,
	}
}

// NewFulfillItemsParamsWithHTTPClient creates a new FulfillItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFulfillItemsParamsWithHTTPClient(client *http.Client) *FulfillItemsParams {
	var ()
	return &FulfillItemsParams{
		HTTPClient: client,
	}
}

/*FulfillItemsParams contains all the parameters to send to the API endpoint
for the fulfill items operation typically these are written to a http.Request
*/
type FulfillItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.FulfillmentV2Request
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

// WithTimeout adds the timeout to the fulfill items params
func (o *FulfillItemsParams) WithTimeout(timeout time.Duration) *FulfillItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fulfill items params
func (o *FulfillItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fulfill items params
func (o *FulfillItemsParams) WithContext(ctx context.Context) *FulfillItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fulfill items params
func (o *FulfillItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fulfill items params
func (o *FulfillItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fulfill items params
func (o *FulfillItemsParams) WithHTTPClient(client *http.Client) *FulfillItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fulfill items params
func (o *FulfillItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fulfill items params
func (o *FulfillItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *FulfillItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the fulfill items params
func (o *FulfillItemsParams) WithBody(body *platformclientmodels.FulfillmentV2Request) *FulfillItemsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the fulfill items params
func (o *FulfillItemsParams) SetBody(body *platformclientmodels.FulfillmentV2Request) {
	o.Body = body
}

// WithNamespace adds the namespace to the fulfill items params
func (o *FulfillItemsParams) WithNamespace(namespace string) *FulfillItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fulfill items params
func (o *FulfillItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTransactionID adds the transactionID to the fulfill items params
func (o *FulfillItemsParams) WithTransactionID(transactionID string) *FulfillItemsParams {
	o.SetTransactionID(transactionID)
	return o
}

// SetTransactionID adds the transactionId to the fulfill items params
func (o *FulfillItemsParams) SetTransactionID(transactionID string) {
	o.TransactionID = transactionID
}

// WithUserID adds the userID to the fulfill items params
func (o *FulfillItemsParams) WithUserID(userID string) *FulfillItemsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the fulfill items params
func (o *FulfillItemsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *FulfillItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

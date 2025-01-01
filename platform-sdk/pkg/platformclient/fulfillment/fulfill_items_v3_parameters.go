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

// NewFulfillItemsV3Params creates a new FulfillItemsV3Params object
// with the default values initialized.
func NewFulfillItemsV3Params() *FulfillItemsV3Params {
	var ()
	return &FulfillItemsV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewFulfillItemsV3ParamsWithTimeout creates a new FulfillItemsV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewFulfillItemsV3ParamsWithTimeout(timeout time.Duration) *FulfillItemsV3Params {
	var ()
	return &FulfillItemsV3Params{

		timeout: timeout,
	}
}

// NewFulfillItemsV3ParamsWithContext creates a new FulfillItemsV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewFulfillItemsV3ParamsWithContext(ctx context.Context) *FulfillItemsV3Params {
	var ()
	return &FulfillItemsV3Params{

		Context: ctx,
	}
}

// NewFulfillItemsV3ParamsWithHTTPClient creates a new FulfillItemsV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFulfillItemsV3ParamsWithHTTPClient(client *http.Client) *FulfillItemsV3Params {
	var ()
	return &FulfillItemsV3Params{
		HTTPClient: client,
	}
}

/*FulfillItemsV3Params contains all the parameters to send to the API endpoint
for the fulfill items v3 operation typically these are written to a http.Request
*/
type FulfillItemsV3Params struct {

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

// WithTimeout adds the timeout to the fulfill items v3 params
func (o *FulfillItemsV3Params) WithTimeout(timeout time.Duration) *FulfillItemsV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fulfill items v3 params
func (o *FulfillItemsV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fulfill items v3 params
func (o *FulfillItemsV3Params) WithContext(ctx context.Context) *FulfillItemsV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fulfill items v3 params
func (o *FulfillItemsV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fulfill items v3 params
func (o *FulfillItemsV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fulfill items v3 params
func (o *FulfillItemsV3Params) WithHTTPClient(client *http.Client) *FulfillItemsV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fulfill items v3 params
func (o *FulfillItemsV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fulfill items v3 params
func (o *FulfillItemsV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *FulfillItemsV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the fulfill items v3 params
func (o *FulfillItemsV3Params) WithBody(body *platformclientmodels.FulfillmentV2Request) *FulfillItemsV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the fulfill items v3 params
func (o *FulfillItemsV3Params) SetBody(body *platformclientmodels.FulfillmentV2Request) {
	o.Body = body
}

// WithNamespace adds the namespace to the fulfill items v3 params
func (o *FulfillItemsV3Params) WithNamespace(namespace string) *FulfillItemsV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fulfill items v3 params
func (o *FulfillItemsV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTransactionID adds the transactionID to the fulfill items v3 params
func (o *FulfillItemsV3Params) WithTransactionID(transactionID string) *FulfillItemsV3Params {
	o.SetTransactionID(transactionID)
	return o
}

// SetTransactionID adds the transactionId to the fulfill items v3 params
func (o *FulfillItemsV3Params) SetTransactionID(transactionID string) {
	o.TransactionID = transactionID
}

// WithUserID adds the userID to the fulfill items v3 params
func (o *FulfillItemsV3Params) WithUserID(userID string) *FulfillItemsV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the fulfill items v3 params
func (o *FulfillItemsV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *FulfillItemsV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package anonymization

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

// NewAnonymizeFulfillmentParams creates a new AnonymizeFulfillmentParams object
// with the default values initialized.
func NewAnonymizeFulfillmentParams() *AnonymizeFulfillmentParams {
	var ()
	return &AnonymizeFulfillmentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAnonymizeFulfillmentParamsWithTimeout creates a new AnonymizeFulfillmentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAnonymizeFulfillmentParamsWithTimeout(timeout time.Duration) *AnonymizeFulfillmentParams {
	var ()
	return &AnonymizeFulfillmentParams{

		timeout: timeout,
	}
}

// NewAnonymizeFulfillmentParamsWithContext creates a new AnonymizeFulfillmentParams object
// with the default values initialized, and the ability to set a context for a request
func NewAnonymizeFulfillmentParamsWithContext(ctx context.Context) *AnonymizeFulfillmentParams {
	var ()
	return &AnonymizeFulfillmentParams{

		Context: ctx,
	}
}

// NewAnonymizeFulfillmentParamsWithHTTPClient creates a new AnonymizeFulfillmentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAnonymizeFulfillmentParamsWithHTTPClient(client *http.Client) *AnonymizeFulfillmentParams {
	var ()
	return &AnonymizeFulfillmentParams{
		HTTPClient: client,
	}
}

/*AnonymizeFulfillmentParams contains all the parameters to send to the API endpoint
for the anonymize fulfillment operation typically these are written to a http.Request
*/
type AnonymizeFulfillmentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the anonymize fulfillment params
func (o *AnonymizeFulfillmentParams) WithTimeout(timeout time.Duration) *AnonymizeFulfillmentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the anonymize fulfillment params
func (o *AnonymizeFulfillmentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the anonymize fulfillment params
func (o *AnonymizeFulfillmentParams) WithContext(ctx context.Context) *AnonymizeFulfillmentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the anonymize fulfillment params
func (o *AnonymizeFulfillmentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the anonymize fulfillment params
func (o *AnonymizeFulfillmentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the anonymize fulfillment params
func (o *AnonymizeFulfillmentParams) WithHTTPClient(client *http.Client) *AnonymizeFulfillmentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the anonymize fulfillment params
func (o *AnonymizeFulfillmentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the anonymize fulfillment params
func (o *AnonymizeFulfillmentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the anonymize fulfillment params
func (o *AnonymizeFulfillmentParams) WithNamespace(namespace string) *AnonymizeFulfillmentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the anonymize fulfillment params
func (o *AnonymizeFulfillmentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the anonymize fulfillment params
func (o *AnonymizeFulfillmentParams) WithUserID(userID string) *AnonymizeFulfillmentParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the anonymize fulfillment params
func (o *AnonymizeFulfillmentParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AnonymizeFulfillmentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

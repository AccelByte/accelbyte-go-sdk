// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewPublicGetAsyncStatusParams creates a new PublicGetAsyncStatusParams object
// with the default values initialized.
func NewPublicGetAsyncStatusParams() *PublicGetAsyncStatusParams {
	var ()
	return &PublicGetAsyncStatusParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetAsyncStatusParamsWithTimeout creates a new PublicGetAsyncStatusParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetAsyncStatusParamsWithTimeout(timeout time.Duration) *PublicGetAsyncStatusParams {
	var ()
	return &PublicGetAsyncStatusParams{

		timeout: timeout,
	}
}

// NewPublicGetAsyncStatusParamsWithContext creates a new PublicGetAsyncStatusParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetAsyncStatusParamsWithContext(ctx context.Context) *PublicGetAsyncStatusParams {
	var ()
	return &PublicGetAsyncStatusParams{

		Context: ctx,
	}
}

// NewPublicGetAsyncStatusParamsWithHTTPClient creates a new PublicGetAsyncStatusParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetAsyncStatusParamsWithHTTPClient(client *http.Client) *PublicGetAsyncStatusParams {
	var ()
	return &PublicGetAsyncStatusParams{
		HTTPClient: client,
	}
}

/*PublicGetAsyncStatusParams contains all the parameters to send to the API endpoint
for the public get async status operation typically these are written to a http.Request
*/
type PublicGetAsyncStatusParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*RequestID
	  Request ID of the link status

	*/
	RequestID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get async status params
func (o *PublicGetAsyncStatusParams) WithTimeout(timeout time.Duration) *PublicGetAsyncStatusParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get async status params
func (o *PublicGetAsyncStatusParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get async status params
func (o *PublicGetAsyncStatusParams) WithContext(ctx context.Context) *PublicGetAsyncStatusParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get async status params
func (o *PublicGetAsyncStatusParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get async status params
func (o *PublicGetAsyncStatusParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get async status params
func (o *PublicGetAsyncStatusParams) WithHTTPClient(client *http.Client) *PublicGetAsyncStatusParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get async status params
func (o *PublicGetAsyncStatusParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get async status params
func (o *PublicGetAsyncStatusParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetAsyncStatusParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get async status params
func (o *PublicGetAsyncStatusParams) WithNamespace(namespace string) *PublicGetAsyncStatusParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get async status params
func (o *PublicGetAsyncStatusParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRequestID adds the requestID to the public get async status params
func (o *PublicGetAsyncStatusParams) WithRequestID(requestID string) *PublicGetAsyncStatusParams {
	o.SetRequestID(requestID)
	return o
}

// SetRequestID adds the requestId to the public get async status params
func (o *PublicGetAsyncStatusParams) SetRequestID(requestID string) {
	o.RequestID = requestID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetAsyncStatusParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param requestId
	if err := r.SetPathParam("requestId", o.RequestID); err != nil {
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

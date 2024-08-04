// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

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

// NewRunGhostCleanerRequestHandlerParams creates a new RunGhostCleanerRequestHandlerParams object
// with the default values initialized.
func NewRunGhostCleanerRequestHandlerParams() *RunGhostCleanerRequestHandlerParams {
	var ()
	return &RunGhostCleanerRequestHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRunGhostCleanerRequestHandlerParamsWithTimeout creates a new RunGhostCleanerRequestHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRunGhostCleanerRequestHandlerParamsWithTimeout(timeout time.Duration) *RunGhostCleanerRequestHandlerParams {
	var ()
	return &RunGhostCleanerRequestHandlerParams{

		timeout: timeout,
	}
}

// NewRunGhostCleanerRequestHandlerParamsWithContext creates a new RunGhostCleanerRequestHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewRunGhostCleanerRequestHandlerParamsWithContext(ctx context.Context) *RunGhostCleanerRequestHandlerParams {
	var ()
	return &RunGhostCleanerRequestHandlerParams{

		Context: ctx,
	}
}

// NewRunGhostCleanerRequestHandlerParamsWithHTTPClient creates a new RunGhostCleanerRequestHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRunGhostCleanerRequestHandlerParamsWithHTTPClient(client *http.Client) *RunGhostCleanerRequestHandlerParams {
	var ()
	return &RunGhostCleanerRequestHandlerParams{
		HTTPClient: client,
	}
}

/*RunGhostCleanerRequestHandlerParams contains all the parameters to send to the API endpoint
for the run ghost cleaner request handler operation typically these are written to a http.Request
*/
type RunGhostCleanerRequestHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the run ghost cleaner request handler params
func (o *RunGhostCleanerRequestHandlerParams) WithTimeout(timeout time.Duration) *RunGhostCleanerRequestHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the run ghost cleaner request handler params
func (o *RunGhostCleanerRequestHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the run ghost cleaner request handler params
func (o *RunGhostCleanerRequestHandlerParams) WithContext(ctx context.Context) *RunGhostCleanerRequestHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the run ghost cleaner request handler params
func (o *RunGhostCleanerRequestHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the run ghost cleaner request handler params
func (o *RunGhostCleanerRequestHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the run ghost cleaner request handler params
func (o *RunGhostCleanerRequestHandlerParams) WithHTTPClient(client *http.Client) *RunGhostCleanerRequestHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the run ghost cleaner request handler params
func (o *RunGhostCleanerRequestHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the run ghost cleaner request handler params
func (o *RunGhostCleanerRequestHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RunGhostCleanerRequestHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the run ghost cleaner request handler params
func (o *RunGhostCleanerRequestHandlerParams) WithNamespace(namespace string) *RunGhostCleanerRequestHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the run ghost cleaner request handler params
func (o *RunGhostCleanerRequestHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RunGhostCleanerRequestHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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

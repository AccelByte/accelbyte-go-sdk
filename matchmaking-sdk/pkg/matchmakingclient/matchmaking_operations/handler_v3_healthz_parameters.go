// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking_operations

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

// NewHandlerV3HealthzParams creates a new HandlerV3HealthzParams object
// with the default values initialized.
func NewHandlerV3HealthzParams() *HandlerV3HealthzParams {
	var ()
	return &HandlerV3HealthzParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewHandlerV3HealthzParamsWithTimeout creates a new HandlerV3HealthzParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewHandlerV3HealthzParamsWithTimeout(timeout time.Duration) *HandlerV3HealthzParams {
	var ()
	return &HandlerV3HealthzParams{

		timeout: timeout,
	}
}

// NewHandlerV3HealthzParamsWithContext creates a new HandlerV3HealthzParams object
// with the default values initialized, and the ability to set a context for a request
func NewHandlerV3HealthzParamsWithContext(ctx context.Context) *HandlerV3HealthzParams {
	var ()
	return &HandlerV3HealthzParams{

		Context: ctx,
	}
}

// NewHandlerV3HealthzParamsWithHTTPClient creates a new HandlerV3HealthzParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewHandlerV3HealthzParamsWithHTTPClient(client *http.Client) *HandlerV3HealthzParams {
	var ()
	return &HandlerV3HealthzParams{
		HTTPClient: client,
	}
}

/*HandlerV3HealthzParams contains all the parameters to send to the API endpoint
for the handler v3 healthz operation typically these are written to a http.Request
*/
type HandlerV3HealthzParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the handler v3 healthz params
func (o *HandlerV3HealthzParams) WithTimeout(timeout time.Duration) *HandlerV3HealthzParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the handler v3 healthz params
func (o *HandlerV3HealthzParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the handler v3 healthz params
func (o *HandlerV3HealthzParams) WithContext(ctx context.Context) *HandlerV3HealthzParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the handler v3 healthz params
func (o *HandlerV3HealthzParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the handler v3 healthz params
func (o *HandlerV3HealthzParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the handler v3 healthz params
func (o *HandlerV3HealthzParams) WithHTTPClient(client *http.Client) *HandlerV3HealthzParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the handler v3 healthz params
func (o *HandlerV3HealthzParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the handler v3 healthz params
func (o *HandlerV3HealthzParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *HandlerV3HealthzParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *HandlerV3HealthzParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

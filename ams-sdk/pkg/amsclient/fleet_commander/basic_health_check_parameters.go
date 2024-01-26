// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fleet_commander

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

// NewBasicHealthCheckParams creates a new BasicHealthCheckParams object
// with the default values initialized.
func NewBasicHealthCheckParams() *BasicHealthCheckParams {
	var ()
	return &BasicHealthCheckParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBasicHealthCheckParamsWithTimeout creates a new BasicHealthCheckParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBasicHealthCheckParamsWithTimeout(timeout time.Duration) *BasicHealthCheckParams {
	var ()
	return &BasicHealthCheckParams{

		timeout: timeout,
	}
}

// NewBasicHealthCheckParamsWithContext creates a new BasicHealthCheckParams object
// with the default values initialized, and the ability to set a context for a request
func NewBasicHealthCheckParamsWithContext(ctx context.Context) *BasicHealthCheckParams {
	var ()
	return &BasicHealthCheckParams{

		Context: ctx,
	}
}

// NewBasicHealthCheckParamsWithHTTPClient creates a new BasicHealthCheckParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBasicHealthCheckParamsWithHTTPClient(client *http.Client) *BasicHealthCheckParams {
	var ()
	return &BasicHealthCheckParams{
		HTTPClient: client,
	}
}

/*BasicHealthCheckParams contains all the parameters to send to the API endpoint
for the basic health check operation typically these are written to a http.Request
*/
type BasicHealthCheckParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the basic health check params
func (o *BasicHealthCheckParams) WithTimeout(timeout time.Duration) *BasicHealthCheckParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the basic health check params
func (o *BasicHealthCheckParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the basic health check params
func (o *BasicHealthCheckParams) WithContext(ctx context.Context) *BasicHealthCheckParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the basic health check params
func (o *BasicHealthCheckParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the basic health check params
func (o *BasicHealthCheckParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the basic health check params
func (o *BasicHealthCheckParams) WithHTTPClient(client *http.Client) *BasicHealthCheckParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the basic health check params
func (o *BasicHealthCheckParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the basic health check params
func (o *BasicHealthCheckParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BasicHealthCheckParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *BasicHealthCheckParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

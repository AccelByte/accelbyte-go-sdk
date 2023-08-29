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

// NewPortalHealthCheckParams creates a new PortalHealthCheckParams object
// with the default values initialized.
func NewPortalHealthCheckParams() *PortalHealthCheckParams {
	var ()
	return &PortalHealthCheckParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPortalHealthCheckParamsWithTimeout creates a new PortalHealthCheckParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPortalHealthCheckParamsWithTimeout(timeout time.Duration) *PortalHealthCheckParams {
	var ()
	return &PortalHealthCheckParams{

		timeout: timeout,
	}
}

// NewPortalHealthCheckParamsWithContext creates a new PortalHealthCheckParams object
// with the default values initialized, and the ability to set a context for a request
func NewPortalHealthCheckParamsWithContext(ctx context.Context) *PortalHealthCheckParams {
	var ()
	return &PortalHealthCheckParams{

		Context: ctx,
	}
}

// NewPortalHealthCheckParamsWithHTTPClient creates a new PortalHealthCheckParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPortalHealthCheckParamsWithHTTPClient(client *http.Client) *PortalHealthCheckParams {
	var ()
	return &PortalHealthCheckParams{
		HTTPClient: client,
	}
}

/*PortalHealthCheckParams contains all the parameters to send to the API endpoint
for the portal health check operation typically these are written to a http.Request
*/
type PortalHealthCheckParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the portal health check params
func (o *PortalHealthCheckParams) WithTimeout(timeout time.Duration) *PortalHealthCheckParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the portal health check params
func (o *PortalHealthCheckParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the portal health check params
func (o *PortalHealthCheckParams) WithContext(ctx context.Context) *PortalHealthCheckParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the portal health check params
func (o *PortalHealthCheckParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the portal health check params
func (o *PortalHealthCheckParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the portal health check params
func (o *PortalHealthCheckParams) WithHTTPClient(client *http.Client) *PortalHealthCheckParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the portal health check params
func (o *PortalHealthCheckParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the portal health check params
func (o *PortalHealthCheckParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *PortalHealthCheckParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

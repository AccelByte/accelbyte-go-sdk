// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package environment_variable

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

// NewAdminListEnvironmentVariablesParams creates a new AdminListEnvironmentVariablesParams object
// with the default values initialized.
func NewAdminListEnvironmentVariablesParams() *AdminListEnvironmentVariablesParams {
	var ()
	return &AdminListEnvironmentVariablesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListEnvironmentVariablesParamsWithTimeout creates a new AdminListEnvironmentVariablesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListEnvironmentVariablesParamsWithTimeout(timeout time.Duration) *AdminListEnvironmentVariablesParams {
	var ()
	return &AdminListEnvironmentVariablesParams{

		timeout: timeout,
	}
}

// NewAdminListEnvironmentVariablesParamsWithContext creates a new AdminListEnvironmentVariablesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListEnvironmentVariablesParamsWithContext(ctx context.Context) *AdminListEnvironmentVariablesParams {
	var ()
	return &AdminListEnvironmentVariablesParams{

		Context: ctx,
	}
}

// NewAdminListEnvironmentVariablesParamsWithHTTPClient creates a new AdminListEnvironmentVariablesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListEnvironmentVariablesParamsWithHTTPClient(client *http.Client) *AdminListEnvironmentVariablesParams {
	var ()
	return &AdminListEnvironmentVariablesParams{
		HTTPClient: client,
	}
}

/*AdminListEnvironmentVariablesParams contains all the parameters to send to the API endpoint
for the admin list environment variables operation typically these are written to a http.Request
*/
type AdminListEnvironmentVariablesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin list environment variables params
func (o *AdminListEnvironmentVariablesParams) WithTimeout(timeout time.Duration) *AdminListEnvironmentVariablesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list environment variables params
func (o *AdminListEnvironmentVariablesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list environment variables params
func (o *AdminListEnvironmentVariablesParams) WithContext(ctx context.Context) *AdminListEnvironmentVariablesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list environment variables params
func (o *AdminListEnvironmentVariablesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list environment variables params
func (o *AdminListEnvironmentVariablesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list environment variables params
func (o *AdminListEnvironmentVariablesParams) WithHTTPClient(client *http.Client) *AdminListEnvironmentVariablesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list environment variables params
func (o *AdminListEnvironmentVariablesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list environment variables params
func (o *AdminListEnvironmentVariablesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListEnvironmentVariablesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

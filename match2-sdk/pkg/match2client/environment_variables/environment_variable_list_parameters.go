// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package environment_variables

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

// NewEnvironmentVariableListParams creates a new EnvironmentVariableListParams object
// with the default values initialized.
func NewEnvironmentVariableListParams() *EnvironmentVariableListParams {
	var ()
	return &EnvironmentVariableListParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewEnvironmentVariableListParamsWithTimeout creates a new EnvironmentVariableListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewEnvironmentVariableListParamsWithTimeout(timeout time.Duration) *EnvironmentVariableListParams {
	var ()
	return &EnvironmentVariableListParams{

		timeout: timeout,
	}
}

// NewEnvironmentVariableListParamsWithContext creates a new EnvironmentVariableListParams object
// with the default values initialized, and the ability to set a context for a request
func NewEnvironmentVariableListParamsWithContext(ctx context.Context) *EnvironmentVariableListParams {
	var ()
	return &EnvironmentVariableListParams{

		Context: ctx,
	}
}

// NewEnvironmentVariableListParamsWithHTTPClient creates a new EnvironmentVariableListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewEnvironmentVariableListParamsWithHTTPClient(client *http.Client) *EnvironmentVariableListParams {
	var ()
	return &EnvironmentVariableListParams{
		HTTPClient: client,
	}
}

/*EnvironmentVariableListParams contains all the parameters to send to the API endpoint
for the environment variable list operation typically these are written to a http.Request
*/
type EnvironmentVariableListParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the environment variable list params
func (o *EnvironmentVariableListParams) WithTimeout(timeout time.Duration) *EnvironmentVariableListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the environment variable list params
func (o *EnvironmentVariableListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the environment variable list params
func (o *EnvironmentVariableListParams) WithContext(ctx context.Context) *EnvironmentVariableListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the environment variable list params
func (o *EnvironmentVariableListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the environment variable list params
func (o *EnvironmentVariableListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the environment variable list params
func (o *EnvironmentVariableListParams) WithHTTPClient(client *http.Client) *EnvironmentVariableListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the environment variable list params
func (o *EnvironmentVariableListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the environment variable list params
func (o *EnvironmentVariableListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *EnvironmentVariableListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

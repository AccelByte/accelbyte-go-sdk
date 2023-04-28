// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// NewAdminDisableMyAuthenticatorV4Params creates a new AdminDisableMyAuthenticatorV4Params object
// with the default values initialized.
func NewAdminDisableMyAuthenticatorV4Params() *AdminDisableMyAuthenticatorV4Params {
	var ()
	return &AdminDisableMyAuthenticatorV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDisableMyAuthenticatorV4ParamsWithTimeout creates a new AdminDisableMyAuthenticatorV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDisableMyAuthenticatorV4ParamsWithTimeout(timeout time.Duration) *AdminDisableMyAuthenticatorV4Params {
	var ()
	return &AdminDisableMyAuthenticatorV4Params{

		timeout: timeout,
	}
}

// NewAdminDisableMyAuthenticatorV4ParamsWithContext creates a new AdminDisableMyAuthenticatorV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDisableMyAuthenticatorV4ParamsWithContext(ctx context.Context) *AdminDisableMyAuthenticatorV4Params {
	var ()
	return &AdminDisableMyAuthenticatorV4Params{

		Context: ctx,
	}
}

// NewAdminDisableMyAuthenticatorV4ParamsWithHTTPClient creates a new AdminDisableMyAuthenticatorV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDisableMyAuthenticatorV4ParamsWithHTTPClient(client *http.Client) *AdminDisableMyAuthenticatorV4Params {
	var ()
	return &AdminDisableMyAuthenticatorV4Params{
		HTTPClient: client,
	}
}

/*AdminDisableMyAuthenticatorV4Params contains all the parameters to send to the API endpoint
for the admin disable my authenticator v4 operation typically these are written to a http.Request
*/
type AdminDisableMyAuthenticatorV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin disable my authenticator v4 params
func (o *AdminDisableMyAuthenticatorV4Params) WithTimeout(timeout time.Duration) *AdminDisableMyAuthenticatorV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin disable my authenticator v4 params
func (o *AdminDisableMyAuthenticatorV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin disable my authenticator v4 params
func (o *AdminDisableMyAuthenticatorV4Params) WithContext(ctx context.Context) *AdminDisableMyAuthenticatorV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin disable my authenticator v4 params
func (o *AdminDisableMyAuthenticatorV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin disable my authenticator v4 params
func (o *AdminDisableMyAuthenticatorV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin disable my authenticator v4 params
func (o *AdminDisableMyAuthenticatorV4Params) WithHTTPClient(client *http.Client) *AdminDisableMyAuthenticatorV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin disable my authenticator v4 params
func (o *AdminDisableMyAuthenticatorV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin disable my authenticator v4 params
func (o *AdminDisableMyAuthenticatorV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDisableMyAuthenticatorV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

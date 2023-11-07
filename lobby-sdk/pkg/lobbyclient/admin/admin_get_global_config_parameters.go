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

// NewAdminGetGlobalConfigParams creates a new AdminGetGlobalConfigParams object
// with the default values initialized.
func NewAdminGetGlobalConfigParams() *AdminGetGlobalConfigParams {
	var ()
	return &AdminGetGlobalConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetGlobalConfigParamsWithTimeout creates a new AdminGetGlobalConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetGlobalConfigParamsWithTimeout(timeout time.Duration) *AdminGetGlobalConfigParams {
	var ()
	return &AdminGetGlobalConfigParams{

		timeout: timeout,
	}
}

// NewAdminGetGlobalConfigParamsWithContext creates a new AdminGetGlobalConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetGlobalConfigParamsWithContext(ctx context.Context) *AdminGetGlobalConfigParams {
	var ()
	return &AdminGetGlobalConfigParams{

		Context: ctx,
	}
}

// NewAdminGetGlobalConfigParamsWithHTTPClient creates a new AdminGetGlobalConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetGlobalConfigParamsWithHTTPClient(client *http.Client) *AdminGetGlobalConfigParams {
	var ()
	return &AdminGetGlobalConfigParams{
		HTTPClient: client,
	}
}

/*AdminGetGlobalConfigParams contains all the parameters to send to the API endpoint
for the admin get global config operation typically these are written to a http.Request
*/
type AdminGetGlobalConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get global config params
func (o *AdminGetGlobalConfigParams) WithTimeout(timeout time.Duration) *AdminGetGlobalConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get global config params
func (o *AdminGetGlobalConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get global config params
func (o *AdminGetGlobalConfigParams) WithContext(ctx context.Context) *AdminGetGlobalConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get global config params
func (o *AdminGetGlobalConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get global config params
func (o *AdminGetGlobalConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get global config params
func (o *AdminGetGlobalConfigParams) WithHTTPClient(client *http.Client) *AdminGetGlobalConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get global config params
func (o *AdminGetGlobalConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get global config params
func (o *AdminGetGlobalConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetGlobalConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

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

// NewAdminEnableMyEmailV4Params creates a new AdminEnableMyEmailV4Params object
// with the default values initialized.
func NewAdminEnableMyEmailV4Params() *AdminEnableMyEmailV4Params {
	var ()
	return &AdminEnableMyEmailV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminEnableMyEmailV4ParamsWithTimeout creates a new AdminEnableMyEmailV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminEnableMyEmailV4ParamsWithTimeout(timeout time.Duration) *AdminEnableMyEmailV4Params {
	var ()
	return &AdminEnableMyEmailV4Params{

		timeout: timeout,
	}
}

// NewAdminEnableMyEmailV4ParamsWithContext creates a new AdminEnableMyEmailV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminEnableMyEmailV4ParamsWithContext(ctx context.Context) *AdminEnableMyEmailV4Params {
	var ()
	return &AdminEnableMyEmailV4Params{

		Context: ctx,
	}
}

// NewAdminEnableMyEmailV4ParamsWithHTTPClient creates a new AdminEnableMyEmailV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminEnableMyEmailV4ParamsWithHTTPClient(client *http.Client) *AdminEnableMyEmailV4Params {
	var ()
	return &AdminEnableMyEmailV4Params{
		HTTPClient: client,
	}
}

/*AdminEnableMyEmailV4Params contains all the parameters to send to the API endpoint
for the admin enable my email v4 operation typically these are written to a http.Request
*/
type AdminEnableMyEmailV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Code
	  code

	*/
	Code string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin enable my email v4 params
func (o *AdminEnableMyEmailV4Params) WithTimeout(timeout time.Duration) *AdminEnableMyEmailV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin enable my email v4 params
func (o *AdminEnableMyEmailV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin enable my email v4 params
func (o *AdminEnableMyEmailV4Params) WithContext(ctx context.Context) *AdminEnableMyEmailV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin enable my email v4 params
func (o *AdminEnableMyEmailV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin enable my email v4 params
func (o *AdminEnableMyEmailV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin enable my email v4 params
func (o *AdminEnableMyEmailV4Params) WithHTTPClient(client *http.Client) *AdminEnableMyEmailV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin enable my email v4 params
func (o *AdminEnableMyEmailV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin enable my email v4 params
func (o *AdminEnableMyEmailV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCode adds the code to the admin enable my email v4 params
func (o *AdminEnableMyEmailV4Params) WithCode(code string) *AdminEnableMyEmailV4Params {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the admin enable my email v4 params
func (o *AdminEnableMyEmailV4Params) SetCode(code string) {
	o.Code = code
}

// WriteToRequest writes these params to a swagger request
func (o *AdminEnableMyEmailV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param code
	frCode := o.Code
	fCode := frCode
	if fCode != "" {
		if err := r.SetFormParam("code", fCode); err != nil {
			return err
		}
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

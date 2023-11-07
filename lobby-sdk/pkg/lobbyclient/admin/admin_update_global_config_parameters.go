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

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewAdminUpdateGlobalConfigParams creates a new AdminUpdateGlobalConfigParams object
// with the default values initialized.
func NewAdminUpdateGlobalConfigParams() *AdminUpdateGlobalConfigParams {
	var ()
	return &AdminUpdateGlobalConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateGlobalConfigParamsWithTimeout creates a new AdminUpdateGlobalConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateGlobalConfigParamsWithTimeout(timeout time.Duration) *AdminUpdateGlobalConfigParams {
	var ()
	return &AdminUpdateGlobalConfigParams{

		timeout: timeout,
	}
}

// NewAdminUpdateGlobalConfigParamsWithContext creates a new AdminUpdateGlobalConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateGlobalConfigParamsWithContext(ctx context.Context) *AdminUpdateGlobalConfigParams {
	var ()
	return &AdminUpdateGlobalConfigParams{

		Context: ctx,
	}
}

// NewAdminUpdateGlobalConfigParamsWithHTTPClient creates a new AdminUpdateGlobalConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateGlobalConfigParamsWithHTTPClient(client *http.Client) *AdminUpdateGlobalConfigParams {
	var ()
	return &AdminUpdateGlobalConfigParams{
		HTTPClient: client,
	}
}

/*AdminUpdateGlobalConfigParams contains all the parameters to send to the API endpoint
for the admin update global config operation typically these are written to a http.Request
*/
type AdminUpdateGlobalConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelPutGlobalConfigurationRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update global config params
func (o *AdminUpdateGlobalConfigParams) WithTimeout(timeout time.Duration) *AdminUpdateGlobalConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update global config params
func (o *AdminUpdateGlobalConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update global config params
func (o *AdminUpdateGlobalConfigParams) WithContext(ctx context.Context) *AdminUpdateGlobalConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update global config params
func (o *AdminUpdateGlobalConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update global config params
func (o *AdminUpdateGlobalConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update global config params
func (o *AdminUpdateGlobalConfigParams) WithHTTPClient(client *http.Client) *AdminUpdateGlobalConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update global config params
func (o *AdminUpdateGlobalConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update global config params
func (o *AdminUpdateGlobalConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update global config params
func (o *AdminUpdateGlobalConfigParams) WithBody(body *lobbyclientmodels.ModelPutGlobalConfigurationRequest) *AdminUpdateGlobalConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update global config params
func (o *AdminUpdateGlobalConfigParams) SetBody(body *lobbyclientmodels.ModelPutGlobalConfigurationRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateGlobalConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
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

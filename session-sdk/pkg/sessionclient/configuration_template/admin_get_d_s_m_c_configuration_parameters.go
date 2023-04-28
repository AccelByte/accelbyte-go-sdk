// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration_template

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

// NewAdminGetDSMCConfigurationParams creates a new AdminGetDSMCConfigurationParams object
// with the default values initialized.
func NewAdminGetDSMCConfigurationParams() *AdminGetDSMCConfigurationParams {
	var ()
	return &AdminGetDSMCConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetDSMCConfigurationParamsWithTimeout creates a new AdminGetDSMCConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetDSMCConfigurationParamsWithTimeout(timeout time.Duration) *AdminGetDSMCConfigurationParams {
	var ()
	return &AdminGetDSMCConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminGetDSMCConfigurationParamsWithContext creates a new AdminGetDSMCConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetDSMCConfigurationParamsWithContext(ctx context.Context) *AdminGetDSMCConfigurationParams {
	var ()
	return &AdminGetDSMCConfigurationParams{

		Context: ctx,
	}
}

// NewAdminGetDSMCConfigurationParamsWithHTTPClient creates a new AdminGetDSMCConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetDSMCConfigurationParamsWithHTTPClient(client *http.Client) *AdminGetDSMCConfigurationParams {
	var ()
	return &AdminGetDSMCConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminGetDSMCConfigurationParams contains all the parameters to send to the API endpoint
for the admin get dsmc configuration operation typically these are written to a http.Request
*/
type AdminGetDSMCConfigurationParams struct {

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
}

// WithTimeout adds the timeout to the admin get dsmc configuration params
func (o *AdminGetDSMCConfigurationParams) WithTimeout(timeout time.Duration) *AdminGetDSMCConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get dsmc configuration params
func (o *AdminGetDSMCConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get dsmc configuration params
func (o *AdminGetDSMCConfigurationParams) WithContext(ctx context.Context) *AdminGetDSMCConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get dsmc configuration params
func (o *AdminGetDSMCConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get dsmc configuration params
func (o *AdminGetDSMCConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get dsmc configuration params
func (o *AdminGetDSMCConfigurationParams) WithHTTPClient(client *http.Client) *AdminGetDSMCConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get dsmc configuration params
func (o *AdminGetDSMCConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get dsmc configuration params
func (o *AdminGetDSMCConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get dsmc configuration params
func (o *AdminGetDSMCConfigurationParams) WithNamespace(namespace string) *AdminGetDSMCConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get dsmc configuration params
func (o *AdminGetDSMCConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetDSMCConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

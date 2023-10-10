// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration

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

// NewAdminResetServicesConfigurationParams creates a new AdminResetServicesConfigurationParams object
// with the default values initialized.
func NewAdminResetServicesConfigurationParams() *AdminResetServicesConfigurationParams {
	var ()
	return &AdminResetServicesConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminResetServicesConfigurationParamsWithTimeout creates a new AdminResetServicesConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminResetServicesConfigurationParamsWithTimeout(timeout time.Duration) *AdminResetServicesConfigurationParams {
	var ()
	return &AdminResetServicesConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminResetServicesConfigurationParamsWithContext creates a new AdminResetServicesConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminResetServicesConfigurationParamsWithContext(ctx context.Context) *AdminResetServicesConfigurationParams {
	var ()
	return &AdminResetServicesConfigurationParams{

		Context: ctx,
	}
}

// NewAdminResetServicesConfigurationParamsWithHTTPClient creates a new AdminResetServicesConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminResetServicesConfigurationParamsWithHTTPClient(client *http.Client) *AdminResetServicesConfigurationParams {
	var ()
	return &AdminResetServicesConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminResetServicesConfigurationParams contains all the parameters to send to the API endpoint
for the admin reset services configuration operation typically these are written to a http.Request
*/
type AdminResetServicesConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin reset services configuration params
func (o *AdminResetServicesConfigurationParams) WithTimeout(timeout time.Duration) *AdminResetServicesConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin reset services configuration params
func (o *AdminResetServicesConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin reset services configuration params
func (o *AdminResetServicesConfigurationParams) WithContext(ctx context.Context) *AdminResetServicesConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin reset services configuration params
func (o *AdminResetServicesConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin reset services configuration params
func (o *AdminResetServicesConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin reset services configuration params
func (o *AdminResetServicesConfigurationParams) WithHTTPClient(client *http.Client) *AdminResetServicesConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin reset services configuration params
func (o *AdminResetServicesConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin reset services configuration params
func (o *AdminResetServicesConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin reset services configuration params
func (o *AdminResetServicesConfigurationParams) WithNamespace(namespace string) *AdminResetServicesConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin reset services configuration params
func (o *AdminResetServicesConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminResetServicesConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

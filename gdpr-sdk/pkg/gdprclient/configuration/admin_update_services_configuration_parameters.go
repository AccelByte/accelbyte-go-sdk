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

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

// NewAdminUpdateServicesConfigurationParams creates a new AdminUpdateServicesConfigurationParams object
// with the default values initialized.
func NewAdminUpdateServicesConfigurationParams() *AdminUpdateServicesConfigurationParams {
	var ()
	return &AdminUpdateServicesConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateServicesConfigurationParamsWithTimeout creates a new AdminUpdateServicesConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateServicesConfigurationParamsWithTimeout(timeout time.Duration) *AdminUpdateServicesConfigurationParams {
	var ()
	return &AdminUpdateServicesConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminUpdateServicesConfigurationParamsWithContext creates a new AdminUpdateServicesConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateServicesConfigurationParamsWithContext(ctx context.Context) *AdminUpdateServicesConfigurationParams {
	var ()
	return &AdminUpdateServicesConfigurationParams{

		Context: ctx,
	}
}

// NewAdminUpdateServicesConfigurationParamsWithHTTPClient creates a new AdminUpdateServicesConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateServicesConfigurationParamsWithHTTPClient(client *http.Client) *AdminUpdateServicesConfigurationParams {
	var ()
	return &AdminUpdateServicesConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminUpdateServicesConfigurationParams contains all the parameters to send to the API endpoint
for the admin update services configuration operation typically these are written to a http.Request
*/
type AdminUpdateServicesConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *gdprclientmodels.DTOServiceConfigurationUpdateRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update services configuration params
func (o *AdminUpdateServicesConfigurationParams) WithTimeout(timeout time.Duration) *AdminUpdateServicesConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update services configuration params
func (o *AdminUpdateServicesConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update services configuration params
func (o *AdminUpdateServicesConfigurationParams) WithContext(ctx context.Context) *AdminUpdateServicesConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update services configuration params
func (o *AdminUpdateServicesConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update services configuration params
func (o *AdminUpdateServicesConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update services configuration params
func (o *AdminUpdateServicesConfigurationParams) WithHTTPClient(client *http.Client) *AdminUpdateServicesConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update services configuration params
func (o *AdminUpdateServicesConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update services configuration params
func (o *AdminUpdateServicesConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update services configuration params
func (o *AdminUpdateServicesConfigurationParams) WithBody(body *gdprclientmodels.DTOServiceConfigurationUpdateRequest) *AdminUpdateServicesConfigurationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update services configuration params
func (o *AdminUpdateServicesConfigurationParams) SetBody(body *gdprclientmodels.DTOServiceConfigurationUpdateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update services configuration params
func (o *AdminUpdateServicesConfigurationParams) WithNamespace(namespace string) *AdminUpdateServicesConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update services configuration params
func (o *AdminUpdateServicesConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateServicesConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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

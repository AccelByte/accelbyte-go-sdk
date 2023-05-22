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

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// NewAdminUpdateConfigurationAlertV1Params creates a new AdminUpdateConfigurationAlertV1Params object
// with the default values initialized.
func NewAdminUpdateConfigurationAlertV1Params() *AdminUpdateConfigurationAlertV1Params {
	var ()
	return &AdminUpdateConfigurationAlertV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateConfigurationAlertV1ParamsWithTimeout creates a new AdminUpdateConfigurationAlertV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateConfigurationAlertV1ParamsWithTimeout(timeout time.Duration) *AdminUpdateConfigurationAlertV1Params {
	var ()
	return &AdminUpdateConfigurationAlertV1Params{

		timeout: timeout,
	}
}

// NewAdminUpdateConfigurationAlertV1ParamsWithContext creates a new AdminUpdateConfigurationAlertV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateConfigurationAlertV1ParamsWithContext(ctx context.Context) *AdminUpdateConfigurationAlertV1Params {
	var ()
	return &AdminUpdateConfigurationAlertV1Params{

		Context: ctx,
	}
}

// NewAdminUpdateConfigurationAlertV1ParamsWithHTTPClient creates a new AdminUpdateConfigurationAlertV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateConfigurationAlertV1ParamsWithHTTPClient(client *http.Client) *AdminUpdateConfigurationAlertV1Params {
	var ()
	return &AdminUpdateConfigurationAlertV1Params{
		HTTPClient: client,
	}
}

/*AdminUpdateConfigurationAlertV1Params contains all the parameters to send to the API endpoint
for the admin update configuration alert v1 operation typically these are written to a http.Request
*/
type AdminUpdateConfigurationAlertV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsConfigAlertRequestCreate
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update configuration alert v1 params
func (o *AdminUpdateConfigurationAlertV1Params) WithTimeout(timeout time.Duration) *AdminUpdateConfigurationAlertV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update configuration alert v1 params
func (o *AdminUpdateConfigurationAlertV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update configuration alert v1 params
func (o *AdminUpdateConfigurationAlertV1Params) WithContext(ctx context.Context) *AdminUpdateConfigurationAlertV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update configuration alert v1 params
func (o *AdminUpdateConfigurationAlertV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update configuration alert v1 params
func (o *AdminUpdateConfigurationAlertV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update configuration alert v1 params
func (o *AdminUpdateConfigurationAlertV1Params) WithHTTPClient(client *http.Client) *AdminUpdateConfigurationAlertV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update configuration alert v1 params
func (o *AdminUpdateConfigurationAlertV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update configuration alert v1 params
func (o *AdminUpdateConfigurationAlertV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update configuration alert v1 params
func (o *AdminUpdateConfigurationAlertV1Params) WithBody(body *sessionclientmodels.ApimodelsConfigAlertRequestCreate) *AdminUpdateConfigurationAlertV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update configuration alert v1 params
func (o *AdminUpdateConfigurationAlertV1Params) SetBody(body *sessionclientmodels.ApimodelsConfigAlertRequestCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update configuration alert v1 params
func (o *AdminUpdateConfigurationAlertV1Params) WithNamespace(namespace string) *AdminUpdateConfigurationAlertV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update configuration alert v1 params
func (o *AdminUpdateConfigurationAlertV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateConfigurationAlertV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

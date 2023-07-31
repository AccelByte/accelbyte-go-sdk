// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package service_plugin_config

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUpdateRevocationPluginConfigParams creates a new UpdateRevocationPluginConfigParams object
// with the default values initialized.
func NewUpdateRevocationPluginConfigParams() *UpdateRevocationPluginConfigParams {
	var ()
	return &UpdateRevocationPluginConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateRevocationPluginConfigParamsWithTimeout creates a new UpdateRevocationPluginConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateRevocationPluginConfigParamsWithTimeout(timeout time.Duration) *UpdateRevocationPluginConfigParams {
	var ()
	return &UpdateRevocationPluginConfigParams{

		timeout: timeout,
	}
}

// NewUpdateRevocationPluginConfigParamsWithContext creates a new UpdateRevocationPluginConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateRevocationPluginConfigParamsWithContext(ctx context.Context) *UpdateRevocationPluginConfigParams {
	var ()
	return &UpdateRevocationPluginConfigParams{

		Context: ctx,
	}
}

// NewUpdateRevocationPluginConfigParamsWithHTTPClient creates a new UpdateRevocationPluginConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateRevocationPluginConfigParamsWithHTTPClient(client *http.Client) *UpdateRevocationPluginConfigParams {
	var ()
	return &UpdateRevocationPluginConfigParams{
		HTTPClient: client,
	}
}

/*UpdateRevocationPluginConfigParams contains all the parameters to send to the API endpoint
for the update revocation plugin config operation typically these are written to a http.Request
*/
type UpdateRevocationPluginConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.RevocationPluginConfigUpdate
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update revocation plugin config params
func (o *UpdateRevocationPluginConfigParams) WithTimeout(timeout time.Duration) *UpdateRevocationPluginConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update revocation plugin config params
func (o *UpdateRevocationPluginConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update revocation plugin config params
func (o *UpdateRevocationPluginConfigParams) WithContext(ctx context.Context) *UpdateRevocationPluginConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update revocation plugin config params
func (o *UpdateRevocationPluginConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update revocation plugin config params
func (o *UpdateRevocationPluginConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update revocation plugin config params
func (o *UpdateRevocationPluginConfigParams) WithHTTPClient(client *http.Client) *UpdateRevocationPluginConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update revocation plugin config params
func (o *UpdateRevocationPluginConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update revocation plugin config params
func (o *UpdateRevocationPluginConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update revocation plugin config params
func (o *UpdateRevocationPluginConfigParams) WithBody(body *platformclientmodels.RevocationPluginConfigUpdate) *UpdateRevocationPluginConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update revocation plugin config params
func (o *UpdateRevocationPluginConfigParams) SetBody(body *platformclientmodels.RevocationPluginConfigUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update revocation plugin config params
func (o *UpdateRevocationPluginConfigParams) WithNamespace(namespace string) *UpdateRevocationPluginConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update revocation plugin config params
func (o *UpdateRevocationPluginConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateRevocationPluginConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

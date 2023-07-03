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

// NewUpdateSectionPluginConfigParams creates a new UpdateSectionPluginConfigParams object
// with the default values initialized.
func NewUpdateSectionPluginConfigParams() *UpdateSectionPluginConfigParams {
	var ()
	return &UpdateSectionPluginConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateSectionPluginConfigParamsWithTimeout creates a new UpdateSectionPluginConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateSectionPluginConfigParamsWithTimeout(timeout time.Duration) *UpdateSectionPluginConfigParams {
	var ()
	return &UpdateSectionPluginConfigParams{

		timeout: timeout,
	}
}

// NewUpdateSectionPluginConfigParamsWithContext creates a new UpdateSectionPluginConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateSectionPluginConfigParamsWithContext(ctx context.Context) *UpdateSectionPluginConfigParams {
	var ()
	return &UpdateSectionPluginConfigParams{

		Context: ctx,
	}
}

// NewUpdateSectionPluginConfigParamsWithHTTPClient creates a new UpdateSectionPluginConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateSectionPluginConfigParamsWithHTTPClient(client *http.Client) *UpdateSectionPluginConfigParams {
	var ()
	return &UpdateSectionPluginConfigParams{
		HTTPClient: client,
	}
}

/*UpdateSectionPluginConfigParams contains all the parameters to send to the API endpoint
for the update section plugin config operation typically these are written to a http.Request
*/
type UpdateSectionPluginConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.SectionPluginConfigUpdate
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update section plugin config params
func (o *UpdateSectionPluginConfigParams) WithTimeout(timeout time.Duration) *UpdateSectionPluginConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update section plugin config params
func (o *UpdateSectionPluginConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update section plugin config params
func (o *UpdateSectionPluginConfigParams) WithContext(ctx context.Context) *UpdateSectionPluginConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update section plugin config params
func (o *UpdateSectionPluginConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update section plugin config params
func (o *UpdateSectionPluginConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update section plugin config params
func (o *UpdateSectionPluginConfigParams) WithHTTPClient(client *http.Client) *UpdateSectionPluginConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update section plugin config params
func (o *UpdateSectionPluginConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update section plugin config params
func (o *UpdateSectionPluginConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update section plugin config params
func (o *UpdateSectionPluginConfigParams) WithBody(body *platformclientmodels.SectionPluginConfigUpdate) *UpdateSectionPluginConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update section plugin config params
func (o *UpdateSectionPluginConfigParams) SetBody(body *platformclientmodels.SectionPluginConfigUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update section plugin config params
func (o *UpdateSectionPluginConfigParams) WithNamespace(namespace string) *UpdateSectionPluginConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update section plugin config params
func (o *UpdateSectionPluginConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateSectionPluginConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

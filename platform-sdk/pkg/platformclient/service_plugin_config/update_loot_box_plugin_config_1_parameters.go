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

// NewUpdateLootBoxPluginConfig1Params creates a new UpdateLootBoxPluginConfig1Params object
// with the default values initialized.
func NewUpdateLootBoxPluginConfig1Params() *UpdateLootBoxPluginConfig1Params {
	var ()
	return &UpdateLootBoxPluginConfig1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateLootBoxPluginConfig1ParamsWithTimeout creates a new UpdateLootBoxPluginConfig1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateLootBoxPluginConfig1ParamsWithTimeout(timeout time.Duration) *UpdateLootBoxPluginConfig1Params {
	var ()
	return &UpdateLootBoxPluginConfig1Params{

		timeout: timeout,
	}
}

// NewUpdateLootBoxPluginConfig1ParamsWithContext creates a new UpdateLootBoxPluginConfig1Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateLootBoxPluginConfig1ParamsWithContext(ctx context.Context) *UpdateLootBoxPluginConfig1Params {
	var ()
	return &UpdateLootBoxPluginConfig1Params{

		Context: ctx,
	}
}

// NewUpdateLootBoxPluginConfig1ParamsWithHTTPClient creates a new UpdateLootBoxPluginConfig1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateLootBoxPluginConfig1ParamsWithHTTPClient(client *http.Client) *UpdateLootBoxPluginConfig1Params {
	var ()
	return &UpdateLootBoxPluginConfig1Params{
		HTTPClient: client,
	}
}

/*UpdateLootBoxPluginConfig1Params contains all the parameters to send to the API endpoint
for the update loot box plugin config 1 operation typically these are written to a http.Request
*/
type UpdateLootBoxPluginConfig1Params struct {

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

// WithTimeout adds the timeout to the update loot box plugin config 1 params
func (o *UpdateLootBoxPluginConfig1Params) WithTimeout(timeout time.Duration) *UpdateLootBoxPluginConfig1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update loot box plugin config 1 params
func (o *UpdateLootBoxPluginConfig1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update loot box plugin config 1 params
func (o *UpdateLootBoxPluginConfig1Params) WithContext(ctx context.Context) *UpdateLootBoxPluginConfig1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update loot box plugin config 1 params
func (o *UpdateLootBoxPluginConfig1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update loot box plugin config 1 params
func (o *UpdateLootBoxPluginConfig1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update loot box plugin config 1 params
func (o *UpdateLootBoxPluginConfig1Params) WithHTTPClient(client *http.Client) *UpdateLootBoxPluginConfig1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update loot box plugin config 1 params
func (o *UpdateLootBoxPluginConfig1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update loot box plugin config 1 params
func (o *UpdateLootBoxPluginConfig1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update loot box plugin config 1 params
func (o *UpdateLootBoxPluginConfig1Params) WithBody(body *platformclientmodels.RevocationPluginConfigUpdate) *UpdateLootBoxPluginConfig1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update loot box plugin config 1 params
func (o *UpdateLootBoxPluginConfig1Params) SetBody(body *platformclientmodels.RevocationPluginConfigUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update loot box plugin config 1 params
func (o *UpdateLootBoxPluginConfig1Params) WithNamespace(namespace string) *UpdateLootBoxPluginConfig1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update loot box plugin config 1 params
func (o *UpdateLootBoxPluginConfig1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateLootBoxPluginConfig1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

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
)

// NewDeleteLootBoxPluginConfig1Params creates a new DeleteLootBoxPluginConfig1Params object
// with the default values initialized.
func NewDeleteLootBoxPluginConfig1Params() *DeleteLootBoxPluginConfig1Params {
	var ()
	return &DeleteLootBoxPluginConfig1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteLootBoxPluginConfig1ParamsWithTimeout creates a new DeleteLootBoxPluginConfig1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteLootBoxPluginConfig1ParamsWithTimeout(timeout time.Duration) *DeleteLootBoxPluginConfig1Params {
	var ()
	return &DeleteLootBoxPluginConfig1Params{

		timeout: timeout,
	}
}

// NewDeleteLootBoxPluginConfig1ParamsWithContext creates a new DeleteLootBoxPluginConfig1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteLootBoxPluginConfig1ParamsWithContext(ctx context.Context) *DeleteLootBoxPluginConfig1Params {
	var ()
	return &DeleteLootBoxPluginConfig1Params{

		Context: ctx,
	}
}

// NewDeleteLootBoxPluginConfig1ParamsWithHTTPClient creates a new DeleteLootBoxPluginConfig1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteLootBoxPluginConfig1ParamsWithHTTPClient(client *http.Client) *DeleteLootBoxPluginConfig1Params {
	var ()
	return &DeleteLootBoxPluginConfig1Params{
		HTTPClient: client,
	}
}

/*DeleteLootBoxPluginConfig1Params contains all the parameters to send to the API endpoint
for the delete loot box plugin config 1 operation typically these are written to a http.Request
*/
type DeleteLootBoxPluginConfig1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete loot box plugin config 1 params
func (o *DeleteLootBoxPluginConfig1Params) WithTimeout(timeout time.Duration) *DeleteLootBoxPluginConfig1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete loot box plugin config 1 params
func (o *DeleteLootBoxPluginConfig1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete loot box plugin config 1 params
func (o *DeleteLootBoxPluginConfig1Params) WithContext(ctx context.Context) *DeleteLootBoxPluginConfig1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete loot box plugin config 1 params
func (o *DeleteLootBoxPluginConfig1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete loot box plugin config 1 params
func (o *DeleteLootBoxPluginConfig1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete loot box plugin config 1 params
func (o *DeleteLootBoxPluginConfig1Params) WithHTTPClient(client *http.Client) *DeleteLootBoxPluginConfig1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete loot box plugin config 1 params
func (o *DeleteLootBoxPluginConfig1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete loot box plugin config 1 params
func (o *DeleteLootBoxPluginConfig1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete loot box plugin config 1 params
func (o *DeleteLootBoxPluginConfig1Params) WithNamespace(namespace string) *DeleteLootBoxPluginConfig1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete loot box plugin config 1 params
func (o *DeleteLootBoxPluginConfig1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteLootBoxPluginConfig1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

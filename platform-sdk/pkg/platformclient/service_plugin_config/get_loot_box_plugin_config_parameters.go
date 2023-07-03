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

// NewGetLootBoxPluginConfigParams creates a new GetLootBoxPluginConfigParams object
// with the default values initialized.
func NewGetLootBoxPluginConfigParams() *GetLootBoxPluginConfigParams {
	var ()
	return &GetLootBoxPluginConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetLootBoxPluginConfigParamsWithTimeout creates a new GetLootBoxPluginConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetLootBoxPluginConfigParamsWithTimeout(timeout time.Duration) *GetLootBoxPluginConfigParams {
	var ()
	return &GetLootBoxPluginConfigParams{

		timeout: timeout,
	}
}

// NewGetLootBoxPluginConfigParamsWithContext creates a new GetLootBoxPluginConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetLootBoxPluginConfigParamsWithContext(ctx context.Context) *GetLootBoxPluginConfigParams {
	var ()
	return &GetLootBoxPluginConfigParams{

		Context: ctx,
	}
}

// NewGetLootBoxPluginConfigParamsWithHTTPClient creates a new GetLootBoxPluginConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetLootBoxPluginConfigParamsWithHTTPClient(client *http.Client) *GetLootBoxPluginConfigParams {
	var ()
	return &GetLootBoxPluginConfigParams{
		HTTPClient: client,
	}
}

/*GetLootBoxPluginConfigParams contains all the parameters to send to the API endpoint
for the get loot box plugin config operation typically these are written to a http.Request
*/
type GetLootBoxPluginConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get loot box plugin config params
func (o *GetLootBoxPluginConfigParams) WithTimeout(timeout time.Duration) *GetLootBoxPluginConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get loot box plugin config params
func (o *GetLootBoxPluginConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get loot box plugin config params
func (o *GetLootBoxPluginConfigParams) WithContext(ctx context.Context) *GetLootBoxPluginConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get loot box plugin config params
func (o *GetLootBoxPluginConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get loot box plugin config params
func (o *GetLootBoxPluginConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get loot box plugin config params
func (o *GetLootBoxPluginConfigParams) WithHTTPClient(client *http.Client) *GetLootBoxPluginConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get loot box plugin config params
func (o *GetLootBoxPluginConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get loot box plugin config params
func (o *GetLootBoxPluginConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get loot box plugin config params
func (o *GetLootBoxPluginConfigParams) WithNamespace(namespace string) *GetLootBoxPluginConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get loot box plugin config params
func (o *GetLootBoxPluginConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetLootBoxPluginConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

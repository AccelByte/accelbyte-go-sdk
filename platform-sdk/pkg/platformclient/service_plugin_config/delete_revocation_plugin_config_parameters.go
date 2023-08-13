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

// NewDeleteRevocationPluginConfigParams creates a new DeleteRevocationPluginConfigParams object
// with the default values initialized.
func NewDeleteRevocationPluginConfigParams() *DeleteRevocationPluginConfigParams {
	var ()
	return &DeleteRevocationPluginConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteRevocationPluginConfigParamsWithTimeout creates a new DeleteRevocationPluginConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteRevocationPluginConfigParamsWithTimeout(timeout time.Duration) *DeleteRevocationPluginConfigParams {
	var ()
	return &DeleteRevocationPluginConfigParams{

		timeout: timeout,
	}
}

// NewDeleteRevocationPluginConfigParamsWithContext creates a new DeleteRevocationPluginConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteRevocationPluginConfigParamsWithContext(ctx context.Context) *DeleteRevocationPluginConfigParams {
	var ()
	return &DeleteRevocationPluginConfigParams{

		Context: ctx,
	}
}

// NewDeleteRevocationPluginConfigParamsWithHTTPClient creates a new DeleteRevocationPluginConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteRevocationPluginConfigParamsWithHTTPClient(client *http.Client) *DeleteRevocationPluginConfigParams {
	var ()
	return &DeleteRevocationPluginConfigParams{
		HTTPClient: client,
	}
}

/*DeleteRevocationPluginConfigParams contains all the parameters to send to the API endpoint
for the delete revocation plugin config operation typically these are written to a http.Request
*/
type DeleteRevocationPluginConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete revocation plugin config params
func (o *DeleteRevocationPluginConfigParams) WithTimeout(timeout time.Duration) *DeleteRevocationPluginConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete revocation plugin config params
func (o *DeleteRevocationPluginConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete revocation plugin config params
func (o *DeleteRevocationPluginConfigParams) WithContext(ctx context.Context) *DeleteRevocationPluginConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete revocation plugin config params
func (o *DeleteRevocationPluginConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete revocation plugin config params
func (o *DeleteRevocationPluginConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete revocation plugin config params
func (o *DeleteRevocationPluginConfigParams) WithHTTPClient(client *http.Client) *DeleteRevocationPluginConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete revocation plugin config params
func (o *DeleteRevocationPluginConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete revocation plugin config params
func (o *DeleteRevocationPluginConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete revocation plugin config params
func (o *DeleteRevocationPluginConfigParams) WithNamespace(namespace string) *DeleteRevocationPluginConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete revocation plugin config params
func (o *DeleteRevocationPluginConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteRevocationPluginConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

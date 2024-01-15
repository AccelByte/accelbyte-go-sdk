// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package plugin_config

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

// NewDeletePluginConfigParams creates a new DeletePluginConfigParams object
// with the default values initialized.
func NewDeletePluginConfigParams() *DeletePluginConfigParams {
	var ()
	return &DeletePluginConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeletePluginConfigParamsWithTimeout creates a new DeletePluginConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeletePluginConfigParamsWithTimeout(timeout time.Duration) *DeletePluginConfigParams {
	var ()
	return &DeletePluginConfigParams{

		timeout: timeout,
	}
}

// NewDeletePluginConfigParamsWithContext creates a new DeletePluginConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeletePluginConfigParamsWithContext(ctx context.Context) *DeletePluginConfigParams {
	var ()
	return &DeletePluginConfigParams{

		Context: ctx,
	}
}

// NewDeletePluginConfigParamsWithHTTPClient creates a new DeletePluginConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeletePluginConfigParamsWithHTTPClient(client *http.Client) *DeletePluginConfigParams {
	var ()
	return &DeletePluginConfigParams{
		HTTPClient: client,
	}
}

/*DeletePluginConfigParams contains all the parameters to send to the API endpoint
for the delete plugin config operation typically these are written to a http.Request
*/
type DeletePluginConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete plugin config params
func (o *DeletePluginConfigParams) WithTimeout(timeout time.Duration) *DeletePluginConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete plugin config params
func (o *DeletePluginConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete plugin config params
func (o *DeletePluginConfigParams) WithContext(ctx context.Context) *DeletePluginConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete plugin config params
func (o *DeletePluginConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete plugin config params
func (o *DeletePluginConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete plugin config params
func (o *DeletePluginConfigParams) WithHTTPClient(client *http.Client) *DeletePluginConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete plugin config params
func (o *DeletePluginConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete plugin config params
func (o *DeletePluginConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete plugin config params
func (o *DeletePluginConfigParams) WithNamespace(namespace string) *DeletePluginConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete plugin config params
func (o *DeletePluginConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeletePluginConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewUpdateConfig1Params creates a new UpdateConfig1Params object
// with the default values initialized.
func NewUpdateConfig1Params() *UpdateConfig1Params {
	var ()
	return &UpdateConfig1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateConfig1ParamsWithTimeout creates a new UpdateConfig1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateConfig1ParamsWithTimeout(timeout time.Duration) *UpdateConfig1Params {
	var ()
	return &UpdateConfig1Params{

		timeout: timeout,
	}
}

// NewUpdateConfig1ParamsWithContext creates a new UpdateConfig1Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateConfig1ParamsWithContext(ctx context.Context) *UpdateConfig1Params {
	var ()
	return &UpdateConfig1Params{

		Context: ctx,
	}
}

// NewUpdateConfig1ParamsWithHTTPClient creates a new UpdateConfig1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateConfig1ParamsWithHTTPClient(client *http.Client) *UpdateConfig1Params {
	var ()
	return &UpdateConfig1Params{
		HTTPClient: client,
	}
}

/*UpdateConfig1Params contains all the parameters to send to the API endpoint
for the update config 1 operation typically these are written to a http.Request
*/
type UpdateConfig1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.ConfigUpdate
	/*ConfigKey*/
	ConfigKey string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update config 1 params
func (o *UpdateConfig1Params) WithTimeout(timeout time.Duration) *UpdateConfig1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update config 1 params
func (o *UpdateConfig1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update config 1 params
func (o *UpdateConfig1Params) WithContext(ctx context.Context) *UpdateConfig1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update config 1 params
func (o *UpdateConfig1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update config 1 params
func (o *UpdateConfig1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update config 1 params
func (o *UpdateConfig1Params) WithHTTPClient(client *http.Client) *UpdateConfig1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update config 1 params
func (o *UpdateConfig1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update config 1 params
func (o *UpdateConfig1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update config 1 params
func (o *UpdateConfig1Params) WithBody(body *basicclientmodels.ConfigUpdate) *UpdateConfig1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update config 1 params
func (o *UpdateConfig1Params) SetBody(body *basicclientmodels.ConfigUpdate) {
	o.Body = body
}

// WithConfigKey adds the configKey to the update config 1 params
func (o *UpdateConfig1Params) WithConfigKey(configKey string) *UpdateConfig1Params {
	o.SetConfigKey(configKey)
	return o
}

// SetConfigKey adds the configKey to the update config 1 params
func (o *UpdateConfig1Params) SetConfigKey(configKey string) {
	o.ConfigKey = configKey
}

// WithNamespace adds the namespace to the update config 1 params
func (o *UpdateConfig1Params) WithNamespace(namespace string) *UpdateConfig1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update config 1 params
func (o *UpdateConfig1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateConfig1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param configKey
	if err := r.SetPathParam("configKey", o.ConfigKey); err != nil {
		return err
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

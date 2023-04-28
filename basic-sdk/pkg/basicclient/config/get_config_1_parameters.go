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
)

// NewGetConfig1Params creates a new GetConfig1Params object
// with the default values initialized.
func NewGetConfig1Params() *GetConfig1Params {
	var ()
	return &GetConfig1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetConfig1ParamsWithTimeout creates a new GetConfig1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetConfig1ParamsWithTimeout(timeout time.Duration) *GetConfig1Params {
	var ()
	return &GetConfig1Params{

		timeout: timeout,
	}
}

// NewGetConfig1ParamsWithContext creates a new GetConfig1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetConfig1ParamsWithContext(ctx context.Context) *GetConfig1Params {
	var ()
	return &GetConfig1Params{

		Context: ctx,
	}
}

// NewGetConfig1ParamsWithHTTPClient creates a new GetConfig1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetConfig1ParamsWithHTTPClient(client *http.Client) *GetConfig1Params {
	var ()
	return &GetConfig1Params{
		HTTPClient: client,
	}
}

/*GetConfig1Params contains all the parameters to send to the API endpoint
for the get config 1 operation typically these are written to a http.Request
*/
type GetConfig1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ConfigKey*/
	ConfigKey string
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get config 1 params
func (o *GetConfig1Params) WithTimeout(timeout time.Duration) *GetConfig1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get config 1 params
func (o *GetConfig1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get config 1 params
func (o *GetConfig1Params) WithContext(ctx context.Context) *GetConfig1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get config 1 params
func (o *GetConfig1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get config 1 params
func (o *GetConfig1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get config 1 params
func (o *GetConfig1Params) WithHTTPClient(client *http.Client) *GetConfig1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get config 1 params
func (o *GetConfig1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get config 1 params
func (o *GetConfig1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithConfigKey adds the configKey to the get config 1 params
func (o *GetConfig1Params) WithConfigKey(configKey string) *GetConfig1Params {
	o.SetConfigKey(configKey)
	return o
}

// SetConfigKey adds the configKey to the get config 1 params
func (o *GetConfig1Params) SetConfigKey(configKey string) {
	o.ConfigKey = configKey
}

// WithNamespace adds the namespace to the get config 1 params
func (o *GetConfig1Params) WithNamespace(namespace string) *GetConfig1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get config 1 params
func (o *GetConfig1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetConfig1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

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

// NewDeleteConfig1Params creates a new DeleteConfig1Params object
// with the default values initialized.
func NewDeleteConfig1Params() *DeleteConfig1Params {
	var ()
	return &DeleteConfig1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteConfig1ParamsWithTimeout creates a new DeleteConfig1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteConfig1ParamsWithTimeout(timeout time.Duration) *DeleteConfig1Params {
	var ()
	return &DeleteConfig1Params{

		timeout: timeout,
	}
}

// NewDeleteConfig1ParamsWithContext creates a new DeleteConfig1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteConfig1ParamsWithContext(ctx context.Context) *DeleteConfig1Params {
	var ()
	return &DeleteConfig1Params{

		Context: ctx,
	}
}

// NewDeleteConfig1ParamsWithHTTPClient creates a new DeleteConfig1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteConfig1ParamsWithHTTPClient(client *http.Client) *DeleteConfig1Params {
	var ()
	return &DeleteConfig1Params{
		HTTPClient: client,
	}
}

/*DeleteConfig1Params contains all the parameters to send to the API endpoint
for the delete config 1 operation typically these are written to a http.Request
*/
type DeleteConfig1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ConfigKey*/
	ConfigKey string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete config 1 params
func (o *DeleteConfig1Params) WithTimeout(timeout time.Duration) *DeleteConfig1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete config 1 params
func (o *DeleteConfig1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete config 1 params
func (o *DeleteConfig1Params) WithContext(ctx context.Context) *DeleteConfig1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete config 1 params
func (o *DeleteConfig1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete config 1 params
func (o *DeleteConfig1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete config 1 params
func (o *DeleteConfig1Params) WithHTTPClient(client *http.Client) *DeleteConfig1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete config 1 params
func (o *DeleteConfig1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete config 1 params
func (o *DeleteConfig1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteConfig1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithConfigKey adds the configKey to the delete config 1 params
func (o *DeleteConfig1Params) WithConfigKey(configKey string) *DeleteConfig1Params {
	o.SetConfigKey(configKey)
	return o
}

// SetConfigKey adds the configKey to the delete config 1 params
func (o *DeleteConfig1Params) SetConfigKey(configKey string) {
	o.ConfigKey = configKey
}

// WithNamespace adds the namespace to the delete config 1 params
func (o *DeleteConfig1Params) WithNamespace(namespace string) *DeleteConfig1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete config 1 params
func (o *DeleteConfig1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteConfig1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

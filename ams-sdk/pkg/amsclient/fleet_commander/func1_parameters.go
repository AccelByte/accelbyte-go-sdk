// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fleet_commander

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

// NewFunc1Params creates a new Func1Params object
// with the default values initialized.
func NewFunc1Params() *Func1Params {
	var ()
	return &Func1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewFunc1ParamsWithTimeout creates a new Func1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewFunc1ParamsWithTimeout(timeout time.Duration) *Func1Params {
	var ()
	return &Func1Params{

		timeout: timeout,
	}
}

// NewFunc1ParamsWithContext creates a new Func1Params object
// with the default values initialized, and the ability to set a context for a request
func NewFunc1ParamsWithContext(ctx context.Context) *Func1Params {
	var ()
	return &Func1Params{

		Context: ctx,
	}
}

// NewFunc1ParamsWithHTTPClient creates a new Func1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFunc1ParamsWithHTTPClient(client *http.Client) *Func1Params {
	var ()
	return &Func1Params{
		HTTPClient: client,
	}
}

/*Func1Params contains all the parameters to send to the API endpoint
for the func1 operation typically these are written to a http.Request
*/
type Func1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the func1 params
func (o *Func1Params) WithTimeout(timeout time.Duration) *Func1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the func1 params
func (o *Func1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the func1 params
func (o *Func1Params) WithContext(ctx context.Context) *Func1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the func1 params
func (o *Func1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the func1 params
func (o *Func1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the func1 params
func (o *Func1Params) WithHTTPClient(client *http.Client) *Func1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the func1 params
func (o *Func1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the func1 params
func (o *Func1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *Func1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

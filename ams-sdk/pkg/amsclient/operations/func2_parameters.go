// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package operations

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

// NewFunc2Params creates a new Func2Params object
// with the default values initialized.
func NewFunc2Params() *Func2Params {
	var ()
	return &Func2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewFunc2ParamsWithTimeout creates a new Func2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewFunc2ParamsWithTimeout(timeout time.Duration) *Func2Params {
	var ()
	return &Func2Params{

		timeout: timeout,
	}
}

// NewFunc2ParamsWithContext creates a new Func2Params object
// with the default values initialized, and the ability to set a context for a request
func NewFunc2ParamsWithContext(ctx context.Context) *Func2Params {
	var ()
	return &Func2Params{

		Context: ctx,
	}
}

// NewFunc2ParamsWithHTTPClient creates a new Func2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFunc2ParamsWithHTTPClient(client *http.Client) *Func2Params {
	var ()
	return &Func2Params{
		HTTPClient: client,
	}
}

/*Func2Params contains all the parameters to send to the API endpoint
for the func2 operation typically these are written to a http.Request
*/
type Func2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the func2 params
func (o *Func2Params) WithTimeout(timeout time.Duration) *Func2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the func2 params
func (o *Func2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the func2 params
func (o *Func2Params) WithContext(ctx context.Context) *Func2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the func2 params
func (o *Func2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the func2 params
func (o *Func2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the func2 params
func (o *Func2Params) WithHTTPClient(client *http.Client) *Func2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the func2 params
func (o *Func2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the func2 params
func (o *Func2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *Func2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_pools

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

// NewMatchPoolMetricParams creates a new MatchPoolMetricParams object
// with the default values initialized.
func NewMatchPoolMetricParams() *MatchPoolMetricParams {
	var ()
	return &MatchPoolMetricParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewMatchPoolMetricParamsWithTimeout creates a new MatchPoolMetricParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewMatchPoolMetricParamsWithTimeout(timeout time.Duration) *MatchPoolMetricParams {
	var ()
	return &MatchPoolMetricParams{

		timeout: timeout,
	}
}

// NewMatchPoolMetricParamsWithContext creates a new MatchPoolMetricParams object
// with the default values initialized, and the ability to set a context for a request
func NewMatchPoolMetricParamsWithContext(ctx context.Context) *MatchPoolMetricParams {
	var ()
	return &MatchPoolMetricParams{

		Context: ctx,
	}
}

// NewMatchPoolMetricParamsWithHTTPClient creates a new MatchPoolMetricParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewMatchPoolMetricParamsWithHTTPClient(client *http.Client) *MatchPoolMetricParams {
	var ()
	return &MatchPoolMetricParams{
		HTTPClient: client,
	}
}

/*MatchPoolMetricParams contains all the parameters to send to the API endpoint
for the match pool metric operation typically these are written to a http.Request
*/
type MatchPoolMetricParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Pool
	  Name of the match pool

	*/
	Pool string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the match pool metric params
func (o *MatchPoolMetricParams) WithTimeout(timeout time.Duration) *MatchPoolMetricParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the match pool metric params
func (o *MatchPoolMetricParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the match pool metric params
func (o *MatchPoolMetricParams) WithContext(ctx context.Context) *MatchPoolMetricParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the match pool metric params
func (o *MatchPoolMetricParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the match pool metric params
func (o *MatchPoolMetricParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the match pool metric params
func (o *MatchPoolMetricParams) WithHTTPClient(client *http.Client) *MatchPoolMetricParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the match pool metric params
func (o *MatchPoolMetricParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the match pool metric params
func (o *MatchPoolMetricParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the match pool metric params
func (o *MatchPoolMetricParams) WithNamespace(namespace string) *MatchPoolMetricParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the match pool metric params
func (o *MatchPoolMetricParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPool adds the pool to the match pool metric params
func (o *MatchPoolMetricParams) WithPool(pool string) *MatchPoolMetricParams {
	o.SetPool(pool)
	return o
}

// SetPool adds the pool to the match pool metric params
func (o *MatchPoolMetricParams) SetPool(pool string) {
	o.Pool = pool
}

// WriteToRequest writes these params to a swagger request
func (o *MatchPoolMetricParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param pool
	if err := r.SetPathParam("pool", o.Pool); err != nil {
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

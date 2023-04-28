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

// NewGetPlayerMetricParams creates a new GetPlayerMetricParams object
// with the default values initialized.
func NewGetPlayerMetricParams() *GetPlayerMetricParams {
	var ()
	return &GetPlayerMetricParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPlayerMetricParamsWithTimeout creates a new GetPlayerMetricParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPlayerMetricParamsWithTimeout(timeout time.Duration) *GetPlayerMetricParams {
	var ()
	return &GetPlayerMetricParams{

		timeout: timeout,
	}
}

// NewGetPlayerMetricParamsWithContext creates a new GetPlayerMetricParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPlayerMetricParamsWithContext(ctx context.Context) *GetPlayerMetricParams {
	var ()
	return &GetPlayerMetricParams{

		Context: ctx,
	}
}

// NewGetPlayerMetricParamsWithHTTPClient creates a new GetPlayerMetricParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPlayerMetricParamsWithHTTPClient(client *http.Client) *GetPlayerMetricParams {
	var ()
	return &GetPlayerMetricParams{
		HTTPClient: client,
	}
}

/*GetPlayerMetricParams contains all the parameters to send to the API endpoint
for the get player metric operation typically these are written to a http.Request
*/
type GetPlayerMetricParams struct {

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

// WithTimeout adds the timeout to the get player metric params
func (o *GetPlayerMetricParams) WithTimeout(timeout time.Duration) *GetPlayerMetricParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get player metric params
func (o *GetPlayerMetricParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get player metric params
func (o *GetPlayerMetricParams) WithContext(ctx context.Context) *GetPlayerMetricParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get player metric params
func (o *GetPlayerMetricParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get player metric params
func (o *GetPlayerMetricParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get player metric params
func (o *GetPlayerMetricParams) WithHTTPClient(client *http.Client) *GetPlayerMetricParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get player metric params
func (o *GetPlayerMetricParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get player metric params
func (o *GetPlayerMetricParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get player metric params
func (o *GetPlayerMetricParams) WithNamespace(namespace string) *GetPlayerMetricParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get player metric params
func (o *GetPlayerMetricParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPool adds the pool to the get player metric params
func (o *GetPlayerMetricParams) WithPool(pool string) *GetPlayerMetricParams {
	o.SetPool(pool)
	return o
}

// SetPool adds the pool to the get player metric params
func (o *GetPlayerMetricParams) SetPool(pool string) {
	o.Pool = pool
}

// WriteToRequest writes these params to a swagger request
func (o *GetPlayerMetricParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

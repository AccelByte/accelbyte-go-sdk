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

// NewDeleteMatchPoolParams creates a new DeleteMatchPoolParams object
// with the default values initialized.
func NewDeleteMatchPoolParams() *DeleteMatchPoolParams {
	var ()
	return &DeleteMatchPoolParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteMatchPoolParamsWithTimeout creates a new DeleteMatchPoolParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteMatchPoolParamsWithTimeout(timeout time.Duration) *DeleteMatchPoolParams {
	var ()
	return &DeleteMatchPoolParams{

		timeout: timeout,
	}
}

// NewDeleteMatchPoolParamsWithContext creates a new DeleteMatchPoolParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteMatchPoolParamsWithContext(ctx context.Context) *DeleteMatchPoolParams {
	var ()
	return &DeleteMatchPoolParams{

		Context: ctx,
	}
}

// NewDeleteMatchPoolParamsWithHTTPClient creates a new DeleteMatchPoolParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteMatchPoolParamsWithHTTPClient(client *http.Client) *DeleteMatchPoolParams {
	var ()
	return &DeleteMatchPoolParams{
		HTTPClient: client,
	}
}

/*DeleteMatchPoolParams contains all the parameters to send to the API endpoint
for the delete match pool operation typically these are written to a http.Request
*/
type DeleteMatchPoolParams struct {

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

// WithTimeout adds the timeout to the delete match pool params
func (o *DeleteMatchPoolParams) WithTimeout(timeout time.Duration) *DeleteMatchPoolParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete match pool params
func (o *DeleteMatchPoolParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete match pool params
func (o *DeleteMatchPoolParams) WithContext(ctx context.Context) *DeleteMatchPoolParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete match pool params
func (o *DeleteMatchPoolParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete match pool params
func (o *DeleteMatchPoolParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete match pool params
func (o *DeleteMatchPoolParams) WithHTTPClient(client *http.Client) *DeleteMatchPoolParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete match pool params
func (o *DeleteMatchPoolParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete match pool params
func (o *DeleteMatchPoolParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete match pool params
func (o *DeleteMatchPoolParams) WithNamespace(namespace string) *DeleteMatchPoolParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete match pool params
func (o *DeleteMatchPoolParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPool adds the pool to the delete match pool params
func (o *DeleteMatchPoolParams) WithPool(pool string) *DeleteMatchPoolParams {
	o.SetPool(pool)
	return o
}

// SetPool adds the pool to the delete match pool params
func (o *DeleteMatchPoolParams) SetPool(pool string) {
	o.Pool = pool
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteMatchPoolParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

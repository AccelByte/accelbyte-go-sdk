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

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// NewUpdateMatchPoolParams creates a new UpdateMatchPoolParams object
// with the default values initialized.
func NewUpdateMatchPoolParams() *UpdateMatchPoolParams {
	var ()
	return &UpdateMatchPoolParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateMatchPoolParamsWithTimeout creates a new UpdateMatchPoolParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateMatchPoolParamsWithTimeout(timeout time.Duration) *UpdateMatchPoolParams {
	var ()
	return &UpdateMatchPoolParams{

		timeout: timeout,
	}
}

// NewUpdateMatchPoolParamsWithContext creates a new UpdateMatchPoolParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateMatchPoolParamsWithContext(ctx context.Context) *UpdateMatchPoolParams {
	var ()
	return &UpdateMatchPoolParams{

		Context: ctx,
	}
}

// NewUpdateMatchPoolParamsWithHTTPClient creates a new UpdateMatchPoolParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateMatchPoolParamsWithHTTPClient(client *http.Client) *UpdateMatchPoolParams {
	var ()
	return &UpdateMatchPoolParams{
		HTTPClient: client,
	}
}

/*UpdateMatchPoolParams contains all the parameters to send to the API endpoint
for the update match pool operation typically these are written to a http.Request
*/
type UpdateMatchPoolParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *match2clientmodels.APIMatchPoolConfig
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

// WithTimeout adds the timeout to the update match pool params
func (o *UpdateMatchPoolParams) WithTimeout(timeout time.Duration) *UpdateMatchPoolParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update match pool params
func (o *UpdateMatchPoolParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update match pool params
func (o *UpdateMatchPoolParams) WithContext(ctx context.Context) *UpdateMatchPoolParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update match pool params
func (o *UpdateMatchPoolParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update match pool params
func (o *UpdateMatchPoolParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update match pool params
func (o *UpdateMatchPoolParams) WithHTTPClient(client *http.Client) *UpdateMatchPoolParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update match pool params
func (o *UpdateMatchPoolParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update match pool params
func (o *UpdateMatchPoolParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update match pool params
func (o *UpdateMatchPoolParams) WithBody(body *match2clientmodels.APIMatchPoolConfig) *UpdateMatchPoolParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update match pool params
func (o *UpdateMatchPoolParams) SetBody(body *match2clientmodels.APIMatchPoolConfig) {
	o.Body = body
}

// WithNamespace adds the namespace to the update match pool params
func (o *UpdateMatchPoolParams) WithNamespace(namespace string) *UpdateMatchPoolParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update match pool params
func (o *UpdateMatchPoolParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPool adds the pool to the update match pool params
func (o *UpdateMatchPoolParams) WithPool(pool string) *UpdateMatchPoolParams {
	o.SetPool(pool)
	return o
}

// SetPool adds the pool to the update match pool params
func (o *UpdateMatchPoolParams) SetPool(pool string) {
	o.Pool = pool
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateMatchPoolParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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

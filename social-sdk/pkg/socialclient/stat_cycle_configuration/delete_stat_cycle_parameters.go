// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_cycle_configuration

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

// NewDeleteStatCycleParams creates a new DeleteStatCycleParams object
// with the default values initialized.
func NewDeleteStatCycleParams() *DeleteStatCycleParams {
	var ()
	return &DeleteStatCycleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteStatCycleParamsWithTimeout creates a new DeleteStatCycleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteStatCycleParamsWithTimeout(timeout time.Duration) *DeleteStatCycleParams {
	var ()
	return &DeleteStatCycleParams{

		timeout: timeout,
	}
}

// NewDeleteStatCycleParamsWithContext creates a new DeleteStatCycleParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteStatCycleParamsWithContext(ctx context.Context) *DeleteStatCycleParams {
	var ()
	return &DeleteStatCycleParams{

		Context: ctx,
	}
}

// NewDeleteStatCycleParamsWithHTTPClient creates a new DeleteStatCycleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteStatCycleParamsWithHTTPClient(client *http.Client) *DeleteStatCycleParams {
	var ()
	return &DeleteStatCycleParams{
		HTTPClient: client,
	}
}

/*DeleteStatCycleParams contains all the parameters to send to the API endpoint
for the delete stat cycle operation typically these are written to a http.Request
*/
type DeleteStatCycleParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CycleID
	  cycle id

	*/
	CycleID string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete stat cycle params
func (o *DeleteStatCycleParams) WithTimeout(timeout time.Duration) *DeleteStatCycleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete stat cycle params
func (o *DeleteStatCycleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete stat cycle params
func (o *DeleteStatCycleParams) WithContext(ctx context.Context) *DeleteStatCycleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete stat cycle params
func (o *DeleteStatCycleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete stat cycle params
func (o *DeleteStatCycleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete stat cycle params
func (o *DeleteStatCycleParams) WithHTTPClient(client *http.Client) *DeleteStatCycleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete stat cycle params
func (o *DeleteStatCycleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete stat cycle params
func (o *DeleteStatCycleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCycleID adds the cycleID to the delete stat cycle params
func (o *DeleteStatCycleParams) WithCycleID(cycleID string) *DeleteStatCycleParams {
	o.SetCycleID(cycleID)
	return o
}

// SetCycleID adds the cycleId to the delete stat cycle params
func (o *DeleteStatCycleParams) SetCycleID(cycleID string) {
	o.CycleID = cycleID
}

// WithNamespace adds the namespace to the delete stat cycle params
func (o *DeleteStatCycleParams) WithNamespace(namespace string) *DeleteStatCycleParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete stat cycle params
func (o *DeleteStatCycleParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteStatCycleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param cycleId
	if err := r.SetPathParam("cycleId", o.CycleID); err != nil {
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

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package server

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// NewDeregisterLocalServerParams creates a new DeregisterLocalServerParams object
// with the default values initialized.
func NewDeregisterLocalServerParams() *DeregisterLocalServerParams {
	var ()
	return &DeregisterLocalServerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeregisterLocalServerParamsWithTimeout creates a new DeregisterLocalServerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeregisterLocalServerParamsWithTimeout(timeout time.Duration) *DeregisterLocalServerParams {
	var ()
	return &DeregisterLocalServerParams{

		timeout: timeout,
	}
}

// NewDeregisterLocalServerParamsWithContext creates a new DeregisterLocalServerParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeregisterLocalServerParamsWithContext(ctx context.Context) *DeregisterLocalServerParams {
	var ()
	return &DeregisterLocalServerParams{

		Context: ctx,
	}
}

// NewDeregisterLocalServerParamsWithHTTPClient creates a new DeregisterLocalServerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeregisterLocalServerParamsWithHTTPClient(client *http.Client) *DeregisterLocalServerParams {
	var ()
	return &DeregisterLocalServerParams{
		HTTPClient: client,
	}
}

/*DeregisterLocalServerParams contains all the parameters to send to the API endpoint
for the deregister local server operation typically these are written to a http.Request
*/
type DeregisterLocalServerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsDeregisterLocalServerRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the deregister local server params
func (o *DeregisterLocalServerParams) WithTimeout(timeout time.Duration) *DeregisterLocalServerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the deregister local server params
func (o *DeregisterLocalServerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the deregister local server params
func (o *DeregisterLocalServerParams) WithContext(ctx context.Context) *DeregisterLocalServerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the deregister local server params
func (o *DeregisterLocalServerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the deregister local server params
func (o *DeregisterLocalServerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the deregister local server params
func (o *DeregisterLocalServerParams) WithHTTPClient(client *http.Client) *DeregisterLocalServerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the deregister local server params
func (o *DeregisterLocalServerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the deregister local server params
func (o *DeregisterLocalServerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the deregister local server params
func (o *DeregisterLocalServerParams) WithBody(body *dsmcclientmodels.ModelsDeregisterLocalServerRequest) *DeregisterLocalServerParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the deregister local server params
func (o *DeregisterLocalServerParams) SetBody(body *dsmcclientmodels.ModelsDeregisterLocalServerRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the deregister local server params
func (o *DeregisterLocalServerParams) WithNamespace(namespace string) *DeregisterLocalServerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the deregister local server params
func (o *DeregisterLocalServerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeregisterLocalServerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

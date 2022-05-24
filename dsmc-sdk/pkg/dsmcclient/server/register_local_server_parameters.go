// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package server

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewRegisterLocalServerParams creates a new RegisterLocalServerParams object
// with the default values initialized.
func NewRegisterLocalServerParams() *RegisterLocalServerParams {
	var ()
	return &RegisterLocalServerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRegisterLocalServerParamsWithTimeout creates a new RegisterLocalServerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRegisterLocalServerParamsWithTimeout(timeout time.Duration) *RegisterLocalServerParams {
	var ()
	return &RegisterLocalServerParams{

		timeout: timeout,
	}
}

// NewRegisterLocalServerParamsWithContext creates a new RegisterLocalServerParams object
// with the default values initialized, and the ability to set a context for a request
func NewRegisterLocalServerParamsWithContext(ctx context.Context) *RegisterLocalServerParams {
	var ()
	return &RegisterLocalServerParams{

		Context: ctx,
	}
}

// NewRegisterLocalServerParamsWithHTTPClient creates a new RegisterLocalServerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRegisterLocalServerParamsWithHTTPClient(client *http.Client) *RegisterLocalServerParams {
	var ()
	return &RegisterLocalServerParams{
		HTTPClient: client,
	}
}

/*RegisterLocalServerParams contains all the parameters to send to the API endpoint
for the register local server operation typically these are written to a http.Request
*/
type RegisterLocalServerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsRegisterLocalServerRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the register local server params
func (o *RegisterLocalServerParams) WithTimeout(timeout time.Duration) *RegisterLocalServerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the register local server params
func (o *RegisterLocalServerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the register local server params
func (o *RegisterLocalServerParams) WithContext(ctx context.Context) *RegisterLocalServerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the register local server params
func (o *RegisterLocalServerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the register local server params
func (o *RegisterLocalServerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the register local server params
func (o *RegisterLocalServerParams) WithHTTPClient(client *http.Client) *RegisterLocalServerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the register local server params
func (o *RegisterLocalServerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the register local server params
func (o *RegisterLocalServerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the register local server params
func (o *RegisterLocalServerParams) WithBody(body *dsmcclientmodels.ModelsRegisterLocalServerRequest) *RegisterLocalServerParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the register local server params
func (o *RegisterLocalServerParams) SetBody(body *dsmcclientmodels.ModelsRegisterLocalServerRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the register local server params
func (o *RegisterLocalServerParams) WithNamespace(namespace string) *RegisterLocalServerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the register local server params
func (o *RegisterLocalServerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RegisterLocalServerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

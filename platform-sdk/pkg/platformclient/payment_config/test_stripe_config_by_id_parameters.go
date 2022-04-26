// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package payment_config

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewTestStripeConfigByIDParams creates a new TestStripeConfigByIDParams object
// with the default values initialized.
func NewTestStripeConfigByIDParams() *TestStripeConfigByIDParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestStripeConfigByIDParams{
		Sandbox: &sandboxDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewTestStripeConfigByIDParamsWithTimeout creates a new TestStripeConfigByIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewTestStripeConfigByIDParamsWithTimeout(timeout time.Duration) *TestStripeConfigByIDParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestStripeConfigByIDParams{
		Sandbox: &sandboxDefault,

		timeout: timeout,
	}
}

// NewTestStripeConfigByIDParamsWithContext creates a new TestStripeConfigByIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewTestStripeConfigByIDParamsWithContext(ctx context.Context) *TestStripeConfigByIDParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestStripeConfigByIDParams{
		Sandbox: &sandboxDefault,

		Context: ctx,
	}
}

// NewTestStripeConfigByIDParamsWithHTTPClient creates a new TestStripeConfigByIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewTestStripeConfigByIDParamsWithHTTPClient(client *http.Client) *TestStripeConfigByIDParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestStripeConfigByIDParams{
		Sandbox:    &sandboxDefault,
		HTTPClient: client,
	}
}

/*TestStripeConfigByIDParams contains all the parameters to send to the API endpoint
for the test stripe config by Id operation typically these are written to a http.Request
*/
type TestStripeConfigByIDParams struct {

	/*ID*/
	ID string
	/*Sandbox*/
	Sandbox *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the test stripe config by Id params
func (o *TestStripeConfigByIDParams) WithTimeout(timeout time.Duration) *TestStripeConfigByIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the test stripe config by Id params
func (o *TestStripeConfigByIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the test stripe config by Id params
func (o *TestStripeConfigByIDParams) WithContext(ctx context.Context) *TestStripeConfigByIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the test stripe config by Id params
func (o *TestStripeConfigByIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the test stripe config by Id params
func (o *TestStripeConfigByIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the test stripe config by Id params
func (o *TestStripeConfigByIDParams) WithHTTPClient(client *http.Client) *TestStripeConfigByIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the test stripe config by Id params
func (o *TestStripeConfigByIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithID adds the id to the test stripe config by Id params
func (o *TestStripeConfigByIDParams) WithID(id string) *TestStripeConfigByIDParams {
	o.SetID(id)
	return o
}

// SetID adds the id to the test stripe config by Id params
func (o *TestStripeConfigByIDParams) SetID(id string) {
	o.ID = id
}

// WithSandbox adds the sandbox to the test stripe config by Id params
func (o *TestStripeConfigByIDParams) WithSandbox(sandbox *bool) *TestStripeConfigByIDParams {
	o.SetSandbox(sandbox)
	return o
}

// SetSandbox adds the sandbox to the test stripe config by Id params
func (o *TestStripeConfigByIDParams) SetSandbox(sandbox *bool) {
	o.Sandbox = sandbox
}

// WriteToRequest writes these params to a swagger request
func (o *TestStripeConfigByIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
		return err
	}

	if o.Sandbox != nil {

		// query param sandbox
		var qrSandbox bool
		if o.Sandbox != nil {
			qrSandbox = *o.Sandbox
		}
		qSandbox := swag.FormatBool(qrSandbox)
		if qSandbox != "" {
			if err := r.SetQueryParam("sandbox", qSandbox); err != nil {
				return err
			}
		}

	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

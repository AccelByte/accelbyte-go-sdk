// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_config

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewTestCheckoutConfigByIDParams creates a new TestCheckoutConfigByIDParams object
// with the default values initialized.
func NewTestCheckoutConfigByIDParams() *TestCheckoutConfigByIDParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestCheckoutConfigByIDParams{
		Sandbox: &sandboxDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewTestCheckoutConfigByIDParamsWithTimeout creates a new TestCheckoutConfigByIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewTestCheckoutConfigByIDParamsWithTimeout(timeout time.Duration) *TestCheckoutConfigByIDParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestCheckoutConfigByIDParams{
		Sandbox: &sandboxDefault,

		timeout: timeout,
	}
}

// NewTestCheckoutConfigByIDParamsWithContext creates a new TestCheckoutConfigByIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewTestCheckoutConfigByIDParamsWithContext(ctx context.Context) *TestCheckoutConfigByIDParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestCheckoutConfigByIDParams{
		Sandbox: &sandboxDefault,

		Context: ctx,
	}
}

// NewTestCheckoutConfigByIDParamsWithHTTPClient creates a new TestCheckoutConfigByIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewTestCheckoutConfigByIDParamsWithHTTPClient(client *http.Client) *TestCheckoutConfigByIDParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestCheckoutConfigByIDParams{
		Sandbox:    &sandboxDefault,
		HTTPClient: client,
	}
}

/*TestCheckoutConfigByIDParams contains all the parameters to send to the API endpoint
for the test checkout config by id operation typically these are written to a http.Request
*/
type TestCheckoutConfigByIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ID*/
	ID string
	/*Sandbox*/
	Sandbox *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the test checkout config by id params
func (o *TestCheckoutConfigByIDParams) WithTimeout(timeout time.Duration) *TestCheckoutConfigByIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the test checkout config by id params
func (o *TestCheckoutConfigByIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the test checkout config by id params
func (o *TestCheckoutConfigByIDParams) WithContext(ctx context.Context) *TestCheckoutConfigByIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the test checkout config by id params
func (o *TestCheckoutConfigByIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the test checkout config by id params
func (o *TestCheckoutConfigByIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the test checkout config by id params
func (o *TestCheckoutConfigByIDParams) WithHTTPClient(client *http.Client) *TestCheckoutConfigByIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the test checkout config by id params
func (o *TestCheckoutConfigByIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the test checkout config by id params
func (o *TestCheckoutConfigByIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *TestCheckoutConfigByIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithID adds the idVar to the test checkout config by id params
func (o *TestCheckoutConfigByIDParams) WithID(idVar string) *TestCheckoutConfigByIDParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the test checkout config by id params
func (o *TestCheckoutConfigByIDParams) SetID(idVar string) {
	o.ID = idVar
}

// WithSandbox adds the sandbox to the test checkout config by id params
func (o *TestCheckoutConfigByIDParams) WithSandbox(sandbox *bool) *TestCheckoutConfigByIDParams {
	o.SetSandbox(sandbox)
	return o
}

// SetSandbox adds the sandbox to the test checkout config by id params
func (o *TestCheckoutConfigByIDParams) SetSandbox(sandbox *bool) {
	o.Sandbox = sandbox
}

// WriteToRequest writes these params to a swagger request
func (o *TestCheckoutConfigByIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

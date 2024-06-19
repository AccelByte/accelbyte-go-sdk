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

// NewTestNeonPayConfigByIDParams creates a new TestNeonPayConfigByIDParams object
// with the default values initialized.
func NewTestNeonPayConfigByIDParams() *TestNeonPayConfigByIDParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestNeonPayConfigByIDParams{
		Sandbox: &sandboxDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewTestNeonPayConfigByIDParamsWithTimeout creates a new TestNeonPayConfigByIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewTestNeonPayConfigByIDParamsWithTimeout(timeout time.Duration) *TestNeonPayConfigByIDParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestNeonPayConfigByIDParams{
		Sandbox: &sandboxDefault,

		timeout: timeout,
	}
}

// NewTestNeonPayConfigByIDParamsWithContext creates a new TestNeonPayConfigByIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewTestNeonPayConfigByIDParamsWithContext(ctx context.Context) *TestNeonPayConfigByIDParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestNeonPayConfigByIDParams{
		Sandbox: &sandboxDefault,

		Context: ctx,
	}
}

// NewTestNeonPayConfigByIDParamsWithHTTPClient creates a new TestNeonPayConfigByIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewTestNeonPayConfigByIDParamsWithHTTPClient(client *http.Client) *TestNeonPayConfigByIDParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestNeonPayConfigByIDParams{
		Sandbox:    &sandboxDefault,
		HTTPClient: client,
	}
}

/*TestNeonPayConfigByIDParams contains all the parameters to send to the API endpoint
for the test neon pay config by id operation typically these are written to a http.Request
*/
type TestNeonPayConfigByIDParams struct {

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

// WithTimeout adds the timeout to the test neon pay config by id params
func (o *TestNeonPayConfigByIDParams) WithTimeout(timeout time.Duration) *TestNeonPayConfigByIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the test neon pay config by id params
func (o *TestNeonPayConfigByIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the test neon pay config by id params
func (o *TestNeonPayConfigByIDParams) WithContext(ctx context.Context) *TestNeonPayConfigByIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the test neon pay config by id params
func (o *TestNeonPayConfigByIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the test neon pay config by id params
func (o *TestNeonPayConfigByIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the test neon pay config by id params
func (o *TestNeonPayConfigByIDParams) WithHTTPClient(client *http.Client) *TestNeonPayConfigByIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the test neon pay config by id params
func (o *TestNeonPayConfigByIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the test neon pay config by id params
func (o *TestNeonPayConfigByIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *TestNeonPayConfigByIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithID adds the idVar to the test neon pay config by id params
func (o *TestNeonPayConfigByIDParams) WithID(idVar string) *TestNeonPayConfigByIDParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the test neon pay config by id params
func (o *TestNeonPayConfigByIDParams) SetID(idVar string) {
	o.ID = idVar
}

// WithSandbox adds the sandbox to the test neon pay config by id params
func (o *TestNeonPayConfigByIDParams) WithSandbox(sandbox *bool) *TestNeonPayConfigByIDParams {
	o.SetSandbox(sandbox)
	return o
}

// SetSandbox adds the sandbox to the test neon pay config by id params
func (o *TestNeonPayConfigByIDParams) SetSandbox(sandbox *bool) {
	o.Sandbox = sandbox
}

// WriteToRequest writes these params to a swagger request
func (o *TestNeonPayConfigByIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

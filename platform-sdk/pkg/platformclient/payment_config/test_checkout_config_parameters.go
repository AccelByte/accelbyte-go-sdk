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

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewTestCheckoutConfigParams creates a new TestCheckoutConfigParams object
// with the default values initialized.
func NewTestCheckoutConfigParams() *TestCheckoutConfigParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestCheckoutConfigParams{
		Sandbox: &sandboxDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewTestCheckoutConfigParamsWithTimeout creates a new TestCheckoutConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewTestCheckoutConfigParamsWithTimeout(timeout time.Duration) *TestCheckoutConfigParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestCheckoutConfigParams{
		Sandbox: &sandboxDefault,

		timeout: timeout,
	}
}

// NewTestCheckoutConfigParamsWithContext creates a new TestCheckoutConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewTestCheckoutConfigParamsWithContext(ctx context.Context) *TestCheckoutConfigParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestCheckoutConfigParams{
		Sandbox: &sandboxDefault,

		Context: ctx,
	}
}

// NewTestCheckoutConfigParamsWithHTTPClient creates a new TestCheckoutConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewTestCheckoutConfigParamsWithHTTPClient(client *http.Client) *TestCheckoutConfigParams {
	var (
		sandboxDefault = bool(true)
	)
	return &TestCheckoutConfigParams{
		Sandbox:    &sandboxDefault,
		HTTPClient: client,
	}
}

/*TestCheckoutConfigParams contains all the parameters to send to the API endpoint
for the test checkout config operation typically these are written to a http.Request
*/
type TestCheckoutConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.CheckoutConfig
	/*Sandbox*/
	Sandbox *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the test checkout config params
func (o *TestCheckoutConfigParams) WithTimeout(timeout time.Duration) *TestCheckoutConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the test checkout config params
func (o *TestCheckoutConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the test checkout config params
func (o *TestCheckoutConfigParams) WithContext(ctx context.Context) *TestCheckoutConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the test checkout config params
func (o *TestCheckoutConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the test checkout config params
func (o *TestCheckoutConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the test checkout config params
func (o *TestCheckoutConfigParams) WithHTTPClient(client *http.Client) *TestCheckoutConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the test checkout config params
func (o *TestCheckoutConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the test checkout config params
func (o *TestCheckoutConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *TestCheckoutConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the test checkout config params
func (o *TestCheckoutConfigParams) WithBody(body *platformclientmodels.CheckoutConfig) *TestCheckoutConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the test checkout config params
func (o *TestCheckoutConfigParams) SetBody(body *platformclientmodels.CheckoutConfig) {
	o.Body = body
}

// WithSandbox adds the sandbox to the test checkout config params
func (o *TestCheckoutConfigParams) WithSandbox(sandbox *bool) *TestCheckoutConfigParams {
	o.SetSandbox(sandbox)
	return o
}

// SetSandbox adds the sandbox to the test checkout config params
func (o *TestCheckoutConfigParams) SetSandbox(sandbox *bool) {
	o.Sandbox = sandbox
}

// WriteToRequest writes these params to a swagger request
func (o *TestCheckoutConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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

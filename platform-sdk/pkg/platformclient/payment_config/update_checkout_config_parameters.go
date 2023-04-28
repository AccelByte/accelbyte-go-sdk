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

// NewUpdateCheckoutConfigParams creates a new UpdateCheckoutConfigParams object
// with the default values initialized.
func NewUpdateCheckoutConfigParams() *UpdateCheckoutConfigParams {
	var (
		sandboxDefault  = bool(true)
		validateDefault = bool(false)
	)
	return &UpdateCheckoutConfigParams{
		Sandbox:  &sandboxDefault,
		Validate: &validateDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateCheckoutConfigParamsWithTimeout creates a new UpdateCheckoutConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateCheckoutConfigParamsWithTimeout(timeout time.Duration) *UpdateCheckoutConfigParams {
	var (
		sandboxDefault  = bool(true)
		validateDefault = bool(false)
	)
	return &UpdateCheckoutConfigParams{
		Sandbox:  &sandboxDefault,
		Validate: &validateDefault,

		timeout: timeout,
	}
}

// NewUpdateCheckoutConfigParamsWithContext creates a new UpdateCheckoutConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateCheckoutConfigParamsWithContext(ctx context.Context) *UpdateCheckoutConfigParams {
	var (
		sandboxDefault  = bool(true)
		validateDefault = bool(false)
	)
	return &UpdateCheckoutConfigParams{
		Sandbox:  &sandboxDefault,
		Validate: &validateDefault,

		Context: ctx,
	}
}

// NewUpdateCheckoutConfigParamsWithHTTPClient creates a new UpdateCheckoutConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateCheckoutConfigParamsWithHTTPClient(client *http.Client) *UpdateCheckoutConfigParams {
	var (
		sandboxDefault  = bool(true)
		validateDefault = bool(false)
	)
	return &UpdateCheckoutConfigParams{
		Sandbox:    &sandboxDefault,
		Validate:   &validateDefault,
		HTTPClient: client,
	}
}

/*UpdateCheckoutConfigParams contains all the parameters to send to the API endpoint
for the update checkout config operation typically these are written to a http.Request
*/
type UpdateCheckoutConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.CheckoutConfig
	/*ID*/
	ID string
	/*Sandbox*/
	Sandbox *bool
	/*Validate*/
	Validate *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update checkout config params
func (o *UpdateCheckoutConfigParams) WithTimeout(timeout time.Duration) *UpdateCheckoutConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update checkout config params
func (o *UpdateCheckoutConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update checkout config params
func (o *UpdateCheckoutConfigParams) WithContext(ctx context.Context) *UpdateCheckoutConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update checkout config params
func (o *UpdateCheckoutConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update checkout config params
func (o *UpdateCheckoutConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update checkout config params
func (o *UpdateCheckoutConfigParams) WithHTTPClient(client *http.Client) *UpdateCheckoutConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update checkout config params
func (o *UpdateCheckoutConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update checkout config params
func (o *UpdateCheckoutConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update checkout config params
func (o *UpdateCheckoutConfigParams) WithBody(body *platformclientmodels.CheckoutConfig) *UpdateCheckoutConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update checkout config params
func (o *UpdateCheckoutConfigParams) SetBody(body *platformclientmodels.CheckoutConfig) {
	o.Body = body
}

// WithID adds the idVar to the update checkout config params
func (o *UpdateCheckoutConfigParams) WithID(idVar string) *UpdateCheckoutConfigParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the update checkout config params
func (o *UpdateCheckoutConfigParams) SetID(idVar string) {
	o.ID = idVar
}

// WithSandbox adds the sandbox to the update checkout config params
func (o *UpdateCheckoutConfigParams) WithSandbox(sandbox *bool) *UpdateCheckoutConfigParams {
	o.SetSandbox(sandbox)
	return o
}

// SetSandbox adds the sandbox to the update checkout config params
func (o *UpdateCheckoutConfigParams) SetSandbox(sandbox *bool) {
	o.Sandbox = sandbox
}

// WithValidate adds the validate to the update checkout config params
func (o *UpdateCheckoutConfigParams) WithValidate(validate *bool) *UpdateCheckoutConfigParams {
	o.SetValidate(validate)
	return o
}

// SetValidate adds the validate to the update checkout config params
func (o *UpdateCheckoutConfigParams) SetValidate(validate *bool) {
	o.Validate = validate
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateCheckoutConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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

	if o.Validate != nil {

		// query param validate
		var qrValidate bool
		if o.Validate != nil {
			qrValidate = *o.Validate
		}
		qValidate := swag.FormatBool(qrValidate)
		if qValidate != "" {
			if err := r.SetQueryParam("validate", qValidate); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

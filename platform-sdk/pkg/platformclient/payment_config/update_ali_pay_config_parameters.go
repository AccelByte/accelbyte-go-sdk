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

// NewUpdateAliPayConfigParams creates a new UpdateAliPayConfigParams object
// with the default values initialized.
func NewUpdateAliPayConfigParams() *UpdateAliPayConfigParams {
	var (
		sandboxDefault  = bool(true)
		validateDefault = bool(false)
	)
	return &UpdateAliPayConfigParams{
		Sandbox:  &sandboxDefault,
		Validate: &validateDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateAliPayConfigParamsWithTimeout creates a new UpdateAliPayConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateAliPayConfigParamsWithTimeout(timeout time.Duration) *UpdateAliPayConfigParams {
	var (
		sandboxDefault  = bool(true)
		validateDefault = bool(false)
	)
	return &UpdateAliPayConfigParams{
		Sandbox:  &sandboxDefault,
		Validate: &validateDefault,

		timeout: timeout,
	}
}

// NewUpdateAliPayConfigParamsWithContext creates a new UpdateAliPayConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateAliPayConfigParamsWithContext(ctx context.Context) *UpdateAliPayConfigParams {
	var (
		sandboxDefault  = bool(true)
		validateDefault = bool(false)
	)
	return &UpdateAliPayConfigParams{
		Sandbox:  &sandboxDefault,
		Validate: &validateDefault,

		Context: ctx,
	}
}

// NewUpdateAliPayConfigParamsWithHTTPClient creates a new UpdateAliPayConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateAliPayConfigParamsWithHTTPClient(client *http.Client) *UpdateAliPayConfigParams {
	var (
		sandboxDefault  = bool(true)
		validateDefault = bool(false)
	)
	return &UpdateAliPayConfigParams{
		Sandbox:    &sandboxDefault,
		Validate:   &validateDefault,
		HTTPClient: client,
	}
}

/*UpdateAliPayConfigParams contains all the parameters to send to the API endpoint
for the update ali pay config operation typically these are written to a http.Request
*/
type UpdateAliPayConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.AliPayConfig
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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update ali pay config params
func (o *UpdateAliPayConfigParams) WithTimeout(timeout time.Duration) *UpdateAliPayConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update ali pay config params
func (o *UpdateAliPayConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update ali pay config params
func (o *UpdateAliPayConfigParams) WithContext(ctx context.Context) *UpdateAliPayConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update ali pay config params
func (o *UpdateAliPayConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update ali pay config params
func (o *UpdateAliPayConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update ali pay config params
func (o *UpdateAliPayConfigParams) WithHTTPClient(client *http.Client) *UpdateAliPayConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update ali pay config params
func (o *UpdateAliPayConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update ali pay config params
func (o *UpdateAliPayConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateAliPayConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update ali pay config params
func (o *UpdateAliPayConfigParams) WithBody(body *platformclientmodels.AliPayConfig) *UpdateAliPayConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update ali pay config params
func (o *UpdateAliPayConfigParams) SetBody(body *platformclientmodels.AliPayConfig) {
	o.Body = body
}

// WithID adds the idVar to the update ali pay config params
func (o *UpdateAliPayConfigParams) WithID(idVar string) *UpdateAliPayConfigParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the update ali pay config params
func (o *UpdateAliPayConfigParams) SetID(idVar string) {
	o.ID = idVar
}

// WithSandbox adds the sandbox to the update ali pay config params
func (o *UpdateAliPayConfigParams) WithSandbox(sandbox *bool) *UpdateAliPayConfigParams {
	o.SetSandbox(sandbox)
	return o
}

// SetSandbox adds the sandbox to the update ali pay config params
func (o *UpdateAliPayConfigParams) SetSandbox(sandbox *bool) {
	o.Sandbox = sandbox
}

// WithValidate adds the validate to the update ali pay config params
func (o *UpdateAliPayConfigParams) WithValidate(validate *bool) *UpdateAliPayConfigParams {
	o.SetValidate(validate)
	return o
}

// SetValidate adds the validate to the update ali pay config params
func (o *UpdateAliPayConfigParams) SetValidate(validate *bool) {
	o.Validate = validate
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateAliPayConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

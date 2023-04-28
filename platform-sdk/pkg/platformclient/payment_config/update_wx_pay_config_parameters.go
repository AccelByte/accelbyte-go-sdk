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

// NewUpdateWxPayConfigParams creates a new UpdateWxPayConfigParams object
// with the default values initialized.
func NewUpdateWxPayConfigParams() *UpdateWxPayConfigParams {
	var (
		validateDefault = bool(false)
	)
	return &UpdateWxPayConfigParams{
		Validate: &validateDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateWxPayConfigParamsWithTimeout creates a new UpdateWxPayConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateWxPayConfigParamsWithTimeout(timeout time.Duration) *UpdateWxPayConfigParams {
	var (
		validateDefault = bool(false)
	)
	return &UpdateWxPayConfigParams{
		Validate: &validateDefault,

		timeout: timeout,
	}
}

// NewUpdateWxPayConfigParamsWithContext creates a new UpdateWxPayConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateWxPayConfigParamsWithContext(ctx context.Context) *UpdateWxPayConfigParams {
	var (
		validateDefault = bool(false)
	)
	return &UpdateWxPayConfigParams{
		Validate: &validateDefault,

		Context: ctx,
	}
}

// NewUpdateWxPayConfigParamsWithHTTPClient creates a new UpdateWxPayConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateWxPayConfigParamsWithHTTPClient(client *http.Client) *UpdateWxPayConfigParams {
	var (
		validateDefault = bool(false)
	)
	return &UpdateWxPayConfigParams{
		Validate:   &validateDefault,
		HTTPClient: client,
	}
}

/*UpdateWxPayConfigParams contains all the parameters to send to the API endpoint
for the update wx pay config operation typically these are written to a http.Request
*/
type UpdateWxPayConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.WxPayConfigRequest
	/*ID*/
	ID string
	/*Validate*/
	Validate *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update wx pay config params
func (o *UpdateWxPayConfigParams) WithTimeout(timeout time.Duration) *UpdateWxPayConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update wx pay config params
func (o *UpdateWxPayConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update wx pay config params
func (o *UpdateWxPayConfigParams) WithContext(ctx context.Context) *UpdateWxPayConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update wx pay config params
func (o *UpdateWxPayConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update wx pay config params
func (o *UpdateWxPayConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update wx pay config params
func (o *UpdateWxPayConfigParams) WithHTTPClient(client *http.Client) *UpdateWxPayConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update wx pay config params
func (o *UpdateWxPayConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update wx pay config params
func (o *UpdateWxPayConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update wx pay config params
func (o *UpdateWxPayConfigParams) WithBody(body *platformclientmodels.WxPayConfigRequest) *UpdateWxPayConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update wx pay config params
func (o *UpdateWxPayConfigParams) SetBody(body *platformclientmodels.WxPayConfigRequest) {
	o.Body = body
}

// WithID adds the idVar to the update wx pay config params
func (o *UpdateWxPayConfigParams) WithID(idVar string) *UpdateWxPayConfigParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the update wx pay config params
func (o *UpdateWxPayConfigParams) SetID(idVar string) {
	o.ID = idVar
}

// WithValidate adds the validate to the update wx pay config params
func (o *UpdateWxPayConfigParams) WithValidate(validate *bool) *UpdateWxPayConfigParams {
	o.SetValidate(validate)
	return o
}

// SetValidate adds the validate to the update wx pay config params
func (o *UpdateWxPayConfigParams) SetValidate(validate *bool) {
	o.Validate = validate
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateWxPayConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

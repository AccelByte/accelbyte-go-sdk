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

// NewUpdateXsollaConfigParams creates a new UpdateXsollaConfigParams object
// with the default values initialized.
func NewUpdateXsollaConfigParams() *UpdateXsollaConfigParams {
	var (
		validateDefault = bool(false)
	)
	return &UpdateXsollaConfigParams{
		Validate: &validateDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateXsollaConfigParamsWithTimeout creates a new UpdateXsollaConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateXsollaConfigParamsWithTimeout(timeout time.Duration) *UpdateXsollaConfigParams {
	var (
		validateDefault = bool(false)
	)
	return &UpdateXsollaConfigParams{
		Validate: &validateDefault,

		timeout: timeout,
	}
}

// NewUpdateXsollaConfigParamsWithContext creates a new UpdateXsollaConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateXsollaConfigParamsWithContext(ctx context.Context) *UpdateXsollaConfigParams {
	var (
		validateDefault = bool(false)
	)
	return &UpdateXsollaConfigParams{
		Validate: &validateDefault,

		Context: ctx,
	}
}

// NewUpdateXsollaConfigParamsWithHTTPClient creates a new UpdateXsollaConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateXsollaConfigParamsWithHTTPClient(client *http.Client) *UpdateXsollaConfigParams {
	var (
		validateDefault = bool(false)
	)
	return &UpdateXsollaConfigParams{
		Validate:   &validateDefault,
		HTTPClient: client,
	}
}

/*UpdateXsollaConfigParams contains all the parameters to send to the API endpoint
for the update xsolla config operation typically these are written to a http.Request
*/
type UpdateXsollaConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.XsollaConfig
	/*ID*/
	ID string
	/*Validate*/
	Validate *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update xsolla config params
func (o *UpdateXsollaConfigParams) WithTimeout(timeout time.Duration) *UpdateXsollaConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update xsolla config params
func (o *UpdateXsollaConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update xsolla config params
func (o *UpdateXsollaConfigParams) WithContext(ctx context.Context) *UpdateXsollaConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update xsolla config params
func (o *UpdateXsollaConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update xsolla config params
func (o *UpdateXsollaConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update xsolla config params
func (o *UpdateXsollaConfigParams) WithHTTPClient(client *http.Client) *UpdateXsollaConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update xsolla config params
func (o *UpdateXsollaConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update xsolla config params
func (o *UpdateXsollaConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateXsollaConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update xsolla config params
func (o *UpdateXsollaConfigParams) WithBody(body *platformclientmodels.XsollaConfig) *UpdateXsollaConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update xsolla config params
func (o *UpdateXsollaConfigParams) SetBody(body *platformclientmodels.XsollaConfig) {
	o.Body = body
}

// WithID adds the idVar to the update xsolla config params
func (o *UpdateXsollaConfigParams) WithID(idVar string) *UpdateXsollaConfigParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the update xsolla config params
func (o *UpdateXsollaConfigParams) SetID(idVar string) {
	o.ID = idVar
}

// WithValidate adds the validate to the update xsolla config params
func (o *UpdateXsollaConfigParams) WithValidate(validate *bool) *UpdateXsollaConfigParams {
	o.SetValidate(validate)
	return o
}

// SetValidate adds the validate to the update xsolla config params
func (o *UpdateXsollaConfigParams) SetValidate(validate *bool) {
	o.Validate = validate
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateXsollaConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

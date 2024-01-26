// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package input_validations

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewAdminResetInputValidationsParams creates a new AdminResetInputValidationsParams object
// with the default values initialized.
func NewAdminResetInputValidationsParams() *AdminResetInputValidationsParams {
	var ()
	return &AdminResetInputValidationsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminResetInputValidationsParamsWithTimeout creates a new AdminResetInputValidationsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminResetInputValidationsParamsWithTimeout(timeout time.Duration) *AdminResetInputValidationsParams {
	var ()
	return &AdminResetInputValidationsParams{

		timeout: timeout,
	}
}

// NewAdminResetInputValidationsParamsWithContext creates a new AdminResetInputValidationsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminResetInputValidationsParamsWithContext(ctx context.Context) *AdminResetInputValidationsParams {
	var ()
	return &AdminResetInputValidationsParams{

		Context: ctx,
	}
}

// NewAdminResetInputValidationsParamsWithHTTPClient creates a new AdminResetInputValidationsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminResetInputValidationsParamsWithHTTPClient(client *http.Client) *AdminResetInputValidationsParams {
	var ()
	return &AdminResetInputValidationsParams{
		HTTPClient: client,
	}
}

/*AdminResetInputValidationsParams contains all the parameters to send to the API endpoint
for the admin reset input validations operation typically these are written to a http.Request
*/
type AdminResetInputValidationsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Field
	  Name of the input validation field to reset: email, username, displayName, password, avatar

	*/
	Field string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin reset input validations params
func (o *AdminResetInputValidationsParams) WithTimeout(timeout time.Duration) *AdminResetInputValidationsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin reset input validations params
func (o *AdminResetInputValidationsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin reset input validations params
func (o *AdminResetInputValidationsParams) WithContext(ctx context.Context) *AdminResetInputValidationsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin reset input validations params
func (o *AdminResetInputValidationsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin reset input validations params
func (o *AdminResetInputValidationsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin reset input validations params
func (o *AdminResetInputValidationsParams) WithHTTPClient(client *http.Client) *AdminResetInputValidationsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin reset input validations params
func (o *AdminResetInputValidationsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin reset input validations params
func (o *AdminResetInputValidationsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminResetInputValidationsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithField adds the field to the admin reset input validations params
func (o *AdminResetInputValidationsParams) WithField(field string) *AdminResetInputValidationsParams {
	o.SetField(field)
	return o
}

// SetField adds the field to the admin reset input validations params
func (o *AdminResetInputValidationsParams) SetField(field string) {
	o.Field = field
}

// WriteToRequest writes these params to a swagger request
func (o *AdminResetInputValidationsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param field
	if err := r.SetPathParam("field", o.Field); err != nil {
		return err
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

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

// NewAdminGetInputValidationsParams creates a new AdminGetInputValidationsParams object
// with the default values initialized.
func NewAdminGetInputValidationsParams() *AdminGetInputValidationsParams {
	var ()
	return &AdminGetInputValidationsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetInputValidationsParamsWithTimeout creates a new AdminGetInputValidationsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetInputValidationsParamsWithTimeout(timeout time.Duration) *AdminGetInputValidationsParams {
	var ()
	return &AdminGetInputValidationsParams{

		timeout: timeout,
	}
}

// NewAdminGetInputValidationsParamsWithContext creates a new AdminGetInputValidationsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetInputValidationsParamsWithContext(ctx context.Context) *AdminGetInputValidationsParams {
	var ()
	return &AdminGetInputValidationsParams{

		Context: ctx,
	}
}

// NewAdminGetInputValidationsParamsWithHTTPClient creates a new AdminGetInputValidationsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetInputValidationsParamsWithHTTPClient(client *http.Client) *AdminGetInputValidationsParams {
	var ()
	return &AdminGetInputValidationsParams{
		HTTPClient: client,
	}
}

/*AdminGetInputValidationsParams contains all the parameters to send to the API endpoint
for the admin get input validations operation typically these are written to a http.Request
*/
type AdminGetInputValidationsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get input validations params
func (o *AdminGetInputValidationsParams) WithTimeout(timeout time.Duration) *AdminGetInputValidationsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get input validations params
func (o *AdminGetInputValidationsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get input validations params
func (o *AdminGetInputValidationsParams) WithContext(ctx context.Context) *AdminGetInputValidationsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get input validations params
func (o *AdminGetInputValidationsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get input validations params
func (o *AdminGetInputValidationsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get input validations params
func (o *AdminGetInputValidationsParams) WithHTTPClient(client *http.Client) *AdminGetInputValidationsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get input validations params
func (o *AdminGetInputValidationsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get input validations params
func (o *AdminGetInputValidationsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetInputValidationsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetInputValidationsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

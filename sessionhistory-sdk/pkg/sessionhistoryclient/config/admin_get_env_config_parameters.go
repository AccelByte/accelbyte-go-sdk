// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

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

// NewAdminGetEnvConfigParams creates a new AdminGetEnvConfigParams object
// with the default values initialized.
func NewAdminGetEnvConfigParams() *AdminGetEnvConfigParams {
	var ()
	return &AdminGetEnvConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetEnvConfigParamsWithTimeout creates a new AdminGetEnvConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetEnvConfigParamsWithTimeout(timeout time.Duration) *AdminGetEnvConfigParams {
	var ()
	return &AdminGetEnvConfigParams{

		timeout: timeout,
	}
}

// NewAdminGetEnvConfigParamsWithContext creates a new AdminGetEnvConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetEnvConfigParamsWithContext(ctx context.Context) *AdminGetEnvConfigParams {
	var ()
	return &AdminGetEnvConfigParams{

		Context: ctx,
	}
}

// NewAdminGetEnvConfigParamsWithHTTPClient creates a new AdminGetEnvConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetEnvConfigParamsWithHTTPClient(client *http.Client) *AdminGetEnvConfigParams {
	var ()
	return &AdminGetEnvConfigParams{
		HTTPClient: client,
	}
}

/*AdminGetEnvConfigParams contains all the parameters to send to the API endpoint
for the admin get env config operation typically these are written to a http.Request
*/
type AdminGetEnvConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get env config params
func (o *AdminGetEnvConfigParams) WithTimeout(timeout time.Duration) *AdminGetEnvConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get env config params
func (o *AdminGetEnvConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get env config params
func (o *AdminGetEnvConfigParams) WithContext(ctx context.Context) *AdminGetEnvConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get env config params
func (o *AdminGetEnvConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get env config params
func (o *AdminGetEnvConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get env config params
func (o *AdminGetEnvConfigParams) WithHTTPClient(client *http.Client) *AdminGetEnvConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get env config params
func (o *AdminGetEnvConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get env config params
func (o *AdminGetEnvConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetEnvConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetEnvConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

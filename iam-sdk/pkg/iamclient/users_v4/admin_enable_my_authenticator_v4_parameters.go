// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// NewAdminEnableMyAuthenticatorV4Params creates a new AdminEnableMyAuthenticatorV4Params object
// with the default values initialized.
func NewAdminEnableMyAuthenticatorV4Params() *AdminEnableMyAuthenticatorV4Params {
	var ()
	return &AdminEnableMyAuthenticatorV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminEnableMyAuthenticatorV4ParamsWithTimeout creates a new AdminEnableMyAuthenticatorV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminEnableMyAuthenticatorV4ParamsWithTimeout(timeout time.Duration) *AdminEnableMyAuthenticatorV4Params {
	var ()
	return &AdminEnableMyAuthenticatorV4Params{

		timeout: timeout,
	}
}

// NewAdminEnableMyAuthenticatorV4ParamsWithContext creates a new AdminEnableMyAuthenticatorV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminEnableMyAuthenticatorV4ParamsWithContext(ctx context.Context) *AdminEnableMyAuthenticatorV4Params {
	var ()
	return &AdminEnableMyAuthenticatorV4Params{

		Context: ctx,
	}
}

// NewAdminEnableMyAuthenticatorV4ParamsWithHTTPClient creates a new AdminEnableMyAuthenticatorV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminEnableMyAuthenticatorV4ParamsWithHTTPClient(client *http.Client) *AdminEnableMyAuthenticatorV4Params {
	var ()
	return &AdminEnableMyAuthenticatorV4Params{
		HTTPClient: client,
	}
}

/*AdminEnableMyAuthenticatorV4Params contains all the parameters to send to the API endpoint
for the admin enable my authenticator v4 operation typically these are written to a http.Request
*/
type AdminEnableMyAuthenticatorV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Code
	  code

	*/
	Code string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin enable my authenticator v4 params
func (o *AdminEnableMyAuthenticatorV4Params) WithTimeout(timeout time.Duration) *AdminEnableMyAuthenticatorV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin enable my authenticator v4 params
func (o *AdminEnableMyAuthenticatorV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin enable my authenticator v4 params
func (o *AdminEnableMyAuthenticatorV4Params) WithContext(ctx context.Context) *AdminEnableMyAuthenticatorV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin enable my authenticator v4 params
func (o *AdminEnableMyAuthenticatorV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin enable my authenticator v4 params
func (o *AdminEnableMyAuthenticatorV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin enable my authenticator v4 params
func (o *AdminEnableMyAuthenticatorV4Params) WithHTTPClient(client *http.Client) *AdminEnableMyAuthenticatorV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin enable my authenticator v4 params
func (o *AdminEnableMyAuthenticatorV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin enable my authenticator v4 params
func (o *AdminEnableMyAuthenticatorV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminEnableMyAuthenticatorV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCode adds the code to the admin enable my authenticator v4 params
func (o *AdminEnableMyAuthenticatorV4Params) WithCode(code string) *AdminEnableMyAuthenticatorV4Params {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the admin enable my authenticator v4 params
func (o *AdminEnableMyAuthenticatorV4Params) SetCode(code string) {
	o.Code = code
}

// WriteToRequest writes these params to a swagger request
func (o *AdminEnableMyAuthenticatorV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param code
	frCode := o.Code
	fCode := frCode
	if fCode != "" {
		if err := r.SetFormParam("code", fCode); err != nil {
			return err
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

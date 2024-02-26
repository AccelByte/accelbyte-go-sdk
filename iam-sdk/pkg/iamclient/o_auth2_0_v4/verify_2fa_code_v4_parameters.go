// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_v4

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

// NewVerify2FACodeV4Params creates a new Verify2FACodeV4Params object
// with the default values initialized.
func NewVerify2FACodeV4Params() *Verify2FACodeV4Params {
	var ()
	return &Verify2FACodeV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewVerify2FACodeV4ParamsWithTimeout creates a new Verify2FACodeV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewVerify2FACodeV4ParamsWithTimeout(timeout time.Duration) *Verify2FACodeV4Params {
	var ()
	return &Verify2FACodeV4Params{

		timeout: timeout,
	}
}

// NewVerify2FACodeV4ParamsWithContext creates a new Verify2FACodeV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewVerify2FACodeV4ParamsWithContext(ctx context.Context) *Verify2FACodeV4Params {
	var ()
	return &Verify2FACodeV4Params{

		Context: ctx,
	}
}

// NewVerify2FACodeV4ParamsWithHTTPClient creates a new Verify2FACodeV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewVerify2FACodeV4ParamsWithHTTPClient(client *http.Client) *Verify2FACodeV4Params {
	var ()
	return &Verify2FACodeV4Params{
		HTTPClient: client,
	}
}

/*Verify2FACodeV4Params contains all the parameters to send to the API endpoint
for the verify2fa code v4 operation typically these are written to a http.Request
*/
type Verify2FACodeV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Code
	  code

	*/
	Code string
	/*Factor
	  factor

	*/
	Factor string
	/*MFAToken
	  mfa token

	*/
	MFAToken string
	/*RememberDevice
	  remember device

	*/
	RememberDevice bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) WithTimeout(timeout time.Duration) *Verify2FACodeV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) WithContext(ctx context.Context) *Verify2FACodeV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) WithHTTPClient(client *http.Client) *Verify2FACodeV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *Verify2FACodeV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCode adds the code to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) WithCode(code string) *Verify2FACodeV4Params {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) SetCode(code string) {
	o.Code = code
}

// WithFactor adds the factor to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) WithFactor(factor string) *Verify2FACodeV4Params {
	o.SetFactor(factor)
	return o
}

// SetFactor adds the factor to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) SetFactor(factor string) {
	o.Factor = factor
}

// WithMFAToken adds the mFAToken to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) WithMFAToken(mFAToken string) *Verify2FACodeV4Params {
	o.SetMFAToken(mFAToken)
	return o
}

// SetMFAToken adds the mfaToken to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) SetMFAToken(mFAToken string) {
	o.MFAToken = mFAToken
}

// WithRememberDevice adds the rememberDevice to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) WithRememberDevice(rememberDevice bool) *Verify2FACodeV4Params {
	o.SetRememberDevice(rememberDevice)
	return o
}

// SetRememberDevice adds the rememberDevice to the verify2fa code v4 params
func (o *Verify2FACodeV4Params) SetRememberDevice(rememberDevice bool) {
	o.RememberDevice = rememberDevice
}

// WriteToRequest writes these params to a swagger request
func (o *Verify2FACodeV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// form param factor
	frFactor := o.Factor
	fFactor := frFactor
	if fFactor != "" {
		if err := r.SetFormParam("factor", fFactor); err != nil {
			return err
		}
	}

	// form param mfaToken
	frMFAToken := o.MFAToken
	fMFAToken := frMFAToken
	if fMFAToken != "" {
		if err := r.SetFormParam("mfaToken", fMFAToken); err != nil {
			return err
		}
	}

	// form param rememberDevice
	frRememberDevice := o.RememberDevice
	fRememberDevice := swag.FormatBool(frRememberDevice)
	if fRememberDevice != "" {
		if err := r.SetFormParam("rememberDevice", fRememberDevice); err != nil {
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

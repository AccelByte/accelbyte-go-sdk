// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0

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

// NewVerify2FACodeForwardParams creates a new Verify2FACodeForwardParams object
// with the default values initialized.
func NewVerify2FACodeForwardParams() *Verify2FACodeForwardParams {
	var (
		rememberDeviceDefault = bool(false)
	)
	return &Verify2FACodeForwardParams{
		RememberDevice: &rememberDeviceDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewVerify2FACodeForwardParamsWithTimeout creates a new Verify2FACodeForwardParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewVerify2FACodeForwardParamsWithTimeout(timeout time.Duration) *Verify2FACodeForwardParams {
	var (
		rememberDeviceDefault = bool(false)
	)
	return &Verify2FACodeForwardParams{
		RememberDevice: &rememberDeviceDefault,

		timeout: timeout,
	}
}

// NewVerify2FACodeForwardParamsWithContext creates a new Verify2FACodeForwardParams object
// with the default values initialized, and the ability to set a context for a request
func NewVerify2FACodeForwardParamsWithContext(ctx context.Context) *Verify2FACodeForwardParams {
	var (
		rememberDeviceDefault = bool(false)
	)
	return &Verify2FACodeForwardParams{
		RememberDevice: &rememberDeviceDefault,

		Context: ctx,
	}
}

// NewVerify2FACodeForwardParamsWithHTTPClient creates a new Verify2FACodeForwardParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewVerify2FACodeForwardParamsWithHTTPClient(client *http.Client) *Verify2FACodeForwardParams {
	var (
		rememberDeviceDefault = bool(false)
	)
	return &Verify2FACodeForwardParams{
		RememberDevice: &rememberDeviceDefault,
		HTTPClient:     client,
	}
}

/*Verify2FACodeForwardParams contains all the parameters to send to the API endpoint
for the verify2fa code forward operation typically these are written to a http.Request
*/
type Verify2FACodeForwardParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*DefaultFactor
	  default factor, can be retrieved from the previous step

	*/
	DefaultFactor *string
	/*Factors
	  factors, can be retrieved from the previous step

	*/
	Factors *string
	/*RememberDevice
	  remember device

	*/
	RememberDevice *bool
	/*ClientID
	  client id

	*/
	ClientID string
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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) WithTimeout(timeout time.Duration) *Verify2FACodeForwardParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) WithContext(ctx context.Context) *Verify2FACodeForwardParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) WithHTTPClient(client *http.Client) *Verify2FACodeForwardParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *Verify2FACodeForwardParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDefaultFactor adds the defaultFactor to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) WithDefaultFactor(defaultFactor *string) *Verify2FACodeForwardParams {
	o.SetDefaultFactor(defaultFactor)
	return o
}

// SetDefaultFactor adds the defaultFactor to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) SetDefaultFactor(defaultFactor *string) {
	o.DefaultFactor = defaultFactor
}

// WithFactors adds the factors to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) WithFactors(factors *string) *Verify2FACodeForwardParams {
	o.SetFactors(factors)
	return o
}

// SetFactors adds the factors to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) SetFactors(factors *string) {
	o.Factors = factors
}

// WithRememberDevice adds the rememberDevice to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) WithRememberDevice(rememberDevice *bool) *Verify2FACodeForwardParams {
	o.SetRememberDevice(rememberDevice)
	return o
}

// SetRememberDevice adds the rememberDevice to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) SetRememberDevice(rememberDevice *bool) {
	o.RememberDevice = rememberDevice
}

// WithClientID adds the clientID to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) WithClientID(clientID string) *Verify2FACodeForwardParams {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithCode adds the code to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) WithCode(code string) *Verify2FACodeForwardParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) SetCode(code string) {
	o.Code = code
}

// WithFactor adds the factor to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) WithFactor(factor string) *Verify2FACodeForwardParams {
	o.SetFactor(factor)
	return o
}

// SetFactor adds the factor to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) SetFactor(factor string) {
	o.Factor = factor
}

// WithMFAToken adds the mFAToken to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) WithMFAToken(mFAToken string) *Verify2FACodeForwardParams {
	o.SetMFAToken(mFAToken)
	return o
}

// SetMFAToken adds the mfaToken to the verify2fa code forward params
func (o *Verify2FACodeForwardParams) SetMFAToken(mFAToken string) {
	o.MFAToken = mFAToken
}

// WriteToRequest writes these params to a swagger request
func (o *Verify2FACodeForwardParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.DefaultFactor != nil {

		// form param defaultFactor
		var frDefaultFactor string
		if o.DefaultFactor != nil {
			frDefaultFactor = *o.DefaultFactor
		}
		fDefaultFactor := frDefaultFactor
		if fDefaultFactor != "" {
			if err := r.SetFormParam("defaultFactor", fDefaultFactor); err != nil {
				return err
			}
		}

	}

	if o.Factors != nil {

		// form param factors
		var frFactors string
		if o.Factors != nil {
			frFactors = *o.Factors
		}
		fFactors := frFactors
		if fFactors != "" {
			if err := r.SetFormParam("factors", fFactors); err != nil {
				return err
			}
		}

	}

	if o.RememberDevice != nil {

		// form param rememberDevice
		var frRememberDevice bool
		if o.RememberDevice != nil {
			frRememberDevice = *o.RememberDevice
		}
		fRememberDevice := swag.FormatBool(frRememberDevice)
		if fRememberDevice != "" {
			if err := r.SetFormParam("rememberDevice", fRememberDevice); err != nil {
				return err
			}
		}

	}

	// form param clientId
	frClientID := o.ClientID
	fClientID := frClientID
	if fClientID != "" {
		if err := r.SetFormParam("clientId", fClientID); err != nil {
			return err
		}
	}

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

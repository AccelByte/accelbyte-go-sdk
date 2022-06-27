// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package o_auth2_0

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewVerify2FACodeParams creates a new Verify2FACodeParams object
// with the default values initialized.
func NewVerify2FACodeParams() *Verify2FACodeParams {
	var ()
	return &Verify2FACodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewVerify2FACodeParamsWithTimeout creates a new Verify2FACodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewVerify2FACodeParamsWithTimeout(timeout time.Duration) *Verify2FACodeParams {
	var ()
	return &Verify2FACodeParams{

		timeout: timeout,
	}
}

// NewVerify2FACodeParamsWithContext creates a new Verify2FACodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewVerify2FACodeParamsWithContext(ctx context.Context) *Verify2FACodeParams {
	var ()
	return &Verify2FACodeParams{

		Context: ctx,
	}
}

// NewVerify2FACodeParamsWithHTTPClient creates a new Verify2FACodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewVerify2FACodeParamsWithHTTPClient(client *http.Client) *Verify2FACodeParams {
	var ()
	return &Verify2FACodeParams{
		HTTPClient: client,
	}
}

/*Verify2FACodeParams contains all the parameters to send to the API endpoint
for the verify2 f a code operation typically these are written to a http.Request
*/
type Verify2FACodeParams struct {

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
	/*MfaToken
	  mfa token

	*/
	MfaToken string
	/*RememberDevice
	  remember device

	*/
	RememberDevice bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the verify2 f a code params
func (o *Verify2FACodeParams) WithTimeout(timeout time.Duration) *Verify2FACodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the verify2 f a code params
func (o *Verify2FACodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the verify2 f a code params
func (o *Verify2FACodeParams) WithContext(ctx context.Context) *Verify2FACodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the verify2 f a code params
func (o *Verify2FACodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the verify2 f a code params
func (o *Verify2FACodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the verify2 f a code params
func (o *Verify2FACodeParams) WithHTTPClient(client *http.Client) *Verify2FACodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the verify2 f a code params
func (o *Verify2FACodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the verify2 f a code params
func (o *Verify2FACodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCode adds the code to the verify2 f a code params
func (o *Verify2FACodeParams) WithCode(code string) *Verify2FACodeParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the verify2 f a code params
func (o *Verify2FACodeParams) SetCode(code string) {
	o.Code = code
}

// WithFactor adds the factor to the verify2 f a code params
func (o *Verify2FACodeParams) WithFactor(factor string) *Verify2FACodeParams {
	o.SetFactor(factor)
	return o
}

// SetFactor adds the factor to the verify2 f a code params
func (o *Verify2FACodeParams) SetFactor(factor string) {
	o.Factor = factor
}

// WithMfaToken adds the mfaToken to the verify2 f a code params
func (o *Verify2FACodeParams) WithMfaToken(mfaToken string) *Verify2FACodeParams {
	o.SetMfaToken(mfaToken)
	return o
}

// SetMfaToken adds the mfaToken to the verify2 f a code params
func (o *Verify2FACodeParams) SetMfaToken(mfaToken string) {
	o.MfaToken = mfaToken
}

// WithRememberDevice adds the rememberDevice to the verify2 f a code params
func (o *Verify2FACodeParams) WithRememberDevice(rememberDevice bool) *Verify2FACodeParams {
	o.SetRememberDevice(rememberDevice)
	return o
}

// SetRememberDevice adds the rememberDevice to the verify2 f a code params
func (o *Verify2FACodeParams) SetRememberDevice(rememberDevice bool) {
	o.RememberDevice = rememberDevice
}

// WriteToRequest writes these params to a swagger request
func (o *Verify2FACodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
	frMfaToken := o.MfaToken
	fMfaToken := frMfaToken
	if fMfaToken != "" {
		if err := r.SetFormParam("mfaToken", fMfaToken); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

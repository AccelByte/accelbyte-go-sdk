// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sso_saml_2_0

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

// NewPlatformAuthenticateSAMLV3HandlerParams creates a new PlatformAuthenticateSAMLV3HandlerParams object
// with the default values initialized.
func NewPlatformAuthenticateSAMLV3HandlerParams() *PlatformAuthenticateSAMLV3HandlerParams {
	var ()
	return &PlatformAuthenticateSAMLV3HandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPlatformAuthenticateSAMLV3HandlerParamsWithTimeout creates a new PlatformAuthenticateSAMLV3HandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPlatformAuthenticateSAMLV3HandlerParamsWithTimeout(timeout time.Duration) *PlatformAuthenticateSAMLV3HandlerParams {
	var ()
	return &PlatformAuthenticateSAMLV3HandlerParams{

		timeout: timeout,
	}
}

// NewPlatformAuthenticateSAMLV3HandlerParamsWithContext creates a new PlatformAuthenticateSAMLV3HandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewPlatformAuthenticateSAMLV3HandlerParamsWithContext(ctx context.Context) *PlatformAuthenticateSAMLV3HandlerParams {
	var ()
	return &PlatformAuthenticateSAMLV3HandlerParams{

		Context: ctx,
	}
}

// NewPlatformAuthenticateSAMLV3HandlerParamsWithHTTPClient creates a new PlatformAuthenticateSAMLV3HandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPlatformAuthenticateSAMLV3HandlerParamsWithHTTPClient(client *http.Client) *PlatformAuthenticateSAMLV3HandlerParams {
	var ()
	return &PlatformAuthenticateSAMLV3HandlerParams{
		HTTPClient: client,
	}
}

/*PlatformAuthenticateSAMLV3HandlerParams contains all the parameters to send to the API endpoint
for the platform authenticate samlv3 handler operation typically these are written to a http.Request
*/
type PlatformAuthenticateSAMLV3HandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*Code
	  The authorization code from 3rd party OAuth server

	*/
	Code *string
	/*Error
	  The error message from Identity Provider (IdP)

	*/
	Error *string
	/*State
	  State that contains request ID retrieved from authorize endpoint ([GET] iam/v3/oauth/authorize)

	*/
	State string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) WithTimeout(timeout time.Duration) *PlatformAuthenticateSAMLV3HandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) WithContext(ctx context.Context) *PlatformAuthenticateSAMLV3HandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) WithHTTPClient(client *http.Client) *PlatformAuthenticateSAMLV3HandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PlatformAuthenticateSAMLV3HandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPlatformID adds the platformID to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) WithPlatformID(platformID string) *PlatformAuthenticateSAMLV3HandlerParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithCode adds the code to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) WithCode(code *string) *PlatformAuthenticateSAMLV3HandlerParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) SetCode(code *string) {
	o.Code = code
}

// WithError adds the errorVar to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) WithError(errorVar *string) *PlatformAuthenticateSAMLV3HandlerParams {
	o.SetError(errorVar)
	return o
}

// SetError adds the error to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) SetError(errorVar *string) {
	o.Error = errorVar
}

// WithState adds the state to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) WithState(state string) *PlatformAuthenticateSAMLV3HandlerParams {
	o.SetState(state)
	return o
}

// SetState adds the state to the platform authenticate samlv3 handler params
func (o *PlatformAuthenticateSAMLV3HandlerParams) SetState(state string) {
	o.State = state
}

// WriteToRequest writes these params to a swagger request
func (o *PlatformAuthenticateSAMLV3HandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
		return err
	}

	if o.Code != nil {

		// query param code
		var qrCode string
		if o.Code != nil {
			qrCode = *o.Code
		}
		qCode := qrCode
		if qCode != "" {
			if err := r.SetQueryParam("code", qCode); err != nil {
				return err
			}
		}

	}

	if o.Error != nil {

		// query param error
		var qrError string
		if o.Error != nil {
			qrError = *o.Error
		}
		qError := qrError
		if qError != "" {
			if err := r.SetQueryParam("error", qError); err != nil {
				return err
			}
		}

	}

	// query param state
	qrState := o.State
	qState := qrState
	if qState != "" {
		if err := r.SetQueryParam("state", qState); err != nil {
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

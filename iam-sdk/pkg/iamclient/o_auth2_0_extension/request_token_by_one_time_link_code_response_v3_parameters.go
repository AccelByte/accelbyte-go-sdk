// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_extension

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

// NewRequestTokenByOneTimeLinkCodeResponseV3Params creates a new RequestTokenByOneTimeLinkCodeResponseV3Params object
// with the default values initialized.
func NewRequestTokenByOneTimeLinkCodeResponseV3Params() *RequestTokenByOneTimeLinkCodeResponseV3Params {
	var (
		isTransientDefault = bool(false)
	)
	return &RequestTokenByOneTimeLinkCodeResponseV3Params{
		IsTransient: &isTransientDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewRequestTokenByOneTimeLinkCodeResponseV3ParamsWithTimeout creates a new RequestTokenByOneTimeLinkCodeResponseV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRequestTokenByOneTimeLinkCodeResponseV3ParamsWithTimeout(timeout time.Duration) *RequestTokenByOneTimeLinkCodeResponseV3Params {
	var (
		isTransientDefault = bool(false)
	)
	return &RequestTokenByOneTimeLinkCodeResponseV3Params{
		IsTransient: &isTransientDefault,

		timeout: timeout,
	}
}

// NewRequestTokenByOneTimeLinkCodeResponseV3ParamsWithContext creates a new RequestTokenByOneTimeLinkCodeResponseV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewRequestTokenByOneTimeLinkCodeResponseV3ParamsWithContext(ctx context.Context) *RequestTokenByOneTimeLinkCodeResponseV3Params {
	var (
		isTransientDefault = bool(false)
	)
	return &RequestTokenByOneTimeLinkCodeResponseV3Params{
		IsTransient: &isTransientDefault,

		Context: ctx,
	}
}

// NewRequestTokenByOneTimeLinkCodeResponseV3ParamsWithHTTPClient creates a new RequestTokenByOneTimeLinkCodeResponseV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRequestTokenByOneTimeLinkCodeResponseV3ParamsWithHTTPClient(client *http.Client) *RequestTokenByOneTimeLinkCodeResponseV3Params {
	var (
		isTransientDefault = bool(false)
	)
	return &RequestTokenByOneTimeLinkCodeResponseV3Params{
		IsTransient: &isTransientDefault,
		HTTPClient:  client,
	}
}

/*RequestTokenByOneTimeLinkCodeResponseV3Params contains all the parameters to send to the API endpoint
for the request token by one time link code response v3 operation typically these are written to a http.Request
*/
type RequestTokenByOneTimeLinkCodeResponseV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AdditionalData
	  Additional info, it will be passed to login success event.

	*/
	AdditionalData *string
	/*IsTransient
	  will produce transient token

	*/
	IsTransient *bool
	/*ClientID
	  client id

	*/
	ClientID string
	/*OneTimeLinkCode
	  one time linking code

	*/
	OneTimeLinkCode string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) WithTimeout(timeout time.Duration) *RequestTokenByOneTimeLinkCodeResponseV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) WithContext(ctx context.Context) *RequestTokenByOneTimeLinkCodeResponseV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) WithHTTPClient(client *http.Client) *RequestTokenByOneTimeLinkCodeResponseV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAdditionalData adds the additionalData to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) WithAdditionalData(additionalData *string) *RequestTokenByOneTimeLinkCodeResponseV3Params {
	o.SetAdditionalData(additionalData)
	return o
}

// SetAdditionalData adds the additionalData to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) SetAdditionalData(additionalData *string) {
	o.AdditionalData = additionalData
}

// WithIsTransient adds the isTransient to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) WithIsTransient(isTransient *bool) *RequestTokenByOneTimeLinkCodeResponseV3Params {
	o.SetIsTransient(isTransient)
	return o
}

// SetIsTransient adds the isTransient to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) SetIsTransient(isTransient *bool) {
	o.IsTransient = isTransient
}

// WithClientID adds the clientID to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) WithClientID(clientID string) *RequestTokenByOneTimeLinkCodeResponseV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithOneTimeLinkCode adds the oneTimeLinkCode to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) WithOneTimeLinkCode(oneTimeLinkCode string) *RequestTokenByOneTimeLinkCodeResponseV3Params {
	o.SetOneTimeLinkCode(oneTimeLinkCode)
	return o
}

// SetOneTimeLinkCode adds the oneTimeLinkCode to the request token by one time link code response v3 params
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) SetOneTimeLinkCode(oneTimeLinkCode string) {
	o.OneTimeLinkCode = oneTimeLinkCode
}

// WriteToRequest writes these params to a swagger request
func (o *RequestTokenByOneTimeLinkCodeResponseV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.AdditionalData != nil {

		// form param additionalData
		var frAdditionalData string
		if o.AdditionalData != nil {
			frAdditionalData = *o.AdditionalData
		}
		fAdditionalData := frAdditionalData
		if fAdditionalData != "" {
			if err := r.SetFormParam("additionalData", fAdditionalData); err != nil {
				return err
			}
		}

	}

	if o.IsTransient != nil {

		// form param isTransient
		var frIsTransient bool
		if o.IsTransient != nil {
			frIsTransient = *o.IsTransient
		}
		fIsTransient := swag.FormatBool(frIsTransient)
		if fIsTransient != "" {
			if err := r.SetFormParam("isTransient", fIsTransient); err != nil {
				return err
			}
		}

	}

	// form param client_id
	frClientID := o.ClientID
	fClientID := frClientID
	if fClientID != "" {
		if err := r.SetFormParam("client_id", fClientID); err != nil {
			return err
		}
	}

	// form param oneTimeLinkCode
	frOneTimeLinkCode := o.OneTimeLinkCode
	fOneTimeLinkCode := frOneTimeLinkCode
	if fOneTimeLinkCode != "" {
		if err := r.SetFormParam("oneTimeLinkCode", fOneTimeLinkCode); err != nil {
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

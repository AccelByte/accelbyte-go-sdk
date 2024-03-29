// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sso

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

// NewLoginSSOClientParams creates a new LoginSSOClientParams object
// with the default values initialized.
func NewLoginSSOClientParams() *LoginSSOClientParams {
	var ()
	return &LoginSSOClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewLoginSSOClientParamsWithTimeout creates a new LoginSSOClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewLoginSSOClientParamsWithTimeout(timeout time.Duration) *LoginSSOClientParams {
	var ()
	return &LoginSSOClientParams{

		timeout: timeout,
	}
}

// NewLoginSSOClientParamsWithContext creates a new LoginSSOClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewLoginSSOClientParamsWithContext(ctx context.Context) *LoginSSOClientParams {
	var ()
	return &LoginSSOClientParams{

		Context: ctx,
	}
}

// NewLoginSSOClientParamsWithHTTPClient creates a new LoginSSOClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewLoginSSOClientParamsWithHTTPClient(client *http.Client) *LoginSSOClientParams {
	var ()
	return &LoginSSOClientParams{
		HTTPClient: client,
	}
}

/*LoginSSOClientParams contains all the parameters to send to the API endpoint
for the login sso client operation typically these are written to a http.Request
*/
type LoginSSOClientParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PlatformID
	  SSO Client ID

	*/
	PlatformID string
	/*Payload
	  Key value payload received from SSO client, if any, and must be escaped

	*/
	Payload *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the login sso client params
func (o *LoginSSOClientParams) WithTimeout(timeout time.Duration) *LoginSSOClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the login sso client params
func (o *LoginSSOClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the login sso client params
func (o *LoginSSOClientParams) WithContext(ctx context.Context) *LoginSSOClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the login sso client params
func (o *LoginSSOClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the login sso client params
func (o *LoginSSOClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the login sso client params
func (o *LoginSSOClientParams) WithHTTPClient(client *http.Client) *LoginSSOClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the login sso client params
func (o *LoginSSOClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the login sso client params
func (o *LoginSSOClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *LoginSSOClientParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPlatformID adds the platformID to the login sso client params
func (o *LoginSSOClientParams) WithPlatformID(platformID string) *LoginSSOClientParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the login sso client params
func (o *LoginSSOClientParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithPayload adds the payload to the login sso client params
func (o *LoginSSOClientParams) WithPayload(payload *string) *LoginSSOClientParams {
	o.SetPayload(payload)
	return o
}

// SetPayload adds the payload to the login sso client params
func (o *LoginSSOClientParams) SetPayload(payload *string) {
	o.Payload = payload
}

// WriteToRequest writes these params to a swagger request
func (o *LoginSSOClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
		return err
	}

	if o.Payload != nil {

		// query param payload
		var qrPayload string
		if o.Payload != nil {
			qrPayload = *o.Payload
		}
		qPayload := qrPayload
		if qPayload != "" {
			if err := r.SetQueryParam("payload", qPayload); err != nil {
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

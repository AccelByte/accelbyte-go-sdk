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
)

// NewAuthCodeRequestV3Params creates a new AuthCodeRequestV3Params object
// with the default values initialized.
func NewAuthCodeRequestV3Params() *AuthCodeRequestV3Params {
	var ()
	return &AuthCodeRequestV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAuthCodeRequestV3ParamsWithTimeout creates a new AuthCodeRequestV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAuthCodeRequestV3ParamsWithTimeout(timeout time.Duration) *AuthCodeRequestV3Params {
	var ()
	return &AuthCodeRequestV3Params{

		timeout: timeout,
	}
}

// NewAuthCodeRequestV3ParamsWithContext creates a new AuthCodeRequestV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAuthCodeRequestV3ParamsWithContext(ctx context.Context) *AuthCodeRequestV3Params {
	var ()
	return &AuthCodeRequestV3Params{

		Context: ctx,
	}
}

// NewAuthCodeRequestV3ParamsWithHTTPClient creates a new AuthCodeRequestV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAuthCodeRequestV3ParamsWithHTTPClient(client *http.Client) *AuthCodeRequestV3Params {
	var ()
	return &AuthCodeRequestV3Params{
		HTTPClient: client,
	}
}

/*AuthCodeRequestV3Params contains all the parameters to send to the API endpoint
for the auth code request v3 operation typically these are written to a http.Request
*/
type AuthCodeRequestV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*ClientID
	  Client ID

	*/
	ClientID *string
	/*RedirectURI
	  Redirect URI

	*/
	RedirectURI *string
	/*RequestID
	  Request ID retrieved from authorize endpoint ([GET] iam/v3/oauth/authorize)

	*/
	RequestID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the auth code request v3 params
func (o *AuthCodeRequestV3Params) WithTimeout(timeout time.Duration) *AuthCodeRequestV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the auth code request v3 params
func (o *AuthCodeRequestV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the auth code request v3 params
func (o *AuthCodeRequestV3Params) WithContext(ctx context.Context) *AuthCodeRequestV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the auth code request v3 params
func (o *AuthCodeRequestV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the auth code request v3 params
func (o *AuthCodeRequestV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the auth code request v3 params
func (o *AuthCodeRequestV3Params) WithHTTPClient(client *http.Client) *AuthCodeRequestV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the auth code request v3 params
func (o *AuthCodeRequestV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the auth code request v3 params
func (o *AuthCodeRequestV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AuthCodeRequestV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPlatformID adds the platformID to the auth code request v3 params
func (o *AuthCodeRequestV3Params) WithPlatformID(platformID string) *AuthCodeRequestV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the auth code request v3 params
func (o *AuthCodeRequestV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithClientID adds the clientID to the auth code request v3 params
func (o *AuthCodeRequestV3Params) WithClientID(clientID *string) *AuthCodeRequestV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the auth code request v3 params
func (o *AuthCodeRequestV3Params) SetClientID(clientID *string) {
	o.ClientID = clientID
}

// WithRedirectURI adds the redirectURI to the auth code request v3 params
func (o *AuthCodeRequestV3Params) WithRedirectURI(redirectURI *string) *AuthCodeRequestV3Params {
	o.SetRedirectURI(redirectURI)
	return o
}

// SetRedirectURI adds the redirectUri to the auth code request v3 params
func (o *AuthCodeRequestV3Params) SetRedirectURI(redirectURI *string) {
	o.RedirectURI = redirectURI
}

// WithRequestID adds the requestID to the auth code request v3 params
func (o *AuthCodeRequestV3Params) WithRequestID(requestID string) *AuthCodeRequestV3Params {
	o.SetRequestID(requestID)
	return o
}

// SetRequestID adds the requestId to the auth code request v3 params
func (o *AuthCodeRequestV3Params) SetRequestID(requestID string) {
	o.RequestID = requestID
}

// WriteToRequest writes these params to a swagger request
func (o *AuthCodeRequestV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
		return err
	}

	if o.ClientID != nil {

		// query param client_id
		var qrClientID string
		if o.ClientID != nil {
			qrClientID = *o.ClientID
		}
		qClientID := qrClientID
		if qClientID != "" {
			if err := r.SetQueryParam("client_id", qClientID); err != nil {
				return err
			}
		}

	}

	if o.RedirectURI != nil {

		// query param redirect_uri
		var qrRedirectURI string
		if o.RedirectURI != nil {
			qrRedirectURI = *o.RedirectURI
		}
		qRedirectURI := qrRedirectURI
		if qRedirectURI != "" {
			if err := r.SetQueryParam("redirect_uri", qRedirectURI); err != nil {
				return err
			}
		}

	}

	// query param request_id
	qrRequestID := o.RequestID
	qRequestID := qrRequestID
	if qRequestID != "" {
		if err := r.SetQueryParam("request_id", qRequestID); err != nil {
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

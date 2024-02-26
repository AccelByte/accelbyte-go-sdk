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

// NewAuthenticationWithPlatformLinkV4Params creates a new AuthenticationWithPlatformLinkV4Params object
// with the default values initialized.
func NewAuthenticationWithPlatformLinkV4Params() *AuthenticationWithPlatformLinkV4Params {
	var ()
	return &AuthenticationWithPlatformLinkV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAuthenticationWithPlatformLinkV4ParamsWithTimeout creates a new AuthenticationWithPlatformLinkV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAuthenticationWithPlatformLinkV4ParamsWithTimeout(timeout time.Duration) *AuthenticationWithPlatformLinkV4Params {
	var ()
	return &AuthenticationWithPlatformLinkV4Params{

		timeout: timeout,
	}
}

// NewAuthenticationWithPlatformLinkV4ParamsWithContext creates a new AuthenticationWithPlatformLinkV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAuthenticationWithPlatformLinkV4ParamsWithContext(ctx context.Context) *AuthenticationWithPlatformLinkV4Params {
	var ()
	return &AuthenticationWithPlatformLinkV4Params{

		Context: ctx,
	}
}

// NewAuthenticationWithPlatformLinkV4ParamsWithHTTPClient creates a new AuthenticationWithPlatformLinkV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAuthenticationWithPlatformLinkV4ParamsWithHTTPClient(client *http.Client) *AuthenticationWithPlatformLinkV4Params {
	var ()
	return &AuthenticationWithPlatformLinkV4Params{
		HTTPClient: client,
	}
}

/*AuthenticationWithPlatformLinkV4Params contains all the parameters to send to the API endpoint
for the authentication with platform link v4 operation typically these are written to a http.Request
*/
type AuthenticationWithPlatformLinkV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ExtendExp
	  Extend expiration date of refresh token

	*/
	ExtendExp *bool
	/*ClientID
	  Client ID

	*/
	ClientID string
	/*LinkingToken
	  Platform linking Token

	*/
	LinkingToken string
	/*Password
	  Account password

	*/
	Password string
	/*Username
	  Account username

	*/
	Username string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) WithTimeout(timeout time.Duration) *AuthenticationWithPlatformLinkV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) WithContext(ctx context.Context) *AuthenticationWithPlatformLinkV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) WithHTTPClient(client *http.Client) *AuthenticationWithPlatformLinkV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AuthenticationWithPlatformLinkV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithExtendExp adds the extendExp to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) WithExtendExp(extendExp *bool) *AuthenticationWithPlatformLinkV4Params {
	o.SetExtendExp(extendExp)
	return o
}

// SetExtendExp adds the extendExp to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) SetExtendExp(extendExp *bool) {
	o.ExtendExp = extendExp
}

// WithClientID adds the clientID to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) WithClientID(clientID string) *AuthenticationWithPlatformLinkV4Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithLinkingToken adds the linkingToken to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) WithLinkingToken(linkingToken string) *AuthenticationWithPlatformLinkV4Params {
	o.SetLinkingToken(linkingToken)
	return o
}

// SetLinkingToken adds the linkingToken to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) SetLinkingToken(linkingToken string) {
	o.LinkingToken = linkingToken
}

// WithPassword adds the password to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) WithPassword(password string) *AuthenticationWithPlatformLinkV4Params {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) SetPassword(password string) {
	o.Password = password
}

// WithUsername adds the username to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) WithUsername(username string) *AuthenticationWithPlatformLinkV4Params {
	o.SetUsername(username)
	return o
}

// SetUsername adds the username to the authentication with platform link v4 params
func (o *AuthenticationWithPlatformLinkV4Params) SetUsername(username string) {
	o.Username = username
}

// WriteToRequest writes these params to a swagger request
func (o *AuthenticationWithPlatformLinkV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.ExtendExp != nil {

		// form param extend_exp
		var frExtendExp bool
		if o.ExtendExp != nil {
			frExtendExp = *o.ExtendExp
		}
		fExtendExp := swag.FormatBool(frExtendExp)
		if fExtendExp != "" {
			if err := r.SetFormParam("extend_exp", fExtendExp); err != nil {
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

	// form param linkingToken
	frLinkingToken := o.LinkingToken
	fLinkingToken := frLinkingToken
	if fLinkingToken != "" {
		if err := r.SetFormParam("linkingToken", fLinkingToken); err != nil {
			return err
		}
	}

	// form param password
	frPassword := o.Password
	fPassword := frPassword
	if fPassword != "" {
		if err := r.SetFormParam("password", fPassword); err != nil {
			return err
		}
	}

	// form param username
	frUsername := o.Username
	fUsername := frUsername
	if fUsername != "" {
		if err := r.SetFormParam("username", fUsername); err != nil {
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

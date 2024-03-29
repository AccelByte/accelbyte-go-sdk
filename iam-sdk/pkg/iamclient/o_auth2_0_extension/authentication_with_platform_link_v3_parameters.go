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

// NewAuthenticationWithPlatformLinkV3Params creates a new AuthenticationWithPlatformLinkV3Params object
// with the default values initialized.
func NewAuthenticationWithPlatformLinkV3Params() *AuthenticationWithPlatformLinkV3Params {
	var ()
	return &AuthenticationWithPlatformLinkV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAuthenticationWithPlatformLinkV3ParamsWithTimeout creates a new AuthenticationWithPlatformLinkV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAuthenticationWithPlatformLinkV3ParamsWithTimeout(timeout time.Duration) *AuthenticationWithPlatformLinkV3Params {
	var ()
	return &AuthenticationWithPlatformLinkV3Params{

		timeout: timeout,
	}
}

// NewAuthenticationWithPlatformLinkV3ParamsWithContext creates a new AuthenticationWithPlatformLinkV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAuthenticationWithPlatformLinkV3ParamsWithContext(ctx context.Context) *AuthenticationWithPlatformLinkV3Params {
	var ()
	return &AuthenticationWithPlatformLinkV3Params{

		Context: ctx,
	}
}

// NewAuthenticationWithPlatformLinkV3ParamsWithHTTPClient creates a new AuthenticationWithPlatformLinkV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAuthenticationWithPlatformLinkV3ParamsWithHTTPClient(client *http.Client) *AuthenticationWithPlatformLinkV3Params {
	var ()
	return &AuthenticationWithPlatformLinkV3Params{
		HTTPClient: client,
	}
}

/*AuthenticationWithPlatformLinkV3Params contains all the parameters to send to the API endpoint
for the authentication with platform link v3 operation typically these are written to a http.Request
*/
type AuthenticationWithPlatformLinkV3Params struct {

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

// WithTimeout adds the timeout to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) WithTimeout(timeout time.Duration) *AuthenticationWithPlatformLinkV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) WithContext(ctx context.Context) *AuthenticationWithPlatformLinkV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) WithHTTPClient(client *http.Client) *AuthenticationWithPlatformLinkV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AuthenticationWithPlatformLinkV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithExtendExp adds the extendExp to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) WithExtendExp(extendExp *bool) *AuthenticationWithPlatformLinkV3Params {
	o.SetExtendExp(extendExp)
	return o
}

// SetExtendExp adds the extendExp to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) SetExtendExp(extendExp *bool) {
	o.ExtendExp = extendExp
}

// WithClientID adds the clientID to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) WithClientID(clientID string) *AuthenticationWithPlatformLinkV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithLinkingToken adds the linkingToken to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) WithLinkingToken(linkingToken string) *AuthenticationWithPlatformLinkV3Params {
	o.SetLinkingToken(linkingToken)
	return o
}

// SetLinkingToken adds the linkingToken to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) SetLinkingToken(linkingToken string) {
	o.LinkingToken = linkingToken
}

// WithPassword adds the password to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) WithPassword(password string) *AuthenticationWithPlatformLinkV3Params {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) SetPassword(password string) {
	o.Password = password
}

// WithUsername adds the username to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) WithUsername(username string) *AuthenticationWithPlatformLinkV3Params {
	o.SetUsername(username)
	return o
}

// SetUsername adds the username to the authentication with platform link v3 params
func (o *AuthenticationWithPlatformLinkV3Params) SetUsername(username string) {
	o.Username = username
}

// WriteToRequest writes these params to a swagger request
func (o *AuthenticationWithPlatformLinkV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

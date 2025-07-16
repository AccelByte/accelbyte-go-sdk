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

// Deprecated: 2025-07-16 - Use TokenGrantV3GrantType<EnumValue>Constant instead.
// Get the enum in TokenGrantV3Params
const (
	TokenGrantV3AuthorizationCodeConstant                                  = "authorization_code"
	TokenGrantV3ClientCredentialsConstant                                  = "client_credentials"
	TokenGrantV3PasswordConstant                                           = "password"
	TokenGrantV3RefreshTokenConstant                                       = "refresh_token"
	TokenGrantV3UrnIetfParamsOauthGrantTypeExtendClientCredentialsConstant = "urn:ietf:params:oauth:grant-type:extend_client_credentials"
)

// Get the enum in TokenGrantV3Params
const (
	TokenGrantV3GrantTypeAuthorizationCodeConstant                                  = "authorization_code"
	TokenGrantV3GrantTypeClientCredentialsConstant                                  = "client_credentials"
	TokenGrantV3GrantTypePasswordConstant                                           = "password"
	TokenGrantV3GrantTypeRefreshTokenConstant                                       = "refresh_token"
	TokenGrantV3GrantTypeUrnIetfParamsOauthGrantTypeExtendClientCredentialsConstant = "urn:ietf:params:oauth:grant-type:extend_client_credentials"
)

// NewTokenGrantV3Params creates a new TokenGrantV3Params object
// with the default values initialized.
func NewTokenGrantV3Params() *TokenGrantV3Params {
	var (
		scopeDefault     = string("commerce account social publishing analytics")
		grantTypeDefault = string("authorization_code")
	)
	return &TokenGrantV3Params{
		Scope:     &scopeDefault,
		GrantType: grantTypeDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewTokenGrantV3ParamsWithTimeout creates a new TokenGrantV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewTokenGrantV3ParamsWithTimeout(timeout time.Duration) *TokenGrantV3Params {
	var (
		scopeDefault     = string("commerce account social publishing analytics")
		grantTypeDefault = string("authorization_code")
	)
	return &TokenGrantV3Params{
		Scope:     &scopeDefault,
		GrantType: grantTypeDefault,

		timeout: timeout,
	}
}

// NewTokenGrantV3ParamsWithContext creates a new TokenGrantV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewTokenGrantV3ParamsWithContext(ctx context.Context) *TokenGrantV3Params {
	var (
		scopeDefault     = string("commerce account social publishing analytics")
		grantTypeDefault = string("authorization_code")
	)
	return &TokenGrantV3Params{
		Scope:     &scopeDefault,
		GrantType: grantTypeDefault,

		Context: ctx,
	}
}

// NewTokenGrantV3ParamsWithHTTPClient creates a new TokenGrantV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewTokenGrantV3ParamsWithHTTPClient(client *http.Client) *TokenGrantV3Params {
	var (
		scopeDefault     = string("commerce account social publishing analytics")
		grantTypeDefault = string("authorization_code")
	)
	return &TokenGrantV3Params{
		Scope:      &scopeDefault,
		GrantType:  grantTypeDefault,
		HTTPClient: client,
	}
}

/*TokenGrantV3Params contains all the parameters to send to the API endpoint
for the token grant v3 operation typically these are written to a http.Request
*/
type TokenGrantV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AuthTrustID
	  Auth-Trust-Id for Device Cookie Validation (Used on grant type 'password')

	*/
	AuthTrustID *string
	/*DeviceID
	  DeviceID (Used on grant type 'password' to track login history) ex. 90252d14544846d79f367148e3f9a3d9

	*/
	DeviceID *string
	/*AdditionalData
	  Additional info, it will be passed to login success event.

	*/
	AdditionalData *string
	/*ClientID
	  Client Id (used with grant type 'authorization_code')

	*/
	ClientID *string
	/*ClientSecret
	  Confidential Client Secret (used with grant type 'authorization_code' when using confidential client with client_secret_post authentication method, i.e. not using HTTP Basic authentication)

	*/
	ClientSecret *string
	/*Code
	  The authorization code received from the authorization server (used with grant type 'authorization_code')

	*/
	Code *string
	/*CodeVerifier
	  Code verifier received from the authorization server

	*/
	CodeVerifier *string
	/*ExtendNamespace
	  extend namespace, Used on grant type 'urn:ietf:params:oauth:grant-type:extend_client_credentials'.

	*/
	ExtendNamespace *string
	/*ExtendExp
	  Extend expiration date of refresh token. Only available for grant type 'password'

	*/
	ExtendExp *bool
	/*Password
	  Password (used with grant type 'password')

	*/
	Password *string
	/*RedirectURI
	  Redirect URI (used with grant type 'authorization_code')

	*/
	RedirectURI *string
	/*RefreshToken
	  Refresh Token (used with grant type 'refresh_token'). This field is optional if the request header provides the "refresh_token" cookie

	*/
	RefreshToken *string
	/*Scope
	  Defines the access token scope when using grant type 'password' or 'client_credentials'. Can be multiple values delimited by whitespace.

	*/
	Scope *string
	/*Username
	  User Name (used with grant type 'password')

	*/
	Username *string
	/*GrantType
	  Grant Type

	*/
	GrantType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the token grant v3 params
func (o *TokenGrantV3Params) WithTimeout(timeout time.Duration) *TokenGrantV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the token grant v3 params
func (o *TokenGrantV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the token grant v3 params
func (o *TokenGrantV3Params) WithContext(ctx context.Context) *TokenGrantV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the token grant v3 params
func (o *TokenGrantV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the token grant v3 params
func (o *TokenGrantV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the token grant v3 params
func (o *TokenGrantV3Params) WithHTTPClient(client *http.Client) *TokenGrantV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the token grant v3 params
func (o *TokenGrantV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the token grant v3 params
func (o *TokenGrantV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *TokenGrantV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAuthTrustID adds the authTrustID to the token grant v3 params
func (o *TokenGrantV3Params) WithAuthTrustID(authTrustID *string) *TokenGrantV3Params {
	o.SetAuthTrustID(authTrustID)
	return o
}

// SetAuthTrustID adds the authTrustId to the token grant v3 params
func (o *TokenGrantV3Params) SetAuthTrustID(authTrustID *string) {
	o.AuthTrustID = authTrustID
}

// WithDeviceID adds the deviceID to the token grant v3 params
func (o *TokenGrantV3Params) WithDeviceID(deviceID *string) *TokenGrantV3Params {
	o.SetDeviceID(deviceID)
	return o
}

// SetDeviceID adds the deviceId to the token grant v3 params
func (o *TokenGrantV3Params) SetDeviceID(deviceID *string) {
	o.DeviceID = deviceID
}

// WithAdditionalData adds the additionalData to the token grant v3 params
func (o *TokenGrantV3Params) WithAdditionalData(additionalData *string) *TokenGrantV3Params {
	o.SetAdditionalData(additionalData)
	return o
}

// SetAdditionalData adds the additionalData to the token grant v3 params
func (o *TokenGrantV3Params) SetAdditionalData(additionalData *string) {
	o.AdditionalData = additionalData
}

// WithClientID adds the clientID to the token grant v3 params
func (o *TokenGrantV3Params) WithClientID(clientID *string) *TokenGrantV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the token grant v3 params
func (o *TokenGrantV3Params) SetClientID(clientID *string) {
	o.ClientID = clientID
}

// WithClientSecret adds the clientSecret to the token grant v3 params
func (o *TokenGrantV3Params) WithClientSecret(clientSecret *string) *TokenGrantV3Params {
	o.SetClientSecret(clientSecret)
	return o
}

// SetClientSecret adds the clientSecret to the token grant v3 params
func (o *TokenGrantV3Params) SetClientSecret(clientSecret *string) {
	o.ClientSecret = clientSecret
}

// WithCode adds the code to the token grant v3 params
func (o *TokenGrantV3Params) WithCode(code *string) *TokenGrantV3Params {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the token grant v3 params
func (o *TokenGrantV3Params) SetCode(code *string) {
	o.Code = code
}

// WithCodeVerifier adds the codeVerifier to the token grant v3 params
func (o *TokenGrantV3Params) WithCodeVerifier(codeVerifier *string) *TokenGrantV3Params {
	o.SetCodeVerifier(codeVerifier)
	return o
}

// SetCodeVerifier adds the codeVerifier to the token grant v3 params
func (o *TokenGrantV3Params) SetCodeVerifier(codeVerifier *string) {
	o.CodeVerifier = codeVerifier
}

// WithExtendNamespace adds the extendNamespace to the token grant v3 params
func (o *TokenGrantV3Params) WithExtendNamespace(extendNamespace *string) *TokenGrantV3Params {
	o.SetExtendNamespace(extendNamespace)
	return o
}

// SetExtendNamespace adds the extendNamespace to the token grant v3 params
func (o *TokenGrantV3Params) SetExtendNamespace(extendNamespace *string) {
	o.ExtendNamespace = extendNamespace
}

// WithExtendExp adds the extendExp to the token grant v3 params
func (o *TokenGrantV3Params) WithExtendExp(extendExp *bool) *TokenGrantV3Params {
	o.SetExtendExp(extendExp)
	return o
}

// SetExtendExp adds the extendExp to the token grant v3 params
func (o *TokenGrantV3Params) SetExtendExp(extendExp *bool) {
	o.ExtendExp = extendExp
}

// WithPassword adds the password to the token grant v3 params
func (o *TokenGrantV3Params) WithPassword(password *string) *TokenGrantV3Params {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the token grant v3 params
func (o *TokenGrantV3Params) SetPassword(password *string) {
	o.Password = password
}

// WithRedirectURI adds the redirectURI to the token grant v3 params
func (o *TokenGrantV3Params) WithRedirectURI(redirectURI *string) *TokenGrantV3Params {
	o.SetRedirectURI(redirectURI)
	return o
}

// SetRedirectURI adds the redirectUri to the token grant v3 params
func (o *TokenGrantV3Params) SetRedirectURI(redirectURI *string) {
	o.RedirectURI = redirectURI
}

// WithRefreshToken adds the refreshToken to the token grant v3 params
func (o *TokenGrantV3Params) WithRefreshToken(refreshToken *string) *TokenGrantV3Params {
	o.SetRefreshToken(refreshToken)
	return o
}

// SetRefreshToken adds the refreshToken to the token grant v3 params
func (o *TokenGrantV3Params) SetRefreshToken(refreshToken *string) {
	o.RefreshToken = refreshToken
}

// WithScope adds the scope to the token grant v3 params
func (o *TokenGrantV3Params) WithScope(scope *string) *TokenGrantV3Params {
	o.SetScope(scope)
	return o
}

// SetScope adds the scope to the token grant v3 params
func (o *TokenGrantV3Params) SetScope(scope *string) {
	o.Scope = scope
}

// WithUsername adds the username to the token grant v3 params
func (o *TokenGrantV3Params) WithUsername(username *string) *TokenGrantV3Params {
	o.SetUsername(username)
	return o
}

// SetUsername adds the username to the token grant v3 params
func (o *TokenGrantV3Params) SetUsername(username *string) {
	o.Username = username
}

// WithGrantType adds the grantType to the token grant v3 params
func (o *TokenGrantV3Params) WithGrantType(grantType string) *TokenGrantV3Params {
	o.SetGrantType(grantType)
	return o
}

// SetGrantType adds the grantType to the token grant v3 params
func (o *TokenGrantV3Params) SetGrantType(grantType string) {
	o.GrantType = grantType
}

// WriteToRequest writes these params to a swagger request
func (o *TokenGrantV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.AuthTrustID != nil {

		// header param Auth-Trust-Id
		if err := r.SetHeaderParam("Auth-Trust-Id", *o.AuthTrustID); err != nil {
			return err
		}

	}
	if o.DeviceID != nil {

		// header param device_id
		if err := r.SetHeaderParam("device_id", *o.DeviceID); err != nil {
			return err
		}

	}

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

	if o.ClientID != nil {

		// form param client_id
		var frClientID string
		if o.ClientID != nil {
			frClientID = *o.ClientID
		}
		fClientID := frClientID
		if fClientID != "" {
			if err := r.SetFormParam("client_id", fClientID); err != nil {
				return err
			}
		}

	}

	if o.ClientSecret != nil {

		// form param client_secret
		var frClientSecret string
		if o.ClientSecret != nil {
			frClientSecret = *o.ClientSecret
		}
		fClientSecret := frClientSecret
		if fClientSecret != "" {
			if err := r.SetFormParam("client_secret", fClientSecret); err != nil {
				return err
			}
		}

	}

	if o.Code != nil {

		// form param code
		var frCode string
		if o.Code != nil {
			frCode = *o.Code
		}
		fCode := frCode
		if fCode != "" {
			if err := r.SetFormParam("code", fCode); err != nil {
				return err
			}
		}

	}

	if o.CodeVerifier != nil {

		// form param code_verifier
		var frCodeVerifier string
		if o.CodeVerifier != nil {
			frCodeVerifier = *o.CodeVerifier
		}
		fCodeVerifier := frCodeVerifier
		if fCodeVerifier != "" {
			if err := r.SetFormParam("code_verifier", fCodeVerifier); err != nil {
				return err
			}
		}

	}

	if o.ExtendNamespace != nil {

		// form param extendNamespace
		var frExtendNamespace string
		if o.ExtendNamespace != nil {
			frExtendNamespace = *o.ExtendNamespace
		}
		fExtendNamespace := frExtendNamespace
		if fExtendNamespace != "" {
			if err := r.SetFormParam("extendNamespace", fExtendNamespace); err != nil {
				return err
			}
		}

	}

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

	if o.Password != nil {

		// form param password
		var frPassword string
		if o.Password != nil {
			frPassword = *o.Password
		}
		fPassword := frPassword
		if fPassword != "" {
			if err := r.SetFormParam("password", fPassword); err != nil {
				return err
			}
		}

	}

	if o.RedirectURI != nil {

		// form param redirect_uri
		var frRedirectURI string
		if o.RedirectURI != nil {
			frRedirectURI = *o.RedirectURI
		}
		fRedirectURI := frRedirectURI
		if fRedirectURI != "" {
			if err := r.SetFormParam("redirect_uri", fRedirectURI); err != nil {
				return err
			}
		}

	}

	if o.RefreshToken != nil {

		// form param refresh_token
		var frRefreshToken string
		if o.RefreshToken != nil {
			frRefreshToken = *o.RefreshToken
		}
		fRefreshToken := frRefreshToken
		if fRefreshToken != "" {
			if err := r.SetFormParam("refresh_token", fRefreshToken); err != nil {
				return err
			}
		}

	}

	if o.Scope != nil {

		// form param scope
		var frScope string
		if o.Scope != nil {
			frScope = *o.Scope
		}
		fScope := frScope
		if fScope != "" {
			if err := r.SetFormParam("scope", fScope); err != nil {
				return err
			}
		}

	}

	if o.Username != nil {

		// form param username
		var frUsername string
		if o.Username != nil {
			frUsername = *o.Username
		}
		fUsername := frUsername
		if fUsername != "" {
			if err := r.SetFormParam("username", fUsername); err != nil {
				return err
			}
		}

	}

	// form param grant_type
	frGrantType := o.GrantType
	fGrantType := frGrantType
	if fGrantType != "" {
		if err := r.SetFormParam("grant_type", fGrantType); err != nil {
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

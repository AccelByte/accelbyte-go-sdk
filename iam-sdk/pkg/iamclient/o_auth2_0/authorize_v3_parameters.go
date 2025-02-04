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

// Get the enum in AuthorizeV3Params
const (
	AuthorizeV3S256Constant  = "S256"
	AuthorizeV3PlainConstant = "plain"
)

// Get the enum in AuthorizeV3Params
const (
	AuthorizeV3CodeConstant = "code"
)

// NewAuthorizeV3Params creates a new AuthorizeV3Params object
// with the default values initialized.
func NewAuthorizeV3Params() *AuthorizeV3Params {
	var (
		codeChallengeMethodDefault                = string("plain")
		createHeadlessDefault                     = bool(true)
		loginWebBasedDefault                      = bool(false)
		scopeDefault                              = string("commerce account social publishing analytics")
		useRedirectUriAsLoginUrlWhenLockedDefault = bool(false)
		responseTypeDefault                       = string("code")
	)
	return &AuthorizeV3Params{
		CodeChallengeMethod:                &codeChallengeMethodDefault,
		CreateHeadless:                     &createHeadlessDefault,
		LoginWebBased:                      &loginWebBasedDefault,
		Scope:                              &scopeDefault,
		UseRedirectURIAsLoginURLWhenLocked: &useRedirectUriAsLoginUrlWhenLockedDefault,
		ResponseType:                       responseTypeDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAuthorizeV3ParamsWithTimeout creates a new AuthorizeV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAuthorizeV3ParamsWithTimeout(timeout time.Duration) *AuthorizeV3Params {
	var (
		codeChallengeMethodDefault                = string("plain")
		createHeadlessDefault                     = bool(true)
		loginWebBasedDefault                      = bool(false)
		scopeDefault                              = string("commerce account social publishing analytics")
		useRedirectUriAsLoginUrlWhenLockedDefault = bool(false)
		responseTypeDefault                       = string("code")
	)
	return &AuthorizeV3Params{
		CodeChallengeMethod:                &codeChallengeMethodDefault,
		CreateHeadless:                     &createHeadlessDefault,
		LoginWebBased:                      &loginWebBasedDefault,
		Scope:                              &scopeDefault,
		UseRedirectURIAsLoginURLWhenLocked: &useRedirectUriAsLoginUrlWhenLockedDefault,
		ResponseType:                       responseTypeDefault,

		timeout: timeout,
	}
}

// NewAuthorizeV3ParamsWithContext creates a new AuthorizeV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAuthorizeV3ParamsWithContext(ctx context.Context) *AuthorizeV3Params {
	var (
		codeChallengeMethodDefault                = string("plain")
		createHeadlessDefault                     = bool(true)
		loginWebBasedDefault                      = bool(false)
		scopeDefault                              = string("commerce account social publishing analytics")
		useRedirectUriAsLoginUrlWhenLockedDefault = bool(false)
		responseTypeDefault                       = string("code")
	)
	return &AuthorizeV3Params{
		CodeChallengeMethod:                &codeChallengeMethodDefault,
		CreateHeadless:                     &createHeadlessDefault,
		LoginWebBased:                      &loginWebBasedDefault,
		Scope:                              &scopeDefault,
		UseRedirectURIAsLoginURLWhenLocked: &useRedirectUriAsLoginUrlWhenLockedDefault,
		ResponseType:                       responseTypeDefault,

		Context: ctx,
	}
}

// NewAuthorizeV3ParamsWithHTTPClient creates a new AuthorizeV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAuthorizeV3ParamsWithHTTPClient(client *http.Client) *AuthorizeV3Params {
	var (
		codeChallengeMethodDefault                = string("plain")
		createHeadlessDefault                     = bool(true)
		loginWebBasedDefault                      = bool(false)
		scopeDefault                              = string("commerce account social publishing analytics")
		useRedirectUriAsLoginUrlWhenLockedDefault = bool(false)
		responseTypeDefault                       = string("code")
	)
	return &AuthorizeV3Params{
		CodeChallengeMethod:                &codeChallengeMethodDefault,
		CreateHeadless:                     &createHeadlessDefault,
		LoginWebBased:                      &loginWebBasedDefault,
		Scope:                              &scopeDefault,
		UseRedirectURIAsLoginURLWhenLocked: &useRedirectUriAsLoginUrlWhenLockedDefault,
		ResponseType:                       responseTypeDefault,
		HTTPClient:                         client,
	}
}

/*AuthorizeV3Params contains all the parameters to send to the API endpoint
for the authorize v3 operation typically these are written to a http.Request
*/
type AuthorizeV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*BlockedPlatformID
	  The platform should be blocked in login website, for example, the platform that generate the one time link code should be blocked in login website

	*/
	BlockedPlatformID *string
	/*CodeChallenge
	  Value generated by transforming code verifier using code challenge method. Mandatory for public client.

	*/
	CodeChallenge *string
	/*CodeChallengeMethod
	  Method that is used to transform code verifier to code challenge

	*/
	CodeChallengeMethod *string
	/*CreateHeadless
	  If create new headless account when login by new third platform user

	*/
	CreateHeadless *bool
	/*LoginWebBased
	  If need use new login web based OAuth flow

	*/
	LoginWebBased *bool
	/*Nonce
	  The nonce parameter complies with the OIDC standard documentation: https://openid.net/specs/openid-connect-core-1_0.html#AuthRequest

	*/
	Nonce *string
	/*OneTimeLinkCode
	  One time link code for headless account to link. Can get from [/iam/v3/link/code/request]

	*/
	OneTimeLinkCode *string
	/*RedirectURI
	  Redirect URI registered for requesting client. Required if client registered with multiple redirect URI. Registered redirect uri will be assigned if left empty.

	*/
	RedirectURI *string
	/*Scope
	  Defines the requested access request scope. Can be multiple values delimited by whitespace.

	*/
	Scope *string
	/*State
	  Random value for preventing cross-site request forgery used by client.

	*/
	State *string
	/*TargetAuthPage
	  Custom query to tell authorization web which page to present to user

	*/
	TargetAuthPage *string
	/*UseRedirectURIAsLoginURLWhenLocked
	  Use Redirect URI as the Login URL after resetting password when got locked

	*/
	UseRedirectURIAsLoginURLWhenLocked *bool
	/*ClientID
	  Registered client ID

	*/
	ClientID string
	/*ResponseType
	  Supported response type : 'code'

	*/
	ResponseType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the authorize v3 params
func (o *AuthorizeV3Params) WithTimeout(timeout time.Duration) *AuthorizeV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the authorize v3 params
func (o *AuthorizeV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the authorize v3 params
func (o *AuthorizeV3Params) WithContext(ctx context.Context) *AuthorizeV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the authorize v3 params
func (o *AuthorizeV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the authorize v3 params
func (o *AuthorizeV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the authorize v3 params
func (o *AuthorizeV3Params) WithHTTPClient(client *http.Client) *AuthorizeV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the authorize v3 params
func (o *AuthorizeV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the authorize v3 params
func (o *AuthorizeV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AuthorizeV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBlockedPlatformID adds the blockedPlatformID to the authorize v3 params
func (o *AuthorizeV3Params) WithBlockedPlatformID(blockedPlatformID *string) *AuthorizeV3Params {
	o.SetBlockedPlatformID(blockedPlatformID)
	return o
}

// SetBlockedPlatformID adds the blockedPlatformId to the authorize v3 params
func (o *AuthorizeV3Params) SetBlockedPlatformID(blockedPlatformID *string) {
	o.BlockedPlatformID = blockedPlatformID
}

// WithCodeChallenge adds the codeChallenge to the authorize v3 params
func (o *AuthorizeV3Params) WithCodeChallenge(codeChallenge *string) *AuthorizeV3Params {
	o.SetCodeChallenge(codeChallenge)
	return o
}

// SetCodeChallenge adds the codeChallenge to the authorize v3 params
func (o *AuthorizeV3Params) SetCodeChallenge(codeChallenge *string) {
	o.CodeChallenge = codeChallenge
}

// WithCodeChallengeMethod adds the codeChallengeMethod to the authorize v3 params
func (o *AuthorizeV3Params) WithCodeChallengeMethod(codeChallengeMethod *string) *AuthorizeV3Params {
	o.SetCodeChallengeMethod(codeChallengeMethod)
	return o
}

// SetCodeChallengeMethod adds the codeChallengeMethod to the authorize v3 params
func (o *AuthorizeV3Params) SetCodeChallengeMethod(codeChallengeMethod *string) {
	o.CodeChallengeMethod = codeChallengeMethod
}

// WithCreateHeadless adds the createHeadless to the authorize v3 params
func (o *AuthorizeV3Params) WithCreateHeadless(createHeadless *bool) *AuthorizeV3Params {
	o.SetCreateHeadless(createHeadless)
	return o
}

// SetCreateHeadless adds the createHeadless to the authorize v3 params
func (o *AuthorizeV3Params) SetCreateHeadless(createHeadless *bool) {
	o.CreateHeadless = createHeadless
}

// WithLoginWebBased adds the loginWebBased to the authorize v3 params
func (o *AuthorizeV3Params) WithLoginWebBased(loginWebBased *bool) *AuthorizeV3Params {
	o.SetLoginWebBased(loginWebBased)
	return o
}

// SetLoginWebBased adds the loginWebBased to the authorize v3 params
func (o *AuthorizeV3Params) SetLoginWebBased(loginWebBased *bool) {
	o.LoginWebBased = loginWebBased
}

// WithNonce adds the nonce to the authorize v3 params
func (o *AuthorizeV3Params) WithNonce(nonce *string) *AuthorizeV3Params {
	o.SetNonce(nonce)
	return o
}

// SetNonce adds the nonce to the authorize v3 params
func (o *AuthorizeV3Params) SetNonce(nonce *string) {
	o.Nonce = nonce
}

// WithOneTimeLinkCode adds the oneTimeLinkCode to the authorize v3 params
func (o *AuthorizeV3Params) WithOneTimeLinkCode(oneTimeLinkCode *string) *AuthorizeV3Params {
	o.SetOneTimeLinkCode(oneTimeLinkCode)
	return o
}

// SetOneTimeLinkCode adds the oneTimeLinkCode to the authorize v3 params
func (o *AuthorizeV3Params) SetOneTimeLinkCode(oneTimeLinkCode *string) {
	o.OneTimeLinkCode = oneTimeLinkCode
}

// WithRedirectURI adds the redirectURI to the authorize v3 params
func (o *AuthorizeV3Params) WithRedirectURI(redirectURI *string) *AuthorizeV3Params {
	o.SetRedirectURI(redirectURI)
	return o
}

// SetRedirectURI adds the redirectUri to the authorize v3 params
func (o *AuthorizeV3Params) SetRedirectURI(redirectURI *string) {
	o.RedirectURI = redirectURI
}

// WithScope adds the scope to the authorize v3 params
func (o *AuthorizeV3Params) WithScope(scope *string) *AuthorizeV3Params {
	o.SetScope(scope)
	return o
}

// SetScope adds the scope to the authorize v3 params
func (o *AuthorizeV3Params) SetScope(scope *string) {
	o.Scope = scope
}

// WithState adds the state to the authorize v3 params
func (o *AuthorizeV3Params) WithState(state *string) *AuthorizeV3Params {
	o.SetState(state)
	return o
}

// SetState adds the state to the authorize v3 params
func (o *AuthorizeV3Params) SetState(state *string) {
	o.State = state
}

// WithTargetAuthPage adds the targetAuthPage to the authorize v3 params
func (o *AuthorizeV3Params) WithTargetAuthPage(targetAuthPage *string) *AuthorizeV3Params {
	o.SetTargetAuthPage(targetAuthPage)
	return o
}

// SetTargetAuthPage adds the targetAuthPage to the authorize v3 params
func (o *AuthorizeV3Params) SetTargetAuthPage(targetAuthPage *string) {
	o.TargetAuthPage = targetAuthPage
}

// WithUseRedirectURIAsLoginURLWhenLocked adds the useRedirectURIAsLoginURLWhenLocked to the authorize v3 params
func (o *AuthorizeV3Params) WithUseRedirectURIAsLoginURLWhenLocked(useRedirectURIAsLoginURLWhenLocked *bool) *AuthorizeV3Params {
	o.SetUseRedirectURIAsLoginURLWhenLocked(useRedirectURIAsLoginURLWhenLocked)
	return o
}

// SetUseRedirectURIAsLoginURLWhenLocked adds the useRedirectUriAsLoginUrlWhenLocked to the authorize v3 params
func (o *AuthorizeV3Params) SetUseRedirectURIAsLoginURLWhenLocked(useRedirectURIAsLoginURLWhenLocked *bool) {
	o.UseRedirectURIAsLoginURLWhenLocked = useRedirectURIAsLoginURLWhenLocked
}

// WithClientID adds the clientID to the authorize v3 params
func (o *AuthorizeV3Params) WithClientID(clientID string) *AuthorizeV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the authorize v3 params
func (o *AuthorizeV3Params) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithResponseType adds the responseType to the authorize v3 params
func (o *AuthorizeV3Params) WithResponseType(responseType string) *AuthorizeV3Params {
	o.SetResponseType(responseType)
	return o
}

// SetResponseType adds the responseType to the authorize v3 params
func (o *AuthorizeV3Params) SetResponseType(responseType string) {
	o.ResponseType = responseType
}

// WriteToRequest writes these params to a swagger request
func (o *AuthorizeV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.BlockedPlatformID != nil {

		// query param blockedPlatformId
		var qrBlockedPlatformID string
		if o.BlockedPlatformID != nil {
			qrBlockedPlatformID = *o.BlockedPlatformID
		}
		qBlockedPlatformID := qrBlockedPlatformID
		if qBlockedPlatformID != "" {
			if err := r.SetQueryParam("blockedPlatformId", qBlockedPlatformID); err != nil {
				return err
			}
		}

	}

	if o.CodeChallenge != nil {

		// query param code_challenge
		var qrCodeChallenge string
		if o.CodeChallenge != nil {
			qrCodeChallenge = *o.CodeChallenge
		}
		qCodeChallenge := qrCodeChallenge
		if qCodeChallenge != "" {
			if err := r.SetQueryParam("code_challenge", qCodeChallenge); err != nil {
				return err
			}
		}

	}

	if o.CodeChallengeMethod != nil {

		// query param code_challenge_method
		var qrCodeChallengeMethod string
		if o.CodeChallengeMethod != nil {
			qrCodeChallengeMethod = *o.CodeChallengeMethod
		}
		qCodeChallengeMethod := qrCodeChallengeMethod
		if qCodeChallengeMethod != "" {
			if err := r.SetQueryParam("code_challenge_method", qCodeChallengeMethod); err != nil {
				return err
			}
		}

	}

	if o.CreateHeadless != nil {

		// query param createHeadless
		var qrCreateHeadless bool
		if o.CreateHeadless != nil {
			qrCreateHeadless = *o.CreateHeadless
		}
		qCreateHeadless := swag.FormatBool(qrCreateHeadless)
		if qCreateHeadless != "" {
			if err := r.SetQueryParam("createHeadless", qCreateHeadless); err != nil {
				return err
			}
		}

	}

	if o.LoginWebBased != nil {

		// query param loginWebBased
		var qrLoginWebBased bool
		if o.LoginWebBased != nil {
			qrLoginWebBased = *o.LoginWebBased
		}
		qLoginWebBased := swag.FormatBool(qrLoginWebBased)
		if qLoginWebBased != "" {
			if err := r.SetQueryParam("loginWebBased", qLoginWebBased); err != nil {
				return err
			}
		}

	}

	if o.Nonce != nil {

		// query param nonce
		var qrNonce string
		if o.Nonce != nil {
			qrNonce = *o.Nonce
		}
		qNonce := qrNonce
		if qNonce != "" {
			if err := r.SetQueryParam("nonce", qNonce); err != nil {
				return err
			}
		}

	}

	if o.OneTimeLinkCode != nil {

		// query param oneTimeLinkCode
		var qrOneTimeLinkCode string
		if o.OneTimeLinkCode != nil {
			qrOneTimeLinkCode = *o.OneTimeLinkCode
		}
		qOneTimeLinkCode := qrOneTimeLinkCode
		if qOneTimeLinkCode != "" {
			if err := r.SetQueryParam("oneTimeLinkCode", qOneTimeLinkCode); err != nil {
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

	if o.Scope != nil {

		// query param scope
		var qrScope string
		if o.Scope != nil {
			qrScope = *o.Scope
		}
		qScope := qrScope
		if qScope != "" {
			if err := r.SetQueryParam("scope", qScope); err != nil {
				return err
			}
		}

	}

	if o.State != nil {

		// query param state
		var qrState string
		if o.State != nil {
			qrState = *o.State
		}
		qState := qrState
		if qState != "" {
			if err := r.SetQueryParam("state", qState); err != nil {
				return err
			}
		}

	}

	if o.TargetAuthPage != nil {

		// query param target_auth_page
		var qrTargetAuthPage string
		if o.TargetAuthPage != nil {
			qrTargetAuthPage = *o.TargetAuthPage
		}
		qTargetAuthPage := qrTargetAuthPage
		if qTargetAuthPage != "" {
			if err := r.SetQueryParam("target_auth_page", qTargetAuthPage); err != nil {
				return err
			}
		}

	}

	if o.UseRedirectURIAsLoginURLWhenLocked != nil {

		// query param useRedirectUriAsLoginUrlWhenLocked
		var qrUseRedirectURIAsLoginURLWhenLocked bool
		if o.UseRedirectURIAsLoginURLWhenLocked != nil {
			qrUseRedirectURIAsLoginURLWhenLocked = *o.UseRedirectURIAsLoginURLWhenLocked
		}
		qUseRedirectURIAsLoginURLWhenLocked := swag.FormatBool(qrUseRedirectURIAsLoginURLWhenLocked)
		if qUseRedirectURIAsLoginURLWhenLocked != "" {
			if err := r.SetQueryParam("useRedirectUriAsLoginUrlWhenLocked", qUseRedirectURIAsLoginURLWhenLocked); err != nil {
				return err
			}
		}

	}

	// query param client_id
	qrClientID := o.ClientID
	qClientID := qrClientID
	if qClientID != "" {
		if err := r.SetQueryParam("client_id", qClientID); err != nil {
			return err
		}
	}

	// query param response_type
	qrResponseType := o.ResponseType
	qResponseType := qrResponseType
	if qResponseType != "" {
		if err := r.SetQueryParam("response_type", qResponseType); err != nil {
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

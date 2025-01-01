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

// NewAuthenticateAndLinkForwardV3Params creates a new AuthenticateAndLinkForwardV3Params object
// with the default values initialized.
func NewAuthenticateAndLinkForwardV3Params() *AuthenticateAndLinkForwardV3Params {
	var ()
	return &AuthenticateAndLinkForwardV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAuthenticateAndLinkForwardV3ParamsWithTimeout creates a new AuthenticateAndLinkForwardV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAuthenticateAndLinkForwardV3ParamsWithTimeout(timeout time.Duration) *AuthenticateAndLinkForwardV3Params {
	var ()
	return &AuthenticateAndLinkForwardV3Params{

		timeout: timeout,
	}
}

// NewAuthenticateAndLinkForwardV3ParamsWithContext creates a new AuthenticateAndLinkForwardV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAuthenticateAndLinkForwardV3ParamsWithContext(ctx context.Context) *AuthenticateAndLinkForwardV3Params {
	var ()
	return &AuthenticateAndLinkForwardV3Params{

		Context: ctx,
	}
}

// NewAuthenticateAndLinkForwardV3ParamsWithHTTPClient creates a new AuthenticateAndLinkForwardV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAuthenticateAndLinkForwardV3ParamsWithHTTPClient(client *http.Client) *AuthenticateAndLinkForwardV3Params {
	var ()
	return &AuthenticateAndLinkForwardV3Params{
		HTTPClient: client,
	}
}

/*AuthenticateAndLinkForwardV3Params contains all the parameters to send to the API endpoint
for the authenticate and link forward v3 operation typically these are written to a http.Request
*/
type AuthenticateAndLinkForwardV3Params struct {

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

// WithTimeout adds the timeout to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) WithTimeout(timeout time.Duration) *AuthenticateAndLinkForwardV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) WithContext(ctx context.Context) *AuthenticateAndLinkForwardV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) WithHTTPClient(client *http.Client) *AuthenticateAndLinkForwardV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AuthenticateAndLinkForwardV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithExtendExp adds the extendExp to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) WithExtendExp(extendExp *bool) *AuthenticateAndLinkForwardV3Params {
	o.SetExtendExp(extendExp)
	return o
}

// SetExtendExp adds the extendExp to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) SetExtendExp(extendExp *bool) {
	o.ExtendExp = extendExp
}

// WithClientID adds the clientID to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) WithClientID(clientID string) *AuthenticateAndLinkForwardV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithLinkingToken adds the linkingToken to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) WithLinkingToken(linkingToken string) *AuthenticateAndLinkForwardV3Params {
	o.SetLinkingToken(linkingToken)
	return o
}

// SetLinkingToken adds the linkingToken to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) SetLinkingToken(linkingToken string) {
	o.LinkingToken = linkingToken
}

// WithPassword adds the password to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) WithPassword(password string) *AuthenticateAndLinkForwardV3Params {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) SetPassword(password string) {
	o.Password = password
}

// WithUsername adds the username to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) WithUsername(username string) *AuthenticateAndLinkForwardV3Params {
	o.SetUsername(username)
	return o
}

// SetUsername adds the username to the authenticate and link forward v3 params
func (o *AuthenticateAndLinkForwardV3Params) SetUsername(username string) {
	o.Username = username
}

// WriteToRequest writes these params to a swagger request
func (o *AuthenticateAndLinkForwardV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

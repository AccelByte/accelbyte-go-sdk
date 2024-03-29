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

// NewUserAuthenticationV3Params creates a new UserAuthenticationV3Params object
// with the default values initialized.
func NewUserAuthenticationV3Params() *UserAuthenticationV3Params {
	var ()
	return &UserAuthenticationV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUserAuthenticationV3ParamsWithTimeout creates a new UserAuthenticationV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUserAuthenticationV3ParamsWithTimeout(timeout time.Duration) *UserAuthenticationV3Params {
	var ()
	return &UserAuthenticationV3Params{

		timeout: timeout,
	}
}

// NewUserAuthenticationV3ParamsWithContext creates a new UserAuthenticationV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewUserAuthenticationV3ParamsWithContext(ctx context.Context) *UserAuthenticationV3Params {
	var ()
	return &UserAuthenticationV3Params{

		Context: ctx,
	}
}

// NewUserAuthenticationV3ParamsWithHTTPClient creates a new UserAuthenticationV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUserAuthenticationV3ParamsWithHTTPClient(client *http.Client) *UserAuthenticationV3Params {
	var ()
	return &UserAuthenticationV3Params{
		HTTPClient: client,
	}
}

/*UserAuthenticationV3Params contains all the parameters to send to the API endpoint
for the user authentication v3 operation typically these are written to a http.Request
*/
type UserAuthenticationV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ClientID
	  Client ID

	*/
	ClientID *string
	/*ExtendExp
	  Extend expiration date of refresh token

	*/
	ExtendExp *bool
	/*RedirectURI
	  Redirect URI

	*/
	RedirectURI *string
	/*Password
	  Account password

	*/
	Password string
	/*RequestID
	  Request ID

	*/
	RequestID string
	/*UserName
	  Account username

	*/
	UserName string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the user authentication v3 params
func (o *UserAuthenticationV3Params) WithTimeout(timeout time.Duration) *UserAuthenticationV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the user authentication v3 params
func (o *UserAuthenticationV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the user authentication v3 params
func (o *UserAuthenticationV3Params) WithContext(ctx context.Context) *UserAuthenticationV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the user authentication v3 params
func (o *UserAuthenticationV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the user authentication v3 params
func (o *UserAuthenticationV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the user authentication v3 params
func (o *UserAuthenticationV3Params) WithHTTPClient(client *http.Client) *UserAuthenticationV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the user authentication v3 params
func (o *UserAuthenticationV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the user authentication v3 params
func (o *UserAuthenticationV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UserAuthenticationV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithClientID adds the clientID to the user authentication v3 params
func (o *UserAuthenticationV3Params) WithClientID(clientID *string) *UserAuthenticationV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the user authentication v3 params
func (o *UserAuthenticationV3Params) SetClientID(clientID *string) {
	o.ClientID = clientID
}

// WithExtendExp adds the extendExp to the user authentication v3 params
func (o *UserAuthenticationV3Params) WithExtendExp(extendExp *bool) *UserAuthenticationV3Params {
	o.SetExtendExp(extendExp)
	return o
}

// SetExtendExp adds the extendExp to the user authentication v3 params
func (o *UserAuthenticationV3Params) SetExtendExp(extendExp *bool) {
	o.ExtendExp = extendExp
}

// WithRedirectURI adds the redirectURI to the user authentication v3 params
func (o *UserAuthenticationV3Params) WithRedirectURI(redirectURI *string) *UserAuthenticationV3Params {
	o.SetRedirectURI(redirectURI)
	return o
}

// SetRedirectURI adds the redirectUri to the user authentication v3 params
func (o *UserAuthenticationV3Params) SetRedirectURI(redirectURI *string) {
	o.RedirectURI = redirectURI
}

// WithPassword adds the password to the user authentication v3 params
func (o *UserAuthenticationV3Params) WithPassword(password string) *UserAuthenticationV3Params {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the user authentication v3 params
func (o *UserAuthenticationV3Params) SetPassword(password string) {
	o.Password = password
}

// WithRequestID adds the requestID to the user authentication v3 params
func (o *UserAuthenticationV3Params) WithRequestID(requestID string) *UserAuthenticationV3Params {
	o.SetRequestID(requestID)
	return o
}

// SetRequestID adds the requestId to the user authentication v3 params
func (o *UserAuthenticationV3Params) SetRequestID(requestID string) {
	o.RequestID = requestID
}

// WithUserName adds the userName to the user authentication v3 params
func (o *UserAuthenticationV3Params) WithUserName(userName string) *UserAuthenticationV3Params {
	o.SetUserName(userName)
	return o
}

// SetUserName adds the userName to the user authentication v3 params
func (o *UserAuthenticationV3Params) SetUserName(userName string) {
	o.UserName = userName
}

// WriteToRequest writes these params to a swagger request
func (o *UserAuthenticationV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	// form param password
	frPassword := o.Password
	fPassword := frPassword
	if fPassword != "" {
		if err := r.SetFormParam("password", fPassword); err != nil {
			return err
		}
	}

	// form param request_id
	frRequestID := o.RequestID
	fRequestID := frRequestID
	if fRequestID != "" {
		if err := r.SetFormParam("request_id", fRequestID); err != nil {
			return err
		}
	}

	// form param user_name
	frUserName := o.UserName
	fUserName := frUserName
	if fUserName != "" {
		if err := r.SetFormParam("user_name", fUserName); err != nil {
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

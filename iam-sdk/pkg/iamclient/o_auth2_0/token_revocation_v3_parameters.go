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

// NewTokenRevocationV3Params creates a new TokenRevocationV3Params object
// with the default values initialized.
func NewTokenRevocationV3Params() *TokenRevocationV3Params {
	var ()
	return &TokenRevocationV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewTokenRevocationV3ParamsWithTimeout creates a new TokenRevocationV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewTokenRevocationV3ParamsWithTimeout(timeout time.Duration) *TokenRevocationV3Params {
	var ()
	return &TokenRevocationV3Params{

		timeout: timeout,
	}
}

// NewTokenRevocationV3ParamsWithContext creates a new TokenRevocationV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewTokenRevocationV3ParamsWithContext(ctx context.Context) *TokenRevocationV3Params {
	var ()
	return &TokenRevocationV3Params{

		Context: ctx,
	}
}

// NewTokenRevocationV3ParamsWithHTTPClient creates a new TokenRevocationV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewTokenRevocationV3ParamsWithHTTPClient(client *http.Client) *TokenRevocationV3Params {
	var ()
	return &TokenRevocationV3Params{
		HTTPClient: client,
	}
}

/*TokenRevocationV3Params contains all the parameters to send to the API endpoint
for the token revocation v3 operation typically these are written to a http.Request
*/
type TokenRevocationV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Token
	  Access token / Refresh token

	*/
	Token string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the token revocation v3 params
func (o *TokenRevocationV3Params) WithTimeout(timeout time.Duration) *TokenRevocationV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the token revocation v3 params
func (o *TokenRevocationV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the token revocation v3 params
func (o *TokenRevocationV3Params) WithContext(ctx context.Context) *TokenRevocationV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the token revocation v3 params
func (o *TokenRevocationV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the token revocation v3 params
func (o *TokenRevocationV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the token revocation v3 params
func (o *TokenRevocationV3Params) WithHTTPClient(client *http.Client) *TokenRevocationV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the token revocation v3 params
func (o *TokenRevocationV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the token revocation v3 params
func (o *TokenRevocationV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *TokenRevocationV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithToken adds the token to the token revocation v3 params
func (o *TokenRevocationV3Params) WithToken(token string) *TokenRevocationV3Params {
	o.SetToken(token)
	return o
}

// SetToken adds the token to the token revocation v3 params
func (o *TokenRevocationV3Params) SetToken(token string) {
	o.Token = token
}

// WriteToRequest writes these params to a swagger request
func (o *TokenRevocationV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param token
	frToken := o.Token
	fToken := frToken
	if fToken != "" {
		if err := r.SetFormParam("token", fToken); err != nil {
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

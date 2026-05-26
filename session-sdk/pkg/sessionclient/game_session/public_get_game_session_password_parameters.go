// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session

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

// NewPublicGetGameSessionPasswordParams creates a new PublicGetGameSessionPasswordParams object
// with the default values initialized.
func NewPublicGetGameSessionPasswordParams() *PublicGetGameSessionPasswordParams {
	var ()
	return &PublicGetGameSessionPasswordParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetGameSessionPasswordParamsWithTimeout creates a new PublicGetGameSessionPasswordParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetGameSessionPasswordParamsWithTimeout(timeout time.Duration) *PublicGetGameSessionPasswordParams {
	var ()
	return &PublicGetGameSessionPasswordParams{

		timeout: timeout,
	}
}

// NewPublicGetGameSessionPasswordParamsWithContext creates a new PublicGetGameSessionPasswordParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetGameSessionPasswordParamsWithContext(ctx context.Context) *PublicGetGameSessionPasswordParams {
	var ()
	return &PublicGetGameSessionPasswordParams{

		Context: ctx,
	}
}

// NewPublicGetGameSessionPasswordParamsWithHTTPClient creates a new PublicGetGameSessionPasswordParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetGameSessionPasswordParamsWithHTTPClient(client *http.Client) *PublicGetGameSessionPasswordParams {
	var ()
	return &PublicGetGameSessionPasswordParams{
		HTTPClient: client,
	}
}

/*PublicGetGameSessionPasswordParams contains all the parameters to send to the API endpoint
for the public get game session password operation typically these are written to a http.Request
*/
type PublicGetGameSessionPasswordParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SessionID
	  session ID

	*/
	SessionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get game session password params
func (o *PublicGetGameSessionPasswordParams) WithTimeout(timeout time.Duration) *PublicGetGameSessionPasswordParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get game session password params
func (o *PublicGetGameSessionPasswordParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get game session password params
func (o *PublicGetGameSessionPasswordParams) WithContext(ctx context.Context) *PublicGetGameSessionPasswordParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get game session password params
func (o *PublicGetGameSessionPasswordParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get game session password params
func (o *PublicGetGameSessionPasswordParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get game session password params
func (o *PublicGetGameSessionPasswordParams) WithHTTPClient(client *http.Client) *PublicGetGameSessionPasswordParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get game session password params
func (o *PublicGetGameSessionPasswordParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get game session password params
func (o *PublicGetGameSessionPasswordParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetGameSessionPasswordParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get game session password params
func (o *PublicGetGameSessionPasswordParams) WithNamespace(namespace string) *PublicGetGameSessionPasswordParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get game session password params
func (o *PublicGetGameSessionPasswordParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the public get game session password params
func (o *PublicGetGameSessionPasswordParams) WithSessionID(sessionID string) *PublicGetGameSessionPasswordParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the public get game session password params
func (o *PublicGetGameSessionPasswordParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetGameSessionPasswordParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param sessionId
	if err := r.SetPathParam("sessionId", o.SessionID); err != nil {
		return err
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

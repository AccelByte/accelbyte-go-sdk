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

// NewJoinGameSessionParams creates a new JoinGameSessionParams object
// with the default values initialized.
func NewJoinGameSessionParams() *JoinGameSessionParams {
	var ()
	return &JoinGameSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewJoinGameSessionParamsWithTimeout creates a new JoinGameSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewJoinGameSessionParamsWithTimeout(timeout time.Duration) *JoinGameSessionParams {
	var ()
	return &JoinGameSessionParams{

		timeout: timeout,
	}
}

// NewJoinGameSessionParamsWithContext creates a new JoinGameSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewJoinGameSessionParamsWithContext(ctx context.Context) *JoinGameSessionParams {
	var ()
	return &JoinGameSessionParams{

		Context: ctx,
	}
}

// NewJoinGameSessionParamsWithHTTPClient creates a new JoinGameSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewJoinGameSessionParamsWithHTTPClient(client *http.Client) *JoinGameSessionParams {
	var ()
	return &JoinGameSessionParams{
		HTTPClient: client,
	}
}

/*JoinGameSessionParams contains all the parameters to send to the API endpoint
for the join game session operation typically these are written to a http.Request
*/
type JoinGameSessionParams struct {

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
}

// WithTimeout adds the timeout to the join game session params
func (o *JoinGameSessionParams) WithTimeout(timeout time.Duration) *JoinGameSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the join game session params
func (o *JoinGameSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the join game session params
func (o *JoinGameSessionParams) WithContext(ctx context.Context) *JoinGameSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the join game session params
func (o *JoinGameSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the join game session params
func (o *JoinGameSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the join game session params
func (o *JoinGameSessionParams) WithHTTPClient(client *http.Client) *JoinGameSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the join game session params
func (o *JoinGameSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the join game session params
func (o *JoinGameSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the join game session params
func (o *JoinGameSessionParams) WithNamespace(namespace string) *JoinGameSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the join game session params
func (o *JoinGameSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the join game session params
func (o *JoinGameSessionParams) WithSessionID(sessionID string) *JoinGameSessionParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the join game session params
func (o *JoinGameSessionParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *JoinGameSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

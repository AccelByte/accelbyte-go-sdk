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

// NewGetGameSessionParams creates a new GetGameSessionParams object
// with the default values initialized.
func NewGetGameSessionParams() *GetGameSessionParams {
	var ()
	return &GetGameSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGameSessionParamsWithTimeout creates a new GetGameSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGameSessionParamsWithTimeout(timeout time.Duration) *GetGameSessionParams {
	var ()
	return &GetGameSessionParams{

		timeout: timeout,
	}
}

// NewGetGameSessionParamsWithContext creates a new GetGameSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetGameSessionParamsWithContext(ctx context.Context) *GetGameSessionParams {
	var ()
	return &GetGameSessionParams{

		Context: ctx,
	}
}

// NewGetGameSessionParamsWithHTTPClient creates a new GetGameSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGameSessionParamsWithHTTPClient(client *http.Client) *GetGameSessionParams {
	var ()
	return &GetGameSessionParams{
		HTTPClient: client,
	}
}

/*GetGameSessionParams contains all the parameters to send to the API endpoint
for the get game session operation typically these are written to a http.Request
*/
type GetGameSessionParams struct {

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

// WithTimeout adds the timeout to the get game session params
func (o *GetGameSessionParams) WithTimeout(timeout time.Duration) *GetGameSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get game session params
func (o *GetGameSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get game session params
func (o *GetGameSessionParams) WithContext(ctx context.Context) *GetGameSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get game session params
func (o *GetGameSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get game session params
func (o *GetGameSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get game session params
func (o *GetGameSessionParams) WithHTTPClient(client *http.Client) *GetGameSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get game session params
func (o *GetGameSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get game session params
func (o *GetGameSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get game session params
func (o *GetGameSessionParams) WithNamespace(namespace string) *GetGameSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get game session params
func (o *GetGameSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the get game session params
func (o *GetGameSessionParams) WithSessionID(sessionID string) *GetGameSessionParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the get game session params
func (o *GetGameSessionParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *GetGameSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

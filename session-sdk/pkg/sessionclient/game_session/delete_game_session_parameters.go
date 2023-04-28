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

// NewDeleteGameSessionParams creates a new DeleteGameSessionParams object
// with the default values initialized.
func NewDeleteGameSessionParams() *DeleteGameSessionParams {
	var ()
	return &DeleteGameSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteGameSessionParamsWithTimeout creates a new DeleteGameSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteGameSessionParamsWithTimeout(timeout time.Duration) *DeleteGameSessionParams {
	var ()
	return &DeleteGameSessionParams{

		timeout: timeout,
	}
}

// NewDeleteGameSessionParamsWithContext creates a new DeleteGameSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteGameSessionParamsWithContext(ctx context.Context) *DeleteGameSessionParams {
	var ()
	return &DeleteGameSessionParams{

		Context: ctx,
	}
}

// NewDeleteGameSessionParamsWithHTTPClient creates a new DeleteGameSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteGameSessionParamsWithHTTPClient(client *http.Client) *DeleteGameSessionParams {
	var ()
	return &DeleteGameSessionParams{
		HTTPClient: client,
	}
}

/*DeleteGameSessionParams contains all the parameters to send to the API endpoint
for the delete game session operation typically these are written to a http.Request
*/
type DeleteGameSessionParams struct {

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

// WithTimeout adds the timeout to the delete game session params
func (o *DeleteGameSessionParams) WithTimeout(timeout time.Duration) *DeleteGameSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete game session params
func (o *DeleteGameSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete game session params
func (o *DeleteGameSessionParams) WithContext(ctx context.Context) *DeleteGameSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete game session params
func (o *DeleteGameSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete game session params
func (o *DeleteGameSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete game session params
func (o *DeleteGameSessionParams) WithHTTPClient(client *http.Client) *DeleteGameSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete game session params
func (o *DeleteGameSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete game session params
func (o *DeleteGameSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete game session params
func (o *DeleteGameSessionParams) WithNamespace(namespace string) *DeleteGameSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete game session params
func (o *DeleteGameSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the delete game session params
func (o *DeleteGameSessionParams) WithSessionID(sessionID string) *DeleteGameSessionParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the delete game session params
func (o *DeleteGameSessionParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteGameSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

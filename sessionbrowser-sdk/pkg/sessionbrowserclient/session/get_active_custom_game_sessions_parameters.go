// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package session

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewGetActiveCustomGameSessionsParams creates a new GetActiveCustomGameSessionsParams object
// with the default values initialized.
func NewGetActiveCustomGameSessionsParams() *GetActiveCustomGameSessionsParams {
	var ()
	return &GetActiveCustomGameSessionsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetActiveCustomGameSessionsParamsWithTimeout creates a new GetActiveCustomGameSessionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetActiveCustomGameSessionsParamsWithTimeout(timeout time.Duration) *GetActiveCustomGameSessionsParams {
	var ()
	return &GetActiveCustomGameSessionsParams{

		timeout: timeout,
	}
}

// NewGetActiveCustomGameSessionsParamsWithContext creates a new GetActiveCustomGameSessionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetActiveCustomGameSessionsParamsWithContext(ctx context.Context) *GetActiveCustomGameSessionsParams {
	var ()
	return &GetActiveCustomGameSessionsParams{

		Context: ctx,
	}
}

// NewGetActiveCustomGameSessionsParamsWithHTTPClient creates a new GetActiveCustomGameSessionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetActiveCustomGameSessionsParamsWithHTTPClient(client *http.Client) *GetActiveCustomGameSessionsParams {
	var ()
	return &GetActiveCustomGameSessionsParams{
		HTTPClient: client,
	}
}

/*GetActiveCustomGameSessionsParams contains all the parameters to send to the API endpoint
for the get active custom game sessions operation typically these are written to a http.Request
*/
type GetActiveCustomGameSessionsParams struct {

	/*Namespace
	  namespace

	*/
	Namespace string
	/*ServerRegion
	  server region

	*/
	ServerRegion *string
	/*SessionID
	  game session ID

	*/
	SessionID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) WithTimeout(timeout time.Duration) *GetActiveCustomGameSessionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) WithContext(ctx context.Context) *GetActiveCustomGameSessionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) WithHTTPClient(client *http.Client) *GetActiveCustomGameSessionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) WithNamespace(namespace string) *GetActiveCustomGameSessionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithServerRegion adds the serverRegion to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) WithServerRegion(serverRegion *string) *GetActiveCustomGameSessionsParams {
	o.SetServerRegion(serverRegion)
	return o
}

// SetServerRegion adds the serverRegion to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetServerRegion(serverRegion *string) {
	o.ServerRegion = serverRegion
}

// WithSessionID adds the sessionID to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) WithSessionID(sessionID *string) *GetActiveCustomGameSessionsParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetSessionID(sessionID *string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *GetActiveCustomGameSessionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ServerRegion != nil {

		// query param server_region
		var qrServerRegion string
		if o.ServerRegion != nil {
			qrServerRegion = *o.ServerRegion
		}
		qServerRegion := qrServerRegion
		if qServerRegion != "" {
			if err := r.SetQueryParam("server_region", qServerRegion); err != nil {
				return err
			}
		}

	}

	if o.SessionID != nil {

		// query param session_id
		var qrSessionID string
		if o.SessionID != nil {
			qrSessionID = *o.SessionID
		}
		qSessionID := qrSessionID
		if qSessionID != "" {
			if err := r.SetQueryParam("session_id", qSessionID); err != nil {
				return err
			}
		}

	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

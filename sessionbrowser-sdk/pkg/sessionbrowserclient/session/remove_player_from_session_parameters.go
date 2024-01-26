// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session

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

// NewRemovePlayerFromSessionParams creates a new RemovePlayerFromSessionParams object
// with the default values initialized.
func NewRemovePlayerFromSessionParams() *RemovePlayerFromSessionParams {
	var ()
	return &RemovePlayerFromSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRemovePlayerFromSessionParamsWithTimeout creates a new RemovePlayerFromSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRemovePlayerFromSessionParamsWithTimeout(timeout time.Duration) *RemovePlayerFromSessionParams {
	var ()
	return &RemovePlayerFromSessionParams{

		timeout: timeout,
	}
}

// NewRemovePlayerFromSessionParamsWithContext creates a new RemovePlayerFromSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewRemovePlayerFromSessionParamsWithContext(ctx context.Context) *RemovePlayerFromSessionParams {
	var ()
	return &RemovePlayerFromSessionParams{

		Context: ctx,
	}
}

// NewRemovePlayerFromSessionParamsWithHTTPClient creates a new RemovePlayerFromSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRemovePlayerFromSessionParamsWithHTTPClient(client *http.Client) *RemovePlayerFromSessionParams {
	var ()
	return &RemovePlayerFromSessionParams{
		HTTPClient: client,
	}
}

/*RemovePlayerFromSessionParams contains all the parameters to send to the API endpoint
for the remove player from session operation typically these are written to a http.Request
*/
type RemovePlayerFromSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*SessionID
	  session ID

	*/
	SessionID string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the remove player from session params
func (o *RemovePlayerFromSessionParams) WithTimeout(timeout time.Duration) *RemovePlayerFromSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the remove player from session params
func (o *RemovePlayerFromSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the remove player from session params
func (o *RemovePlayerFromSessionParams) WithContext(ctx context.Context) *RemovePlayerFromSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the remove player from session params
func (o *RemovePlayerFromSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the remove player from session params
func (o *RemovePlayerFromSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the remove player from session params
func (o *RemovePlayerFromSessionParams) WithHTTPClient(client *http.Client) *RemovePlayerFromSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the remove player from session params
func (o *RemovePlayerFromSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the remove player from session params
func (o *RemovePlayerFromSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RemovePlayerFromSessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the remove player from session params
func (o *RemovePlayerFromSessionParams) WithNamespace(namespace string) *RemovePlayerFromSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the remove player from session params
func (o *RemovePlayerFromSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the remove player from session params
func (o *RemovePlayerFromSessionParams) WithSessionID(sessionID string) *RemovePlayerFromSessionParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the remove player from session params
func (o *RemovePlayerFromSessionParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WithUserID adds the userID to the remove player from session params
func (o *RemovePlayerFromSessionParams) WithUserID(userID string) *RemovePlayerFromSessionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the remove player from session params
func (o *RemovePlayerFromSessionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *RemovePlayerFromSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param sessionID
	if err := r.SetPathParam("sessionID", o.SessionID); err != nil {
		return err
	}

	// path param userID
	if err := r.SetPathParam("userID", o.UserID); err != nil {
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

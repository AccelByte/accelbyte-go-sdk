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

// NewPublicGameSessionCancelParams creates a new PublicGameSessionCancelParams object
// with the default values initialized.
func NewPublicGameSessionCancelParams() *PublicGameSessionCancelParams {
	var ()
	return &PublicGameSessionCancelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGameSessionCancelParamsWithTimeout creates a new PublicGameSessionCancelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGameSessionCancelParamsWithTimeout(timeout time.Duration) *PublicGameSessionCancelParams {
	var ()
	return &PublicGameSessionCancelParams{

		timeout: timeout,
	}
}

// NewPublicGameSessionCancelParamsWithContext creates a new PublicGameSessionCancelParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGameSessionCancelParamsWithContext(ctx context.Context) *PublicGameSessionCancelParams {
	var ()
	return &PublicGameSessionCancelParams{

		Context: ctx,
	}
}

// NewPublicGameSessionCancelParamsWithHTTPClient creates a new PublicGameSessionCancelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGameSessionCancelParamsWithHTTPClient(client *http.Client) *PublicGameSessionCancelParams {
	var ()
	return &PublicGameSessionCancelParams{
		HTTPClient: client,
	}
}

/*PublicGameSessionCancelParams contains all the parameters to send to the API endpoint
for the public game session cancel operation typically these are written to a http.Request
*/
type PublicGameSessionCancelParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SessionID
	  Session ID

	*/
	SessionID string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public game session cancel params
func (o *PublicGameSessionCancelParams) WithTimeout(timeout time.Duration) *PublicGameSessionCancelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public game session cancel params
func (o *PublicGameSessionCancelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public game session cancel params
func (o *PublicGameSessionCancelParams) WithContext(ctx context.Context) *PublicGameSessionCancelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public game session cancel params
func (o *PublicGameSessionCancelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public game session cancel params
func (o *PublicGameSessionCancelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public game session cancel params
func (o *PublicGameSessionCancelParams) WithHTTPClient(client *http.Client) *PublicGameSessionCancelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public game session cancel params
func (o *PublicGameSessionCancelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public game session cancel params
func (o *PublicGameSessionCancelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGameSessionCancelParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public game session cancel params
func (o *PublicGameSessionCancelParams) WithNamespace(namespace string) *PublicGameSessionCancelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public game session cancel params
func (o *PublicGameSessionCancelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the public game session cancel params
func (o *PublicGameSessionCancelParams) WithSessionID(sessionID string) *PublicGameSessionCancelParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the public game session cancel params
func (o *PublicGameSessionCancelParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WithUserID adds the userID to the public game session cancel params
func (o *PublicGameSessionCancelParams) WithUserID(userID string) *PublicGameSessionCancelParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public game session cancel params
func (o *PublicGameSessionCancelParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGameSessionCancelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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

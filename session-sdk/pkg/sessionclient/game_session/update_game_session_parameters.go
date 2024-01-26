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

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// NewUpdateGameSessionParams creates a new UpdateGameSessionParams object
// with the default values initialized.
func NewUpdateGameSessionParams() *UpdateGameSessionParams {
	var ()
	return &UpdateGameSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateGameSessionParamsWithTimeout creates a new UpdateGameSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateGameSessionParamsWithTimeout(timeout time.Duration) *UpdateGameSessionParams {
	var ()
	return &UpdateGameSessionParams{

		timeout: timeout,
	}
}

// NewUpdateGameSessionParamsWithContext creates a new UpdateGameSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateGameSessionParamsWithContext(ctx context.Context) *UpdateGameSessionParams {
	var ()
	return &UpdateGameSessionParams{

		Context: ctx,
	}
}

// NewUpdateGameSessionParamsWithHTTPClient creates a new UpdateGameSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateGameSessionParamsWithHTTPClient(client *http.Client) *UpdateGameSessionParams {
	var ()
	return &UpdateGameSessionParams{
		HTTPClient: client,
	}
}

/*UpdateGameSessionParams contains all the parameters to send to the API endpoint
for the update game session operation typically these are written to a http.Request
*/
type UpdateGameSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsUpdateGameSessionRequest
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

// WithTimeout adds the timeout to the update game session params
func (o *UpdateGameSessionParams) WithTimeout(timeout time.Duration) *UpdateGameSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update game session params
func (o *UpdateGameSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update game session params
func (o *UpdateGameSessionParams) WithContext(ctx context.Context) *UpdateGameSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update game session params
func (o *UpdateGameSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update game session params
func (o *UpdateGameSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update game session params
func (o *UpdateGameSessionParams) WithHTTPClient(client *http.Client) *UpdateGameSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update game session params
func (o *UpdateGameSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update game session params
func (o *UpdateGameSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateGameSessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update game session params
func (o *UpdateGameSessionParams) WithBody(body *sessionclientmodels.ApimodelsUpdateGameSessionRequest) *UpdateGameSessionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update game session params
func (o *UpdateGameSessionParams) SetBody(body *sessionclientmodels.ApimodelsUpdateGameSessionRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update game session params
func (o *UpdateGameSessionParams) WithNamespace(namespace string) *UpdateGameSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update game session params
func (o *UpdateGameSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the update game session params
func (o *UpdateGameSessionParams) WithSessionID(sessionID string) *UpdateGameSessionParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the update game session params
func (o *UpdateGameSessionParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateGameSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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

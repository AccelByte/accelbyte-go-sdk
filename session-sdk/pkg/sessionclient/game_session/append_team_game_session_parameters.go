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

// NewAppendTeamGameSessionParams creates a new AppendTeamGameSessionParams object
// with the default values initialized.
func NewAppendTeamGameSessionParams() *AppendTeamGameSessionParams {
	var ()
	return &AppendTeamGameSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAppendTeamGameSessionParamsWithTimeout creates a new AppendTeamGameSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAppendTeamGameSessionParamsWithTimeout(timeout time.Duration) *AppendTeamGameSessionParams {
	var ()
	return &AppendTeamGameSessionParams{

		timeout: timeout,
	}
}

// NewAppendTeamGameSessionParamsWithContext creates a new AppendTeamGameSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewAppendTeamGameSessionParamsWithContext(ctx context.Context) *AppendTeamGameSessionParams {
	var ()
	return &AppendTeamGameSessionParams{

		Context: ctx,
	}
}

// NewAppendTeamGameSessionParamsWithHTTPClient creates a new AppendTeamGameSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAppendTeamGameSessionParamsWithHTTPClient(client *http.Client) *AppendTeamGameSessionParams {
	var ()
	return &AppendTeamGameSessionParams{
		HTTPClient: client,
	}
}

/*AppendTeamGameSessionParams contains all the parameters to send to the API endpoint
for the append team game session operation typically these are written to a http.Request
*/
type AppendTeamGameSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsAppendTeamGameSessionRequest
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

// WithTimeout adds the timeout to the append team game session params
func (o *AppendTeamGameSessionParams) WithTimeout(timeout time.Duration) *AppendTeamGameSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the append team game session params
func (o *AppendTeamGameSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the append team game session params
func (o *AppendTeamGameSessionParams) WithContext(ctx context.Context) *AppendTeamGameSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the append team game session params
func (o *AppendTeamGameSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the append team game session params
func (o *AppendTeamGameSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the append team game session params
func (o *AppendTeamGameSessionParams) WithHTTPClient(client *http.Client) *AppendTeamGameSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the append team game session params
func (o *AppendTeamGameSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the append team game session params
func (o *AppendTeamGameSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AppendTeamGameSessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the append team game session params
func (o *AppendTeamGameSessionParams) WithBody(body *sessionclientmodels.ApimodelsAppendTeamGameSessionRequest) *AppendTeamGameSessionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the append team game session params
func (o *AppendTeamGameSessionParams) SetBody(body *sessionclientmodels.ApimodelsAppendTeamGameSessionRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the append team game session params
func (o *AppendTeamGameSessionParams) WithNamespace(namespace string) *AppendTeamGameSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the append team game session params
func (o *AppendTeamGameSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the append team game session params
func (o *AppendTeamGameSessionParams) WithSessionID(sessionID string) *AppendTeamGameSessionParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the append team game session params
func (o *AppendTeamGameSessionParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *AppendTeamGameSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

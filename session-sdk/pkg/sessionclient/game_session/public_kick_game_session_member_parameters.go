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

// NewPublicKickGameSessionMemberParams creates a new PublicKickGameSessionMemberParams object
// with the default values initialized.
func NewPublicKickGameSessionMemberParams() *PublicKickGameSessionMemberParams {
	var ()
	return &PublicKickGameSessionMemberParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicKickGameSessionMemberParamsWithTimeout creates a new PublicKickGameSessionMemberParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicKickGameSessionMemberParamsWithTimeout(timeout time.Duration) *PublicKickGameSessionMemberParams {
	var ()
	return &PublicKickGameSessionMemberParams{

		timeout: timeout,
	}
}

// NewPublicKickGameSessionMemberParamsWithContext creates a new PublicKickGameSessionMemberParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicKickGameSessionMemberParamsWithContext(ctx context.Context) *PublicKickGameSessionMemberParams {
	var ()
	return &PublicKickGameSessionMemberParams{

		Context: ctx,
	}
}

// NewPublicKickGameSessionMemberParamsWithHTTPClient creates a new PublicKickGameSessionMemberParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicKickGameSessionMemberParamsWithHTTPClient(client *http.Client) *PublicKickGameSessionMemberParams {
	var ()
	return &PublicKickGameSessionMemberParams{
		HTTPClient: client,
	}
}

/*PublicKickGameSessionMemberParams contains all the parameters to send to the API endpoint
for the public kick game session member operation typically these are written to a http.Request
*/
type PublicKickGameSessionMemberParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*MemberID
	  member ID

	*/
	MemberID string
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

// WithTimeout adds the timeout to the public kick game session member params
func (o *PublicKickGameSessionMemberParams) WithTimeout(timeout time.Duration) *PublicKickGameSessionMemberParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public kick game session member params
func (o *PublicKickGameSessionMemberParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public kick game session member params
func (o *PublicKickGameSessionMemberParams) WithContext(ctx context.Context) *PublicKickGameSessionMemberParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public kick game session member params
func (o *PublicKickGameSessionMemberParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public kick game session member params
func (o *PublicKickGameSessionMemberParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public kick game session member params
func (o *PublicKickGameSessionMemberParams) WithHTTPClient(client *http.Client) *PublicKickGameSessionMemberParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public kick game session member params
func (o *PublicKickGameSessionMemberParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public kick game session member params
func (o *PublicKickGameSessionMemberParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicKickGameSessionMemberParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithMemberID adds the memberID to the public kick game session member params
func (o *PublicKickGameSessionMemberParams) WithMemberID(memberID string) *PublicKickGameSessionMemberParams {
	o.SetMemberID(memberID)
	return o
}

// SetMemberID adds the memberId to the public kick game session member params
func (o *PublicKickGameSessionMemberParams) SetMemberID(memberID string) {
	o.MemberID = memberID
}

// WithNamespace adds the namespace to the public kick game session member params
func (o *PublicKickGameSessionMemberParams) WithNamespace(namespace string) *PublicKickGameSessionMemberParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public kick game session member params
func (o *PublicKickGameSessionMemberParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the public kick game session member params
func (o *PublicKickGameSessionMemberParams) WithSessionID(sessionID string) *PublicKickGameSessionMemberParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the public kick game session member params
func (o *PublicKickGameSessionMemberParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicKickGameSessionMemberParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param memberId
	if err := r.SetPathParam("memberId", o.MemberID); err != nil {
		return err
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

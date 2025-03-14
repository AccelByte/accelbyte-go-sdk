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

// NewAdminKickGameSessionMemberParams creates a new AdminKickGameSessionMemberParams object
// with the default values initialized.
func NewAdminKickGameSessionMemberParams() *AdminKickGameSessionMemberParams {
	var ()
	return &AdminKickGameSessionMemberParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminKickGameSessionMemberParamsWithTimeout creates a new AdminKickGameSessionMemberParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminKickGameSessionMemberParamsWithTimeout(timeout time.Duration) *AdminKickGameSessionMemberParams {
	var ()
	return &AdminKickGameSessionMemberParams{

		timeout: timeout,
	}
}

// NewAdminKickGameSessionMemberParamsWithContext creates a new AdminKickGameSessionMemberParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminKickGameSessionMemberParamsWithContext(ctx context.Context) *AdminKickGameSessionMemberParams {
	var ()
	return &AdminKickGameSessionMemberParams{

		Context: ctx,
	}
}

// NewAdminKickGameSessionMemberParamsWithHTTPClient creates a new AdminKickGameSessionMemberParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminKickGameSessionMemberParamsWithHTTPClient(client *http.Client) *AdminKickGameSessionMemberParams {
	var ()
	return &AdminKickGameSessionMemberParams{
		HTTPClient: client,
	}
}

/*AdminKickGameSessionMemberParams contains all the parameters to send to the API endpoint
for the admin kick game session member operation typically these are written to a http.Request
*/
type AdminKickGameSessionMemberParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*MemberID
	  member ID

	*/
	MemberID string
	/*Namespace
	  namespace of the game

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

// WithTimeout adds the timeout to the admin kick game session member params
func (o *AdminKickGameSessionMemberParams) WithTimeout(timeout time.Duration) *AdminKickGameSessionMemberParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin kick game session member params
func (o *AdminKickGameSessionMemberParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin kick game session member params
func (o *AdminKickGameSessionMemberParams) WithContext(ctx context.Context) *AdminKickGameSessionMemberParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin kick game session member params
func (o *AdminKickGameSessionMemberParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin kick game session member params
func (o *AdminKickGameSessionMemberParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin kick game session member params
func (o *AdminKickGameSessionMemberParams) WithHTTPClient(client *http.Client) *AdminKickGameSessionMemberParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin kick game session member params
func (o *AdminKickGameSessionMemberParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin kick game session member params
func (o *AdminKickGameSessionMemberParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminKickGameSessionMemberParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithMemberID adds the memberID to the admin kick game session member params
func (o *AdminKickGameSessionMemberParams) WithMemberID(memberID string) *AdminKickGameSessionMemberParams {
	o.SetMemberID(memberID)
	return o
}

// SetMemberID adds the memberId to the admin kick game session member params
func (o *AdminKickGameSessionMemberParams) SetMemberID(memberID string) {
	o.MemberID = memberID
}

// WithNamespace adds the namespace to the admin kick game session member params
func (o *AdminKickGameSessionMemberParams) WithNamespace(namespace string) *AdminKickGameSessionMemberParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin kick game session member params
func (o *AdminKickGameSessionMemberParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the admin kick game session member params
func (o *AdminKickGameSessionMemberParams) WithSessionID(sessionID string) *AdminKickGameSessionMemberParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the admin kick game session member params
func (o *AdminKickGameSessionMemberParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminKickGameSessionMemberParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session_detail

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

// NewAdminGetMatchmakingDetailByTicketIDParams creates a new AdminGetMatchmakingDetailByTicketIDParams object
// with the default values initialized.
func NewAdminGetMatchmakingDetailByTicketIDParams() *AdminGetMatchmakingDetailByTicketIDParams {
	var ()
	return &AdminGetMatchmakingDetailByTicketIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetMatchmakingDetailByTicketIDParamsWithTimeout creates a new AdminGetMatchmakingDetailByTicketIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetMatchmakingDetailByTicketIDParamsWithTimeout(timeout time.Duration) *AdminGetMatchmakingDetailByTicketIDParams {
	var ()
	return &AdminGetMatchmakingDetailByTicketIDParams{

		timeout: timeout,
	}
}

// NewAdminGetMatchmakingDetailByTicketIDParamsWithContext creates a new AdminGetMatchmakingDetailByTicketIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetMatchmakingDetailByTicketIDParamsWithContext(ctx context.Context) *AdminGetMatchmakingDetailByTicketIDParams {
	var ()
	return &AdminGetMatchmakingDetailByTicketIDParams{

		Context: ctx,
	}
}

// NewAdminGetMatchmakingDetailByTicketIDParamsWithHTTPClient creates a new AdminGetMatchmakingDetailByTicketIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetMatchmakingDetailByTicketIDParamsWithHTTPClient(client *http.Client) *AdminGetMatchmakingDetailByTicketIDParams {
	var ()
	return &AdminGetMatchmakingDetailByTicketIDParams{
		HTTPClient: client,
	}
}

/*AdminGetMatchmakingDetailByTicketIDParams contains all the parameters to send to the API endpoint
for the admin get matchmaking detail by ticket id operation typically these are written to a http.Request
*/
type AdminGetMatchmakingDetailByTicketIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*TicketID
	  ticket ID

	*/
	TicketID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get matchmaking detail by ticket id params
func (o *AdminGetMatchmakingDetailByTicketIDParams) WithTimeout(timeout time.Duration) *AdminGetMatchmakingDetailByTicketIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get matchmaking detail by ticket id params
func (o *AdminGetMatchmakingDetailByTicketIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get matchmaking detail by ticket id params
func (o *AdminGetMatchmakingDetailByTicketIDParams) WithContext(ctx context.Context) *AdminGetMatchmakingDetailByTicketIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get matchmaking detail by ticket id params
func (o *AdminGetMatchmakingDetailByTicketIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get matchmaking detail by ticket id params
func (o *AdminGetMatchmakingDetailByTicketIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get matchmaking detail by ticket id params
func (o *AdminGetMatchmakingDetailByTicketIDParams) WithHTTPClient(client *http.Client) *AdminGetMatchmakingDetailByTicketIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get matchmaking detail by ticket id params
func (o *AdminGetMatchmakingDetailByTicketIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get matchmaking detail by ticket id params
func (o *AdminGetMatchmakingDetailByTicketIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetMatchmakingDetailByTicketIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get matchmaking detail by ticket id params
func (o *AdminGetMatchmakingDetailByTicketIDParams) WithNamespace(namespace string) *AdminGetMatchmakingDetailByTicketIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get matchmaking detail by ticket id params
func (o *AdminGetMatchmakingDetailByTicketIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTicketID adds the ticketID to the admin get matchmaking detail by ticket id params
func (o *AdminGetMatchmakingDetailByTicketIDParams) WithTicketID(ticketID string) *AdminGetMatchmakingDetailByTicketIDParams {
	o.SetTicketID(ticketID)
	return o
}

// SetTicketID adds the ticketId to the admin get matchmaking detail by ticket id params
func (o *AdminGetMatchmakingDetailByTicketIDParams) SetTicketID(ticketID string) {
	o.TicketID = ticketID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetMatchmakingDetailByTicketIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param ticketId
	if err := r.SetPathParam("ticketId", o.TicketID); err != nil {
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

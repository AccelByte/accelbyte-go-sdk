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

// NewAdminTicketDetailGetByTicketIDParams creates a new AdminTicketDetailGetByTicketIDParams object
// with the default values initialized.
func NewAdminTicketDetailGetByTicketIDParams() *AdminTicketDetailGetByTicketIDParams {
	var ()
	return &AdminTicketDetailGetByTicketIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminTicketDetailGetByTicketIDParamsWithTimeout creates a new AdminTicketDetailGetByTicketIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminTicketDetailGetByTicketIDParamsWithTimeout(timeout time.Duration) *AdminTicketDetailGetByTicketIDParams {
	var ()
	return &AdminTicketDetailGetByTicketIDParams{

		timeout: timeout,
	}
}

// NewAdminTicketDetailGetByTicketIDParamsWithContext creates a new AdminTicketDetailGetByTicketIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminTicketDetailGetByTicketIDParamsWithContext(ctx context.Context) *AdminTicketDetailGetByTicketIDParams {
	var ()
	return &AdminTicketDetailGetByTicketIDParams{

		Context: ctx,
	}
}

// NewAdminTicketDetailGetByTicketIDParamsWithHTTPClient creates a new AdminTicketDetailGetByTicketIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminTicketDetailGetByTicketIDParamsWithHTTPClient(client *http.Client) *AdminTicketDetailGetByTicketIDParams {
	var ()
	return &AdminTicketDetailGetByTicketIDParams{
		HTTPClient: client,
	}
}

/*AdminTicketDetailGetByTicketIDParams contains all the parameters to send to the API endpoint
for the admin ticket detail get by ticket id operation typically these are written to a http.Request
*/
type AdminTicketDetailGetByTicketIDParams struct {

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

// WithTimeout adds the timeout to the admin ticket detail get by ticket id params
func (o *AdminTicketDetailGetByTicketIDParams) WithTimeout(timeout time.Duration) *AdminTicketDetailGetByTicketIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin ticket detail get by ticket id params
func (o *AdminTicketDetailGetByTicketIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin ticket detail get by ticket id params
func (o *AdminTicketDetailGetByTicketIDParams) WithContext(ctx context.Context) *AdminTicketDetailGetByTicketIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin ticket detail get by ticket id params
func (o *AdminTicketDetailGetByTicketIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin ticket detail get by ticket id params
func (o *AdminTicketDetailGetByTicketIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin ticket detail get by ticket id params
func (o *AdminTicketDetailGetByTicketIDParams) WithHTTPClient(client *http.Client) *AdminTicketDetailGetByTicketIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin ticket detail get by ticket id params
func (o *AdminTicketDetailGetByTicketIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin ticket detail get by ticket id params
func (o *AdminTicketDetailGetByTicketIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminTicketDetailGetByTicketIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin ticket detail get by ticket id params
func (o *AdminTicketDetailGetByTicketIDParams) WithNamespace(namespace string) *AdminTicketDetailGetByTicketIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin ticket detail get by ticket id params
func (o *AdminTicketDetailGetByTicketIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTicketID adds the ticketID to the admin ticket detail get by ticket id params
func (o *AdminTicketDetailGetByTicketIDParams) WithTicketID(ticketID string) *AdminTicketDetailGetByTicketIDParams {
	o.SetTicketID(ticketID)
	return o
}

// SetTicketID adds the ticketId to the admin ticket detail get by ticket id params
func (o *AdminTicketDetailGetByTicketIDParams) SetTicketID(ticketID string) {
	o.TicketID = ticketID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminTicketDetailGetByTicketIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

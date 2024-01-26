// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewPlatformLinkParams creates a new PlatformLinkParams object
// with the default values initialized.
func NewPlatformLinkParams() *PlatformLinkParams {
	var ()
	return &PlatformLinkParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPlatformLinkParamsWithTimeout creates a new PlatformLinkParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPlatformLinkParamsWithTimeout(timeout time.Duration) *PlatformLinkParams {
	var ()
	return &PlatformLinkParams{

		timeout: timeout,
	}
}

// NewPlatformLinkParamsWithContext creates a new PlatformLinkParams object
// with the default values initialized, and the ability to set a context for a request
func NewPlatformLinkParamsWithContext(ctx context.Context) *PlatformLinkParams {
	var ()
	return &PlatformLinkParams{

		Context: ctx,
	}
}

// NewPlatformLinkParamsWithHTTPClient creates a new PlatformLinkParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPlatformLinkParamsWithHTTPClient(client *http.Client) *PlatformLinkParams {
	var ()
	return &PlatformLinkParams{
		HTTPClient: client,
	}
}

/*PlatformLinkParams contains all the parameters to send to the API endpoint
for the platform link operation typically these are written to a http.Request
*/
type PlatformLinkParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Ticket
	  Ticket from platform

	*/
	Ticket string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
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

// WithTimeout adds the timeout to the platform link params
func (o *PlatformLinkParams) WithTimeout(timeout time.Duration) *PlatformLinkParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the platform link params
func (o *PlatformLinkParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the platform link params
func (o *PlatformLinkParams) WithContext(ctx context.Context) *PlatformLinkParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the platform link params
func (o *PlatformLinkParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the platform link params
func (o *PlatformLinkParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the platform link params
func (o *PlatformLinkParams) WithHTTPClient(client *http.Client) *PlatformLinkParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the platform link params
func (o *PlatformLinkParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the platform link params
func (o *PlatformLinkParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PlatformLinkParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithTicket adds the ticket to the platform link params
func (o *PlatformLinkParams) WithTicket(ticket string) *PlatformLinkParams {
	o.SetTicket(ticket)
	return o
}

// SetTicket adds the ticket to the platform link params
func (o *PlatformLinkParams) SetTicket(ticket string) {
	o.Ticket = ticket
}

// WithNamespace adds the namespace to the platform link params
func (o *PlatformLinkParams) WithNamespace(namespace string) *PlatformLinkParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the platform link params
func (o *PlatformLinkParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the platform link params
func (o *PlatformLinkParams) WithPlatformID(platformID string) *PlatformLinkParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the platform link params
func (o *PlatformLinkParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithUserID adds the userID to the platform link params
func (o *PlatformLinkParams) WithUserID(userID string) *PlatformLinkParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the platform link params
func (o *PlatformLinkParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PlatformLinkParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param ticket
	frTicket := o.Ticket
	fTicket := frTicket
	if fTicket != "" {
		if err := r.SetFormParam("ticket", fTicket); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
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

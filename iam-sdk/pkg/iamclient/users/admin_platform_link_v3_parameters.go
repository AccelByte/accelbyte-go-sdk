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

// NewAdminPlatformLinkV3Params creates a new AdminPlatformLinkV3Params object
// with the default values initialized.
func NewAdminPlatformLinkV3Params() *AdminPlatformLinkV3Params {
	var ()
	return &AdminPlatformLinkV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPlatformLinkV3ParamsWithTimeout creates a new AdminPlatformLinkV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPlatformLinkV3ParamsWithTimeout(timeout time.Duration) *AdminPlatformLinkV3Params {
	var ()
	return &AdminPlatformLinkV3Params{

		timeout: timeout,
	}
}

// NewAdminPlatformLinkV3ParamsWithContext creates a new AdminPlatformLinkV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPlatformLinkV3ParamsWithContext(ctx context.Context) *AdminPlatformLinkV3Params {
	var ()
	return &AdminPlatformLinkV3Params{

		Context: ctx,
	}
}

// NewAdminPlatformLinkV3ParamsWithHTTPClient creates a new AdminPlatformLinkV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPlatformLinkV3ParamsWithHTTPClient(client *http.Client) *AdminPlatformLinkV3Params {
	var ()
	return &AdminPlatformLinkV3Params{
		HTTPClient: client,
	}
}

/*AdminPlatformLinkV3Params contains all the parameters to send to the API endpoint
for the admin platform link v3 operation typically these are written to a http.Request
*/
type AdminPlatformLinkV3Params struct {

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
	  User ID, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) WithTimeout(timeout time.Duration) *AdminPlatformLinkV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) WithContext(ctx context.Context) *AdminPlatformLinkV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) WithHTTPClient(client *http.Client) *AdminPlatformLinkV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminPlatformLinkV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithTicket adds the ticket to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) WithTicket(ticket string) *AdminPlatformLinkV3Params {
	o.SetTicket(ticket)
	return o
}

// SetTicket adds the ticket to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetTicket(ticket string) {
	o.Ticket = ticket
}

// WithNamespace adds the namespace to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) WithNamespace(namespace string) *AdminPlatformLinkV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) WithPlatformID(platformID string) *AdminPlatformLinkV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithUserID adds the userID to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) WithUserID(userID string) *AdminPlatformLinkV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPlatformLinkV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

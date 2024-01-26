// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_tickets

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

// NewDeleteMatchTicketParams creates a new DeleteMatchTicketParams object
// with the default values initialized.
func NewDeleteMatchTicketParams() *DeleteMatchTicketParams {
	var ()
	return &DeleteMatchTicketParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteMatchTicketParamsWithTimeout creates a new DeleteMatchTicketParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteMatchTicketParamsWithTimeout(timeout time.Duration) *DeleteMatchTicketParams {
	var ()
	return &DeleteMatchTicketParams{

		timeout: timeout,
	}
}

// NewDeleteMatchTicketParamsWithContext creates a new DeleteMatchTicketParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteMatchTicketParamsWithContext(ctx context.Context) *DeleteMatchTicketParams {
	var ()
	return &DeleteMatchTicketParams{

		Context: ctx,
	}
}

// NewDeleteMatchTicketParamsWithHTTPClient creates a new DeleteMatchTicketParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteMatchTicketParamsWithHTTPClient(client *http.Client) *DeleteMatchTicketParams {
	var ()
	return &DeleteMatchTicketParams{
		HTTPClient: client,
	}
}

/*DeleteMatchTicketParams contains all the parameters to send to the API endpoint
for the delete match ticket operation typically these are written to a http.Request
*/
type DeleteMatchTicketParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Ticketid
	  ID of the match ticket

	*/
	Ticketid string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete match ticket params
func (o *DeleteMatchTicketParams) WithTimeout(timeout time.Duration) *DeleteMatchTicketParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete match ticket params
func (o *DeleteMatchTicketParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete match ticket params
func (o *DeleteMatchTicketParams) WithContext(ctx context.Context) *DeleteMatchTicketParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete match ticket params
func (o *DeleteMatchTicketParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete match ticket params
func (o *DeleteMatchTicketParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete match ticket params
func (o *DeleteMatchTicketParams) WithHTTPClient(client *http.Client) *DeleteMatchTicketParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete match ticket params
func (o *DeleteMatchTicketParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete match ticket params
func (o *DeleteMatchTicketParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteMatchTicketParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete match ticket params
func (o *DeleteMatchTicketParams) WithNamespace(namespace string) *DeleteMatchTicketParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete match ticket params
func (o *DeleteMatchTicketParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTicketid adds the ticketid to the delete match ticket params
func (o *DeleteMatchTicketParams) WithTicketid(ticketid string) *DeleteMatchTicketParams {
	o.SetTicketid(ticketid)
	return o
}

// SetTicketid adds the ticketid to the delete match ticket params
func (o *DeleteMatchTicketParams) SetTicketid(ticketid string) {
	o.Ticketid = ticketid
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteMatchTicketParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param ticketid
	if err := r.SetPathParam("ticketid", o.Ticketid); err != nil {
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

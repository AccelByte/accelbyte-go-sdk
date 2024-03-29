// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_tickets

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewGetReportsByTicketParams creates a new GetReportsByTicketParams object
// with the default values initialized.
func NewGetReportsByTicketParams() *GetReportsByTicketParams {
	var ()
	return &GetReportsByTicketParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetReportsByTicketParamsWithTimeout creates a new GetReportsByTicketParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetReportsByTicketParamsWithTimeout(timeout time.Duration) *GetReportsByTicketParams {
	var ()
	return &GetReportsByTicketParams{

		timeout: timeout,
	}
}

// NewGetReportsByTicketParamsWithContext creates a new GetReportsByTicketParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetReportsByTicketParamsWithContext(ctx context.Context) *GetReportsByTicketParams {
	var ()
	return &GetReportsByTicketParams{

		Context: ctx,
	}
}

// NewGetReportsByTicketParamsWithHTTPClient creates a new GetReportsByTicketParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetReportsByTicketParamsWithHTTPClient(client *http.Client) *GetReportsByTicketParams {
	var ()
	return &GetReportsByTicketParams{
		HTTPClient: client,
	}
}

/*GetReportsByTicketParams contains all the parameters to send to the API endpoint
for the get reports by ticket operation typically these are written to a http.Request
*/
type GetReportsByTicketParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*TicketID*/
	TicketID string
	/*Limit
	  number of data requested (default 25)

	*/
	Limit *int64
	/*Offset
	  number of data offset (default 0)

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get reports by ticket params
func (o *GetReportsByTicketParams) WithTimeout(timeout time.Duration) *GetReportsByTicketParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get reports by ticket params
func (o *GetReportsByTicketParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get reports by ticket params
func (o *GetReportsByTicketParams) WithContext(ctx context.Context) *GetReportsByTicketParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get reports by ticket params
func (o *GetReportsByTicketParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get reports by ticket params
func (o *GetReportsByTicketParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get reports by ticket params
func (o *GetReportsByTicketParams) WithHTTPClient(client *http.Client) *GetReportsByTicketParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get reports by ticket params
func (o *GetReportsByTicketParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get reports by ticket params
func (o *GetReportsByTicketParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetReportsByTicketParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get reports by ticket params
func (o *GetReportsByTicketParams) WithNamespace(namespace string) *GetReportsByTicketParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get reports by ticket params
func (o *GetReportsByTicketParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTicketID adds the ticketID to the get reports by ticket params
func (o *GetReportsByTicketParams) WithTicketID(ticketID string) *GetReportsByTicketParams {
	o.SetTicketID(ticketID)
	return o
}

// SetTicketID adds the ticketId to the get reports by ticket params
func (o *GetReportsByTicketParams) SetTicketID(ticketID string) {
	o.TicketID = ticketID
}

// WithLimit adds the limit to the get reports by ticket params
func (o *GetReportsByTicketParams) WithLimit(limit *int64) *GetReportsByTicketParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get reports by ticket params
func (o *GetReportsByTicketParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get reports by ticket params
func (o *GetReportsByTicketParams) WithOffset(offset *int64) *GetReportsByTicketParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get reports by ticket params
func (o *GetReportsByTicketParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetReportsByTicketParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

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

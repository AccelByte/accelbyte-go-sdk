// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event

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

// NewGetEventByEventIDHandlerParams creates a new GetEventByEventIDHandlerParams object
// with the default values initialized.
func NewGetEventByEventIDHandlerParams() *GetEventByEventIDHandlerParams {
	var ()
	return &GetEventByEventIDHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetEventByEventIDHandlerParamsWithTimeout creates a new GetEventByEventIDHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetEventByEventIDHandlerParamsWithTimeout(timeout time.Duration) *GetEventByEventIDHandlerParams {
	var ()
	return &GetEventByEventIDHandlerParams{

		timeout: timeout,
	}
}

// NewGetEventByEventIDHandlerParamsWithContext creates a new GetEventByEventIDHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetEventByEventIDHandlerParamsWithContext(ctx context.Context) *GetEventByEventIDHandlerParams {
	var ()
	return &GetEventByEventIDHandlerParams{

		Context: ctx,
	}
}

// NewGetEventByEventIDHandlerParamsWithHTTPClient creates a new GetEventByEventIDHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetEventByEventIDHandlerParamsWithHTTPClient(client *http.Client) *GetEventByEventIDHandlerParams {
	var ()
	return &GetEventByEventIDHandlerParams{
		HTTPClient: client,
	}
}

/*GetEventByEventIDHandlerParams contains all the parameters to send to the API endpoint
for the get event by event id handler operation typically these are written to a http.Request
*/
type GetEventByEventIDHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*EventID
	  Event's ID

	*/
	EventID float64
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Offset
	  Offset to query

	*/
	Offset *int64
	/*EndDate
	  Ending date. e.g. 2015-03-20T12:27:06.351Z

	*/
	EndDate string
	/*PageSize
	  Number of result in a page

	*/
	PageSize int64
	/*StartDate
	  Starting date. e.g. 2015-03-20T12:27:06.351Z

	*/
	StartDate string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) WithTimeout(timeout time.Duration) *GetEventByEventIDHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) WithContext(ctx context.Context) *GetEventByEventIDHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) WithHTTPClient(client *http.Client) *GetEventByEventIDHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetEventByEventIDHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithEventID adds the eventID to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) WithEventID(eventID float64) *GetEventByEventIDHandlerParams {
	o.SetEventID(eventID)
	return o
}

// SetEventID adds the eventId to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) SetEventID(eventID float64) {
	o.EventID = eventID
}

// WithNamespace adds the namespace to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) WithNamespace(namespace string) *GetEventByEventIDHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) WithOffset(offset *int64) *GetEventByEventIDHandlerParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithEndDate adds the endDate to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) WithEndDate(endDate string) *GetEventByEventIDHandlerParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) SetEndDate(endDate string) {
	o.EndDate = endDate
}

// WithPageSize adds the pageSize to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) WithPageSize(pageSize int64) *GetEventByEventIDHandlerParams {
	o.SetPageSize(pageSize)
	return o
}

// SetPageSize adds the pageSize to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) SetPageSize(pageSize int64) {
	o.PageSize = pageSize
}

// WithStartDate adds the startDate to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) WithStartDate(startDate string) *GetEventByEventIDHandlerParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the get event by event id handler params
func (o *GetEventByEventIDHandlerParams) SetStartDate(startDate string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *GetEventByEventIDHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param eventId
	if err := r.SetPathParam("eventId", swag.FormatFloat64(o.EventID)); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	// query param endDate
	qrEndDate := o.EndDate
	qEndDate := qrEndDate
	if qEndDate != "" {
		if err := r.SetQueryParam("endDate", qEndDate); err != nil {
			return err
		}
	}

	// query param pageSize
	qrPageSize := o.PageSize
	qPageSize := swag.FormatInt64(qrPageSize)
	if qPageSize != "" {
		if err := r.SetQueryParam("pageSize", qPageSize); err != nil {
			return err
		}
	}

	// query param startDate
	qrStartDate := o.StartDate
	qStartDate := qrStartDate
	if qStartDate != "" {
		if err := r.SetQueryParam("startDate", qStartDate); err != nil {
			return err
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

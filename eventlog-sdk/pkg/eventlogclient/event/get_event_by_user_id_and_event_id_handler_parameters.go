// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package event

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewGetEventByUserIDAndEventIDHandlerParams creates a new GetEventByUserIDAndEventIDHandlerParams object
// with the default values initialized.
func NewGetEventByUserIDAndEventIDHandlerParams() *GetEventByUserIDAndEventIDHandlerParams {
	var ()
	return &GetEventByUserIDAndEventIDHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetEventByUserIDAndEventIDHandlerParamsWithTimeout creates a new GetEventByUserIDAndEventIDHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetEventByUserIDAndEventIDHandlerParamsWithTimeout(timeout time.Duration) *GetEventByUserIDAndEventIDHandlerParams {
	var ()
	return &GetEventByUserIDAndEventIDHandlerParams{

		timeout: timeout,
	}
}

// NewGetEventByUserIDAndEventIDHandlerParamsWithContext creates a new GetEventByUserIDAndEventIDHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetEventByUserIDAndEventIDHandlerParamsWithContext(ctx context.Context) *GetEventByUserIDAndEventIDHandlerParams {
	var ()
	return &GetEventByUserIDAndEventIDHandlerParams{

		Context: ctx,
	}
}

// NewGetEventByUserIDAndEventIDHandlerParamsWithHTTPClient creates a new GetEventByUserIDAndEventIDHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetEventByUserIDAndEventIDHandlerParamsWithHTTPClient(client *http.Client) *GetEventByUserIDAndEventIDHandlerParams {
	var ()
	return &GetEventByUserIDAndEventIDHandlerParams{
		HTTPClient: client,
	}
}

/*GetEventByUserIDAndEventIDHandlerParams contains all the parameters to send to the API endpoint
for the get event by user ID and event ID handler operation typically these are written to a http.Request
*/
type GetEventByUserIDAndEventIDHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*EndDate
	  Ending date. e.g. 2015-03-20T12:27:06.351Z

	*/
	EndDate string
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
	/*PageSize
	  Number of result in a page

	*/
	PageSize int64
	/*StartDate
	  Starting date. e.g. 2015-03-20T12:27:06.351Z

	*/
	StartDate string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) WithTimeout(timeout time.Duration) *GetEventByUserIDAndEventIDHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) WithContext(ctx context.Context) *GetEventByUserIDAndEventIDHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) WithHTTPClient(client *http.Client) *GetEventByUserIDAndEventIDHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithEndDate adds the endDate to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) WithEndDate(endDate string) *GetEventByUserIDAndEventIDHandlerParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) SetEndDate(endDate string) {
	o.EndDate = endDate
}

// WithEventID adds the eventID to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) WithEventID(eventID float64) *GetEventByUserIDAndEventIDHandlerParams {
	o.SetEventID(eventID)
	return o
}

// SetEventID adds the eventId to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) SetEventID(eventID float64) {
	o.EventID = eventID
}

// WithNamespace adds the namespace to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) WithNamespace(namespace string) *GetEventByUserIDAndEventIDHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) WithOffset(offset *int64) *GetEventByUserIDAndEventIDHandlerParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithPageSize adds the pageSize to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) WithPageSize(pageSize int64) *GetEventByUserIDAndEventIDHandlerParams {
	o.SetPageSize(pageSize)
	return o
}

// SetPageSize adds the pageSize to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) SetPageSize(pageSize int64) {
	o.PageSize = pageSize
}

// WithStartDate adds the startDate to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) WithStartDate(startDate string) *GetEventByUserIDAndEventIDHandlerParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) SetStartDate(startDate string) {
	o.StartDate = startDate
}

// WithUserID adds the userID to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) WithUserID(userID string) *GetEventByUserIDAndEventIDHandlerParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get event by user ID and event ID handler params
func (o *GetEventByUserIDAndEventIDHandlerParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetEventByUserIDAndEventIDHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// query param endDate
	qrEndDate := o.EndDate
	qEndDate := qrEndDate
	if qEndDate != "" {
		if err := r.SetQueryParam("endDate", qEndDate); err != nil {
			return err
		}
	}

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

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

// NewGetEventByUserIDAndEventTypeHandlerParams creates a new GetEventByUserIDAndEventTypeHandlerParams object
// with the default values initialized.
func NewGetEventByUserIDAndEventTypeHandlerParams() *GetEventByUserIDAndEventTypeHandlerParams {
	var ()
	return &GetEventByUserIDAndEventTypeHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetEventByUserIDAndEventTypeHandlerParamsWithTimeout creates a new GetEventByUserIDAndEventTypeHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetEventByUserIDAndEventTypeHandlerParamsWithTimeout(timeout time.Duration) *GetEventByUserIDAndEventTypeHandlerParams {
	var ()
	return &GetEventByUserIDAndEventTypeHandlerParams{

		timeout: timeout,
	}
}

// NewGetEventByUserIDAndEventTypeHandlerParamsWithContext creates a new GetEventByUserIDAndEventTypeHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetEventByUserIDAndEventTypeHandlerParamsWithContext(ctx context.Context) *GetEventByUserIDAndEventTypeHandlerParams {
	var ()
	return &GetEventByUserIDAndEventTypeHandlerParams{

		Context: ctx,
	}
}

// NewGetEventByUserIDAndEventTypeHandlerParamsWithHTTPClient creates a new GetEventByUserIDAndEventTypeHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetEventByUserIDAndEventTypeHandlerParamsWithHTTPClient(client *http.Client) *GetEventByUserIDAndEventTypeHandlerParams {
	var ()
	return &GetEventByUserIDAndEventTypeHandlerParams{
		HTTPClient: client,
	}
}

/*GetEventByUserIDAndEventTypeHandlerParams contains all the parameters to send to the API endpoint
for the get event by user id and event type handler operation typically these are written to a http.Request
*/
type GetEventByUserIDAndEventTypeHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*EventType
	  Event's type

	*/
	EventType float64
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string
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
}

// WithTimeout adds the timeout to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) WithTimeout(timeout time.Duration) *GetEventByUserIDAndEventTypeHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) WithContext(ctx context.Context) *GetEventByUserIDAndEventTypeHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) WithHTTPClient(client *http.Client) *GetEventByUserIDAndEventTypeHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithEventType adds the eventType to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) WithEventType(eventType float64) *GetEventByUserIDAndEventTypeHandlerParams {
	o.SetEventType(eventType)
	return o
}

// SetEventType adds the eventType to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) SetEventType(eventType float64) {
	o.EventType = eventType
}

// WithNamespace adds the namespace to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) WithNamespace(namespace string) *GetEventByUserIDAndEventTypeHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) WithUserID(userID string) *GetEventByUserIDAndEventTypeHandlerParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithOffset adds the offset to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) WithOffset(offset *int64) *GetEventByUserIDAndEventTypeHandlerParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithEndDate adds the endDate to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) WithEndDate(endDate string) *GetEventByUserIDAndEventTypeHandlerParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) SetEndDate(endDate string) {
	o.EndDate = endDate
}

// WithPageSize adds the pageSize to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) WithPageSize(pageSize int64) *GetEventByUserIDAndEventTypeHandlerParams {
	o.SetPageSize(pageSize)
	return o
}

// SetPageSize adds the pageSize to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) SetPageSize(pageSize int64) {
	o.PageSize = pageSize
}

// WithStartDate adds the startDate to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) WithStartDate(startDate string) *GetEventByUserIDAndEventTypeHandlerParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the get event by user id and event type handler params
func (o *GetEventByUserIDAndEventTypeHandlerParams) SetStartDate(startDate string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *GetEventByUserIDAndEventTypeHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param eventType
	if err := r.SetPathParam("eventType", swag.FormatFloat64(o.EventType)); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

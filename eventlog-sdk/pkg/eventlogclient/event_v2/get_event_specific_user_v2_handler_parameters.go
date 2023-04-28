// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event_v2

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

// NewGetEventSpecificUserV2HandlerParams creates a new GetEventSpecificUserV2HandlerParams object
// with the default values initialized.
func NewGetEventSpecificUserV2HandlerParams() *GetEventSpecificUserV2HandlerParams {
	var ()
	return &GetEventSpecificUserV2HandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetEventSpecificUserV2HandlerParamsWithTimeout creates a new GetEventSpecificUserV2HandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetEventSpecificUserV2HandlerParamsWithTimeout(timeout time.Duration) *GetEventSpecificUserV2HandlerParams {
	var ()
	return &GetEventSpecificUserV2HandlerParams{

		timeout: timeout,
	}
}

// NewGetEventSpecificUserV2HandlerParamsWithContext creates a new GetEventSpecificUserV2HandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetEventSpecificUserV2HandlerParamsWithContext(ctx context.Context) *GetEventSpecificUserV2HandlerParams {
	var ()
	return &GetEventSpecificUserV2HandlerParams{

		Context: ctx,
	}
}

// NewGetEventSpecificUserV2HandlerParamsWithHTTPClient creates a new GetEventSpecificUserV2HandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetEventSpecificUserV2HandlerParamsWithHTTPClient(client *http.Client) *GetEventSpecificUserV2HandlerParams {
	var ()
	return &GetEventSpecificUserV2HandlerParams{
		HTTPClient: client,
	}
}

/*GetEventSpecificUserV2HandlerParams contains all the parameters to send to the API endpoint
for the get event specific user v2 handler operation typically these are written to a http.Request
*/
type GetEventSpecificUserV2HandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string
	/*EndDate
	  Ending date. e.g. 2015-03-20T12:27:06Z. Default : Current time in UTC

	*/
	EndDate *string
	/*EventName
	  Event Name to filter

	*/
	EventName *string
	/*Offset
	  Offset to query. Default : 0

	*/
	Offset *int64
	/*PageSize
	  Number of result in a page. Default : 100. Max : 500

	*/
	PageSize *int64
	/*StartDate
	  Starting date. e.g. 2015-03-20T12:27:06Z. Default : 1970-01-01T00:00:00Z

	*/
	StartDate *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) WithTimeout(timeout time.Duration) *GetEventSpecificUserV2HandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) WithContext(ctx context.Context) *GetEventSpecificUserV2HandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) WithHTTPClient(client *http.Client) *GetEventSpecificUserV2HandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) WithNamespace(namespace string) *GetEventSpecificUserV2HandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) WithUserID(userID string) *GetEventSpecificUserV2HandlerParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithEndDate adds the endDate to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) WithEndDate(endDate *string) *GetEventSpecificUserV2HandlerParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) SetEndDate(endDate *string) {
	o.EndDate = endDate
}

// WithEventName adds the eventName to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) WithEventName(eventName *string) *GetEventSpecificUserV2HandlerParams {
	o.SetEventName(eventName)
	return o
}

// SetEventName adds the eventName to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) SetEventName(eventName *string) {
	o.EventName = eventName
}

// WithOffset adds the offset to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) WithOffset(offset *int64) *GetEventSpecificUserV2HandlerParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithPageSize adds the pageSize to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) WithPageSize(pageSize *int64) *GetEventSpecificUserV2HandlerParams {
	o.SetPageSize(pageSize)
	return o
}

// SetPageSize adds the pageSize to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) SetPageSize(pageSize *int64) {
	o.PageSize = pageSize
}

// WithStartDate adds the startDate to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) WithStartDate(startDate *string) *GetEventSpecificUserV2HandlerParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the get event specific user v2 handler params
func (o *GetEventSpecificUserV2HandlerParams) SetStartDate(startDate *string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *GetEventSpecificUserV2HandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.EndDate != nil {

		// query param endDate
		var qrEndDate string
		if o.EndDate != nil {
			qrEndDate = *o.EndDate
		}
		qEndDate := qrEndDate
		if qEndDate != "" {
			if err := r.SetQueryParam("endDate", qEndDate); err != nil {
				return err
			}
		}

	}

	if o.EventName != nil {

		// query param eventName
		var qrEventName string
		if o.EventName != nil {
			qrEventName = *o.EventName
		}
		qEventName := qrEventName
		if qEventName != "" {
			if err := r.SetQueryParam("eventName", qEventName); err != nil {
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

	if o.PageSize != nil {

		// query param pageSize
		var qrPageSize int64
		if o.PageSize != nil {
			qrPageSize = *o.PageSize
		}
		qPageSize := swag.FormatInt64(qrPageSize)
		if qPageSize != "" {
			if err := r.SetQueryParam("pageSize", qPageSize); err != nil {
				return err
			}
		}

	}

	if o.StartDate != nil {

		// query param startDate
		var qrStartDate string
		if o.StartDate != nil {
			qrStartDate = *o.StartDate
		}
		qStartDate := qrStartDate
		if qStartDate != "" {
			if err := r.SetQueryParam("startDate", qStartDate); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

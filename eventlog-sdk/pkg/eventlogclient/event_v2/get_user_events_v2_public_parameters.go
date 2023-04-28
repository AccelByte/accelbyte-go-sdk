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

// NewGetUserEventsV2PublicParams creates a new GetUserEventsV2PublicParams object
// with the default values initialized.
func NewGetUserEventsV2PublicParams() *GetUserEventsV2PublicParams {
	var ()
	return &GetUserEventsV2PublicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserEventsV2PublicParamsWithTimeout creates a new GetUserEventsV2PublicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserEventsV2PublicParamsWithTimeout(timeout time.Duration) *GetUserEventsV2PublicParams {
	var ()
	return &GetUserEventsV2PublicParams{

		timeout: timeout,
	}
}

// NewGetUserEventsV2PublicParamsWithContext creates a new GetUserEventsV2PublicParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserEventsV2PublicParamsWithContext(ctx context.Context) *GetUserEventsV2PublicParams {
	var ()
	return &GetUserEventsV2PublicParams{

		Context: ctx,
	}
}

// NewGetUserEventsV2PublicParamsWithHTTPClient creates a new GetUserEventsV2PublicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserEventsV2PublicParamsWithHTTPClient(client *http.Client) *GetUserEventsV2PublicParams {
	var ()
	return &GetUserEventsV2PublicParams{
		HTTPClient: client,
	}
}

/*GetUserEventsV2PublicParams contains all the parameters to send to the API endpoint
for the get user events v2 public operation typically these are written to a http.Request
*/
type GetUserEventsV2PublicParams struct {

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

// WithTimeout adds the timeout to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) WithTimeout(timeout time.Duration) *GetUserEventsV2PublicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) WithContext(ctx context.Context) *GetUserEventsV2PublicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) WithHTTPClient(client *http.Client) *GetUserEventsV2PublicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) WithNamespace(namespace string) *GetUserEventsV2PublicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) WithUserID(userID string) *GetUserEventsV2PublicParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithEndDate adds the endDate to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) WithEndDate(endDate *string) *GetUserEventsV2PublicParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) SetEndDate(endDate *string) {
	o.EndDate = endDate
}

// WithEventName adds the eventName to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) WithEventName(eventName *string) *GetUserEventsV2PublicParams {
	o.SetEventName(eventName)
	return o
}

// SetEventName adds the eventName to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) SetEventName(eventName *string) {
	o.EventName = eventName
}

// WithOffset adds the offset to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) WithOffset(offset *int64) *GetUserEventsV2PublicParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithPageSize adds the pageSize to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) WithPageSize(pageSize *int64) *GetUserEventsV2PublicParams {
	o.SetPageSize(pageSize)
	return o
}

// SetPageSize adds the pageSize to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) SetPageSize(pageSize *int64) {
	o.PageSize = pageSize
}

// WithStartDate adds the startDate to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) WithStartDate(startDate *string) *GetUserEventsV2PublicParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the get user events v2 public params
func (o *GetUserEventsV2PublicParams) SetStartDate(startDate *string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserEventsV2PublicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

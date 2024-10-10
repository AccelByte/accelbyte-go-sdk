// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package x_ray

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

// NewQueryXrayTimelineByUserIDParams creates a new QueryXrayTimelineByUserIDParams object
// with the default values initialized.
func NewQueryXrayTimelineByUserIDParams() *QueryXrayTimelineByUserIDParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryXrayTimelineByUserIDParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryXrayTimelineByUserIDParamsWithTimeout creates a new QueryXrayTimelineByUserIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryXrayTimelineByUserIDParamsWithTimeout(timeout time.Duration) *QueryXrayTimelineByUserIDParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryXrayTimelineByUserIDParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryXrayTimelineByUserIDParamsWithContext creates a new QueryXrayTimelineByUserIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryXrayTimelineByUserIDParamsWithContext(ctx context.Context) *QueryXrayTimelineByUserIDParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryXrayTimelineByUserIDParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryXrayTimelineByUserIDParamsWithHTTPClient creates a new QueryXrayTimelineByUserIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryXrayTimelineByUserIDParamsWithHTTPClient(client *http.Client) *QueryXrayTimelineByUserIDParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryXrayTimelineByUserIDParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryXrayTimelineByUserIDParams contains all the parameters to send to the API endpoint
for the query xray timeline by user id operation typically these are written to a http.Request
*/
type QueryXrayTimelineByUserIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string
	/*Limit
	  Pagination limit

	*/
	Limit *int64
	/*Offset
	  Pagination offset

	*/
	Offset *int64
	/*EndDate
	  End date time: 2024-10-02T04:06:06Z

	*/
	EndDate string
	/*StartDate
	  Start date time. Format: 2024-10-02T04:06:06Z

	*/
	StartDate string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) WithTimeout(timeout time.Duration) *QueryXrayTimelineByUserIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) WithContext(ctx context.Context) *QueryXrayTimelineByUserIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) WithHTTPClient(client *http.Client) *QueryXrayTimelineByUserIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryXrayTimelineByUserIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) WithNamespace(namespace string) *QueryXrayTimelineByUserIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) WithUserID(userID string) *QueryXrayTimelineByUserIDParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) WithLimit(limit *int64) *QueryXrayTimelineByUserIDParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) WithOffset(offset *int64) *QueryXrayTimelineByUserIDParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithEndDate adds the endDate to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) WithEndDate(endDate string) *QueryXrayTimelineByUserIDParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) SetEndDate(endDate string) {
	o.EndDate = endDate
}

// WithStartDate adds the startDate to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) WithStartDate(startDate string) *QueryXrayTimelineByUserIDParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the query xray timeline by user id params
func (o *QueryXrayTimelineByUserIDParams) SetStartDate(startDate string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *QueryXrayTimelineByUserIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param endDate
	qrEndDate := o.EndDate
	qEndDate := qrEndDate
	if qEndDate != "" {
		if err := r.SetQueryParam("endDate", qEndDate); err != nil {
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

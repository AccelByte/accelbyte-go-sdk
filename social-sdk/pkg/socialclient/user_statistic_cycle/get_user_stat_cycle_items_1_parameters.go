// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic_cycle

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

// NewGetUserStatCycleItems1Params creates a new GetUserStatCycleItems1Params object
// with the default values initialized.
func NewGetUserStatCycleItems1Params() *GetUserStatCycleItems1Params {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetUserStatCycleItems1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserStatCycleItems1ParamsWithTimeout creates a new GetUserStatCycleItems1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserStatCycleItems1ParamsWithTimeout(timeout time.Duration) *GetUserStatCycleItems1Params {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetUserStatCycleItems1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetUserStatCycleItems1ParamsWithContext creates a new GetUserStatCycleItems1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserStatCycleItems1ParamsWithContext(ctx context.Context) *GetUserStatCycleItems1Params {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetUserStatCycleItems1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetUserStatCycleItems1ParamsWithHTTPClient creates a new GetUserStatCycleItems1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserStatCycleItems1ParamsWithHTTPClient(client *http.Client) *GetUserStatCycleItems1Params {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetUserStatCycleItems1Params{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetUserStatCycleItems1Params contains all the parameters to send to the API endpoint
for the get user stat cycle items 1 operation typically these are written to a http.Request
*/
type GetUserStatCycleItems1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CycleID
	  cycle id

	*/
	CycleID string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*SortBy
	  default is unsorted, allow values: [statCode, statCode:asc, statCode:desc, createdAt, createdAt:asc, createdAt:desc, updatedAt, updatedAt:asc, updatedAt:desc],and support sort group, eg: sortBy=statCode:asc,createdAt:desc.

	*/
	SortBy *string
	/*StatCodes
	  comma separated stat codes

	*/
	StatCodes *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) WithTimeout(timeout time.Duration) *GetUserStatCycleItems1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) WithContext(ctx context.Context) *GetUserStatCycleItems1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) WithHTTPClient(client *http.Client) *GetUserStatCycleItems1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserStatCycleItems1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCycleID adds the cycleID to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) WithCycleID(cycleID string) *GetUserStatCycleItems1Params {
	o.SetCycleID(cycleID)
	return o
}

// SetCycleID adds the cycleId to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) SetCycleID(cycleID string) {
	o.CycleID = cycleID
}

// WithNamespace adds the namespace to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) WithNamespace(namespace string) *GetUserStatCycleItems1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) WithUserID(userID string) *GetUserStatCycleItems1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) WithLimit(limit *int32) *GetUserStatCycleItems1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) WithOffset(offset *int32) *GetUserStatCycleItems1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) WithSortBy(sortBy *string) *GetUserStatCycleItems1Params {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatCodes adds the statCodes to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) WithStatCodes(statCodes *string) *GetUserStatCycleItems1Params {
	o.SetStatCodes(statCodes)
	return o
}

// SetStatCodes adds the statCodes to the get user stat cycle items 1 params
func (o *GetUserStatCycleItems1Params) SetStatCodes(statCodes *string) {
	o.StatCodes = statCodes
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserStatCycleItems1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param cycleId
	if err := r.SetPathParam("cycleId", o.CycleID); err != nil {
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

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.SortBy != nil {

		// query param sortBy
		var qrSortBy string
		if o.SortBy != nil {
			qrSortBy = *o.SortBy
		}
		qSortBy := qrSortBy
		if qSortBy != "" {
			if err := r.SetQueryParam("sortBy", qSortBy); err != nil {
				return err
			}
		}

	}

	if o.StatCodes != nil {

		// query param statCodes
		var qrStatCodes string
		if o.StatCodes != nil {
			qrStatCodes = *o.StatCodes
		}
		qStatCodes := qrStatCodes
		if qStatCodes != "" {
			if err := r.SetQueryParam("statCodes", qStatCodes); err != nil {
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

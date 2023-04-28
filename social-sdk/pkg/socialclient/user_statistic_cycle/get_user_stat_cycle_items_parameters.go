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

// NewGetUserStatCycleItemsParams creates a new GetUserStatCycleItemsParams object
// with the default values initialized.
func NewGetUserStatCycleItemsParams() *GetUserStatCycleItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetUserStatCycleItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserStatCycleItemsParamsWithTimeout creates a new GetUserStatCycleItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserStatCycleItemsParamsWithTimeout(timeout time.Duration) *GetUserStatCycleItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetUserStatCycleItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetUserStatCycleItemsParamsWithContext creates a new GetUserStatCycleItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserStatCycleItemsParamsWithContext(ctx context.Context) *GetUserStatCycleItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetUserStatCycleItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetUserStatCycleItemsParamsWithHTTPClient creates a new GetUserStatCycleItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserStatCycleItemsParamsWithHTTPClient(client *http.Client) *GetUserStatCycleItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetUserStatCycleItemsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetUserStatCycleItemsParams contains all the parameters to send to the API endpoint
for the get user stat cycle items operation typically these are written to a http.Request
*/
type GetUserStatCycleItemsParams struct {

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
}

// WithTimeout adds the timeout to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) WithTimeout(timeout time.Duration) *GetUserStatCycleItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) WithContext(ctx context.Context) *GetUserStatCycleItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) WithHTTPClient(client *http.Client) *GetUserStatCycleItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCycleID adds the cycleID to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) WithCycleID(cycleID string) *GetUserStatCycleItemsParams {
	o.SetCycleID(cycleID)
	return o
}

// SetCycleID adds the cycleId to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) SetCycleID(cycleID string) {
	o.CycleID = cycleID
}

// WithNamespace adds the namespace to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) WithNamespace(namespace string) *GetUserStatCycleItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) WithUserID(userID string) *GetUserStatCycleItemsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) WithLimit(limit *int32) *GetUserStatCycleItemsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) WithOffset(offset *int32) *GetUserStatCycleItemsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) WithSortBy(sortBy *string) *GetUserStatCycleItemsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatCodes adds the statCodes to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) WithStatCodes(statCodes *string) *GetUserStatCycleItemsParams {
	o.SetStatCodes(statCodes)
	return o
}

// SetStatCodes adds the statCodes to the get user stat cycle items params
func (o *GetUserStatCycleItemsParams) SetStatCodes(statCodes *string) {
	o.StatCodes = statCodes
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserStatCycleItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

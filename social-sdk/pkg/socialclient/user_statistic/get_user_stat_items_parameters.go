// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

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

// NewGetUserStatItemsParams creates a new GetUserStatItemsParams object
// with the default values initialized.
func NewGetUserStatItemsParams() *GetUserStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = string("updatedAt:asc")
	)
	return &GetUserStatItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserStatItemsParamsWithTimeout creates a new GetUserStatItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserStatItemsParamsWithTimeout(timeout time.Duration) *GetUserStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = string("updatedAt:asc")
	)
	return &GetUserStatItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewGetUserStatItemsParamsWithContext creates a new GetUserStatItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserStatItemsParamsWithContext(ctx context.Context) *GetUserStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = string("updatedAt:asc")
	)
	return &GetUserStatItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewGetUserStatItemsParamsWithHTTPClient creates a new GetUserStatItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserStatItemsParamsWithHTTPClient(client *http.Client) *GetUserStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = string("updatedAt:asc")
	)
	return &GetUserStatItemsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*GetUserStatItemsParams contains all the parameters to send to the API endpoint
for the get user stat items operation typically these are written to a http.Request
*/
type GetUserStatItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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
	  default is updatedAt:asc, allow values: [statCode, statCode:asc, statCode:desc, createdAt, createdAt:asc, createdAt:desc, updatedAt, updatedAt:asc, updatedAt:desc],and support sort group, eg: sortBy=statCode:asc,createdAt:desc.

	*/
	SortBy *string
	/*StatCodes
	  stat codes

	*/
	StatCodes *string
	/*Tags
	  tags

	*/
	Tags *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get user stat items params
func (o *GetUserStatItemsParams) WithTimeout(timeout time.Duration) *GetUserStatItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user stat items params
func (o *GetUserStatItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user stat items params
func (o *GetUserStatItemsParams) WithContext(ctx context.Context) *GetUserStatItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user stat items params
func (o *GetUserStatItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user stat items params
func (o *GetUserStatItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user stat items params
func (o *GetUserStatItemsParams) WithHTTPClient(client *http.Client) *GetUserStatItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user stat items params
func (o *GetUserStatItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user stat items params
func (o *GetUserStatItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user stat items params
func (o *GetUserStatItemsParams) WithNamespace(namespace string) *GetUserStatItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user stat items params
func (o *GetUserStatItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user stat items params
func (o *GetUserStatItemsParams) WithUserID(userID string) *GetUserStatItemsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user stat items params
func (o *GetUserStatItemsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the get user stat items params
func (o *GetUserStatItemsParams) WithLimit(limit *int32) *GetUserStatItemsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get user stat items params
func (o *GetUserStatItemsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the get user stat items params
func (o *GetUserStatItemsParams) WithOffset(offset *int32) *GetUserStatItemsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get user stat items params
func (o *GetUserStatItemsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the get user stat items params
func (o *GetUserStatItemsParams) WithSortBy(sortBy *string) *GetUserStatItemsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the get user stat items params
func (o *GetUserStatItemsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatCodes adds the statCodes to the get user stat items params
func (o *GetUserStatItemsParams) WithStatCodes(statCodes *string) *GetUserStatItemsParams {
	o.SetStatCodes(statCodes)
	return o
}

// SetStatCodes adds the statCodes to the get user stat items params
func (o *GetUserStatItemsParams) SetStatCodes(statCodes *string) {
	o.StatCodes = statCodes
}

// WithTags adds the tags to the get user stat items params
func (o *GetUserStatItemsParams) WithTags(tags *string) *GetUserStatItemsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the get user stat items params
func (o *GetUserStatItemsParams) SetTags(tags *string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserStatItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Tags != nil {

		// query param tags
		var qrTags string
		if o.Tags != nil {
			qrTags = *o.Tags
		}
		qTags := qrTags
		if qTags != "" {
			if err := r.SetQueryParam("tags", qTags); err != nil {
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

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievements

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

// Get the enum in AdminListAchievementsParams
const (
	AdminListAchievementsListOrderConstant     = "listOrder"
	AdminListAchievementsListOrderAscConstant  = "listOrder:asc"
	AdminListAchievementsListOrderDescConstant = "listOrder:desc"
	AdminListAchievementsCreatedAtConstant     = "createdAt"
	AdminListAchievementsCreatedAtAscConstant  = "createdAt:asc"
	AdminListAchievementsCreatedAtDescConstant = "createdAt:desc"
	AdminListAchievementsUpdatedAtConstant     = "updatedAt"
	AdminListAchievementsUpdatedAtAscConstant  = "updatedAt:asc"
	AdminListAchievementsUpdatedAtDescConstant = "updatedAt:desc"
)

// NewAdminListAchievementsParams creates a new AdminListAchievementsParams object
// with the default values initialized.
func NewAdminListAchievementsParams() *AdminListAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("listOrder:asc")
	)
	return &AdminListAchievementsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListAchievementsParamsWithTimeout creates a new AdminListAchievementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListAchievementsParamsWithTimeout(timeout time.Duration) *AdminListAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("listOrder:asc")
	)
	return &AdminListAchievementsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewAdminListAchievementsParamsWithContext creates a new AdminListAchievementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListAchievementsParamsWithContext(ctx context.Context) *AdminListAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("listOrder:asc")
	)
	return &AdminListAchievementsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewAdminListAchievementsParamsWithHTTPClient creates a new AdminListAchievementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListAchievementsParamsWithHTTPClient(client *http.Client) *AdminListAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("listOrder:asc")
	)
	return &AdminListAchievementsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*AdminListAchievementsParams contains all the parameters to send to the API endpoint
for the admin list achievements operation typically these are written to a http.Request
*/
type AdminListAchievementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Global
	  filter by global achievement flag

	*/
	Global *bool
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*SortBy
	  sort by, default is 'listOrder:asc', allow values: [listOrder, listOrder:asc, listOrder:desc, createdAt, createdAt:asc, createdAt:desc, updatedAt, updatedAt:asc, updatedAt:desc]

	*/
	SortBy *string
	/*Tags
	  tags

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin list achievements params
func (o *AdminListAchievementsParams) WithTimeout(timeout time.Duration) *AdminListAchievementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list achievements params
func (o *AdminListAchievementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list achievements params
func (o *AdminListAchievementsParams) WithContext(ctx context.Context) *AdminListAchievementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list achievements params
func (o *AdminListAchievementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list achievements params
func (o *AdminListAchievementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list achievements params
func (o *AdminListAchievementsParams) WithHTTPClient(client *http.Client) *AdminListAchievementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list achievements params
func (o *AdminListAchievementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list achievements params
func (o *AdminListAchievementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin list achievements params
func (o *AdminListAchievementsParams) WithNamespace(namespace string) *AdminListAchievementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list achievements params
func (o *AdminListAchievementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithGlobal adds the global to the admin list achievements params
func (o *AdminListAchievementsParams) WithGlobal(global *bool) *AdminListAchievementsParams {
	o.SetGlobal(global)
	return o
}

// SetGlobal adds the global to the admin list achievements params
func (o *AdminListAchievementsParams) SetGlobal(global *bool) {
	o.Global = global
}

// WithLimit adds the limit to the admin list achievements params
func (o *AdminListAchievementsParams) WithLimit(limit *int64) *AdminListAchievementsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list achievements params
func (o *AdminListAchievementsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list achievements params
func (o *AdminListAchievementsParams) WithOffset(offset *int64) *AdminListAchievementsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list achievements params
func (o *AdminListAchievementsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin list achievements params
func (o *AdminListAchievementsParams) WithSortBy(sortBy *string) *AdminListAchievementsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin list achievements params
func (o *AdminListAchievementsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithTags adds the tags to the admin list achievements params
func (o *AdminListAchievementsParams) WithTags(tags []string) *AdminListAchievementsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the admin list achievements params
func (o *AdminListAchievementsParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListAchievementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Global != nil {

		// query param global
		var qrGlobal bool
		if o.Global != nil {
			qrGlobal = *o.Global
		}
		qGlobal := swag.FormatBool(qrGlobal)
		if qGlobal != "" {
			if err := r.SetQueryParam("global", qGlobal); err != nil {
				return err
			}
		}

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

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "csv")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
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

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_item_types

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

// Deprecated: 2025-07-16 - Use AdminListItemTypesSortBy<EnumValue>Constant instead.
// Get the enum in AdminListItemTypesParams
const (
	AdminListItemTypesCreatedAtConstant     = "createdAt"
	AdminListItemTypesCreatedAtAscConstant  = "createdAt:asc"
	AdminListItemTypesCreatedAtDescConstant = "createdAt:desc"
	AdminListItemTypesNameConstant          = "name"
	AdminListItemTypesNameAscConstant       = "name:asc"
	AdminListItemTypesNameDescConstant      = "name:desc"
)

// Get the enum in AdminListItemTypesParams
const (
	AdminListItemTypesSortByCreatedAtConstant     = "createdAt"
	AdminListItemTypesSortByCreatedAtAscConstant  = "createdAt:asc"
	AdminListItemTypesSortByCreatedAtDescConstant = "createdAt:desc"
	AdminListItemTypesSortByNameConstant          = "name"
	AdminListItemTypesSortByNameAscConstant       = "name:asc"
	AdminListItemTypesSortByNameDescConstant      = "name:desc"
)

// NewAdminListItemTypesParams creates a new AdminListItemTypesParams object
// with the default values initialized.
func NewAdminListItemTypesParams() *AdminListItemTypesParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListItemTypesParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListItemTypesParamsWithTimeout creates a new AdminListItemTypesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListItemTypesParamsWithTimeout(timeout time.Duration) *AdminListItemTypesParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListItemTypesParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewAdminListItemTypesParamsWithContext creates a new AdminListItemTypesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListItemTypesParamsWithContext(ctx context.Context) *AdminListItemTypesParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListItemTypesParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewAdminListItemTypesParamsWithHTTPClient creates a new AdminListItemTypesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListItemTypesParamsWithHTTPClient(client *http.Client) *AdminListItemTypesParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListItemTypesParams{
		Limit:      &limitDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*AdminListItemTypesParams contains all the parameters to send to the API endpoint
for the admin list item types operation typically these are written to a http.Request
*/
type AdminListItemTypesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Limit
	  default 25

	*/
	Limit *int64
	/*Offset*/
	Offset *int64
	/*SortBy
	  Only support one level of sortBy; default createdAt

	*/
	SortBy *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list item types params
func (o *AdminListItemTypesParams) WithTimeout(timeout time.Duration) *AdminListItemTypesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list item types params
func (o *AdminListItemTypesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list item types params
func (o *AdminListItemTypesParams) WithContext(ctx context.Context) *AdminListItemTypesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list item types params
func (o *AdminListItemTypesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list item types params
func (o *AdminListItemTypesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list item types params
func (o *AdminListItemTypesParams) WithHTTPClient(client *http.Client) *AdminListItemTypesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list item types params
func (o *AdminListItemTypesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list item types params
func (o *AdminListItemTypesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListItemTypesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin list item types params
func (o *AdminListItemTypesParams) WithNamespace(namespace string) *AdminListItemTypesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list item types params
func (o *AdminListItemTypesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin list item types params
func (o *AdminListItemTypesParams) WithLimit(limit *int64) *AdminListItemTypesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list item types params
func (o *AdminListItemTypesParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list item types params
func (o *AdminListItemTypesParams) WithOffset(offset *int64) *AdminListItemTypesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list item types params
func (o *AdminListItemTypesParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin list item types params
func (o *AdminListItemTypesParams) WithSortBy(sortBy *string) *AdminListItemTypesParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin list item types params
func (o *AdminListItemTypesParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListItemTypesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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

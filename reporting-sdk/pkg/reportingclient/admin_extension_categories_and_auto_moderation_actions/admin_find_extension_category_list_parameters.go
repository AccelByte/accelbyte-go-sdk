// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_extension_categories_and_auto_moderation_actions

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// Deprecated: 2025-07-16 - Use AdminFindExtensionCategoryListOrder<EnumValue>Constant instead.
// Get the enum in AdminFindExtensionCategoryListParams
const (
	AdminFindExtensionCategoryListAscConstant        = "asc"
	AdminFindExtensionCategoryListAscendingConstant  = "ascending"
	AdminFindExtensionCategoryListDescConstant       = "desc"
	AdminFindExtensionCategoryListDescendingConstant = "descending"
)

// Deprecated: 2025-07-16 - Use AdminFindExtensionCategoryListSortBy<EnumValue>Constant instead.
// Get the enum in AdminFindExtensionCategoryListParams
const (
	AdminFindExtensionCategoryListExtensionCategoryConstant     = "extensionCategory"
	AdminFindExtensionCategoryListExtensionCategoryNameConstant = "extensionCategoryName"
)

// Get the enum in AdminFindExtensionCategoryListParams
const (
	AdminFindExtensionCategoryListOrderAscConstant        = "asc"
	AdminFindExtensionCategoryListOrderAscendingConstant  = "ascending"
	AdminFindExtensionCategoryListOrderDescConstant       = "desc"
	AdminFindExtensionCategoryListOrderDescendingConstant = "descending"
)

// Get the enum in AdminFindExtensionCategoryListParams
const (
	AdminFindExtensionCategoryListSortByExtensionCategoryConstant     = "extensionCategory"
	AdminFindExtensionCategoryListSortByExtensionCategoryNameConstant = "extensionCategoryName"
)

// NewAdminFindExtensionCategoryListParams creates a new AdminFindExtensionCategoryListParams object
// with the default values initialized.
func NewAdminFindExtensionCategoryListParams() *AdminFindExtensionCategoryListParams {
	var (
		orderDefault  = string("asc")
		sortByDefault = string("extensionCategory")
	)
	return &AdminFindExtensionCategoryListParams{
		Order:  &orderDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminFindExtensionCategoryListParamsWithTimeout creates a new AdminFindExtensionCategoryListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminFindExtensionCategoryListParamsWithTimeout(timeout time.Duration) *AdminFindExtensionCategoryListParams {
	var (
		orderDefault  = string("asc")
		sortByDefault = string("extensionCategory")
	)
	return &AdminFindExtensionCategoryListParams{
		Order:  &orderDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewAdminFindExtensionCategoryListParamsWithContext creates a new AdminFindExtensionCategoryListParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminFindExtensionCategoryListParamsWithContext(ctx context.Context) *AdminFindExtensionCategoryListParams {
	var (
		orderDefault  = string("asc")
		sortByDefault = string("extensionCategory")
	)
	return &AdminFindExtensionCategoryListParams{
		Order:  &orderDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewAdminFindExtensionCategoryListParamsWithHTTPClient creates a new AdminFindExtensionCategoryListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminFindExtensionCategoryListParamsWithHTTPClient(client *http.Client) *AdminFindExtensionCategoryListParams {
	var (
		orderDefault  = string("asc")
		sortByDefault = string("extensionCategory")
	)
	return &AdminFindExtensionCategoryListParams{
		Order:      &orderDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*AdminFindExtensionCategoryListParams contains all the parameters to send to the API endpoint
for the admin find extension category list operation typically these are written to a http.Request
*/
type AdminFindExtensionCategoryListParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Order
	  data order, asc or desc (default: asc)

	*/
	Order *string
	/*SortBy
	  data order key, valid key : 'extensionCategory', and 'extensionCategoryName'

	*/
	SortBy *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin find extension category list params
func (o *AdminFindExtensionCategoryListParams) WithTimeout(timeout time.Duration) *AdminFindExtensionCategoryListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin find extension category list params
func (o *AdminFindExtensionCategoryListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin find extension category list params
func (o *AdminFindExtensionCategoryListParams) WithContext(ctx context.Context) *AdminFindExtensionCategoryListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin find extension category list params
func (o *AdminFindExtensionCategoryListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin find extension category list params
func (o *AdminFindExtensionCategoryListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin find extension category list params
func (o *AdminFindExtensionCategoryListParams) WithHTTPClient(client *http.Client) *AdminFindExtensionCategoryListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin find extension category list params
func (o *AdminFindExtensionCategoryListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin find extension category list params
func (o *AdminFindExtensionCategoryListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminFindExtensionCategoryListParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithOrder adds the order to the admin find extension category list params
func (o *AdminFindExtensionCategoryListParams) WithOrder(order *string) *AdminFindExtensionCategoryListParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the admin find extension category list params
func (o *AdminFindExtensionCategoryListParams) SetOrder(order *string) {
	o.Order = order
}

// WithSortBy adds the sortBy to the admin find extension category list params
func (o *AdminFindExtensionCategoryListParams) WithSortBy(sortBy *string) *AdminFindExtensionCategoryListParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin find extension category list params
func (o *AdminFindExtensionCategoryListParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *AdminFindExtensionCategoryListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Order != nil {

		// query param order
		var qrOrder string
		if o.Order != nil {
			qrOrder = *o.Order
		}
		qOrder := qrOrder
		if qOrder != "" {
			if err := r.SetQueryParam("order", qOrder); err != nil {
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

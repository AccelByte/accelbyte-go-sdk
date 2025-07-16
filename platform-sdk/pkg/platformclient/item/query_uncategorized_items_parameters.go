// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package item

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

// Deprecated: 2025-07-16 - Use QueryUncategorizedItemsSortBy<EnumValue>Constant instead.
// Get the enum in QueryUncategorizedItemsParams
const (
	QueryUncategorizedItemsNameConstant             = "name"
	QueryUncategorizedItemsNameAscConstant          = "name:asc"
	QueryUncategorizedItemsNameDescConstant         = "name:desc"
	QueryUncategorizedItemsCreatedAtConstant        = "createdAt"
	QueryUncategorizedItemsCreatedAtAscConstant     = "createdAt:asc"
	QueryUncategorizedItemsCreatedAtDescConstant    = "createdAt:desc"
	QueryUncategorizedItemsUpdatedAtConstant        = "updatedAt"
	QueryUncategorizedItemsUpdatedAtAscConstant     = "updatedAt:asc"
	QueryUncategorizedItemsUpdatedAtDescConstant    = "updatedAt:desc"
	QueryUncategorizedItemsDisplayOrderConstant     = "displayOrder"
	QueryUncategorizedItemsDisplayOrderAscConstant  = "displayOrder:asc"
	QueryUncategorizedItemsDisplayOrderDescConstant = "displayOrder:desc"
)

// Get the enum in QueryUncategorizedItemsParams
const (
	QueryUncategorizedItemsSortByNameConstant             = "name"
	QueryUncategorizedItemsSortByNameAscConstant          = "name:asc"
	QueryUncategorizedItemsSortByNameDescConstant         = "name:desc"
	QueryUncategorizedItemsSortByCreatedAtConstant        = "createdAt"
	QueryUncategorizedItemsSortByCreatedAtAscConstant     = "createdAt:asc"
	QueryUncategorizedItemsSortByCreatedAtDescConstant    = "createdAt:desc"
	QueryUncategorizedItemsSortByUpdatedAtConstant        = "updatedAt"
	QueryUncategorizedItemsSortByUpdatedAtAscConstant     = "updatedAt:asc"
	QueryUncategorizedItemsSortByUpdatedAtDescConstant    = "updatedAt:desc"
	QueryUncategorizedItemsSortByDisplayOrderConstant     = "displayOrder"
	QueryUncategorizedItemsSortByDisplayOrderAscConstant  = "displayOrder:asc"
	QueryUncategorizedItemsSortByDisplayOrderDescConstant = "displayOrder:desc"
)

// NewQueryUncategorizedItemsParams creates a new QueryUncategorizedItemsParams object
// with the default values initialized.
func NewQueryUncategorizedItemsParams() *QueryUncategorizedItemsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
		sortByDefault     = []string{"nameAsc"}
	)
	return &QueryUncategorizedItemsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryUncategorizedItemsParamsWithTimeout creates a new QueryUncategorizedItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryUncategorizedItemsParamsWithTimeout(timeout time.Duration) *QueryUncategorizedItemsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
		sortByDefault     = []string{"nameAsc"}
	)
	return &QueryUncategorizedItemsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     sortByDefault,

		timeout: timeout,
	}
}

// NewQueryUncategorizedItemsParamsWithContext creates a new QueryUncategorizedItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryUncategorizedItemsParamsWithContext(ctx context.Context) *QueryUncategorizedItemsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
		sortByDefault     = []string{"nameAsc"}
	)
	return &QueryUncategorizedItemsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     sortByDefault,

		Context: ctx,
	}
}

// NewQueryUncategorizedItemsParamsWithHTTPClient creates a new QueryUncategorizedItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryUncategorizedItemsParamsWithHTTPClient(client *http.Client) *QueryUncategorizedItemsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
		sortByDefault     = []string{"nameAsc"}
	)
	return &QueryUncategorizedItemsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     sortByDefault,
		HTTPClient: client,
	}
}

/*QueryUncategorizedItemsParams contains all the parameters to send to the API endpoint
for the query uncategorized items operation typically these are written to a http.Request
*/
type QueryUncategorizedItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset
	  offset

	*/
	Offset *int32
	/*SortBy
	  default is name:asc, allow values: [name, name:asc, name:desc, createdAt, createdAt:asc, createdAt:desc, updatedAt, updatedAt:asc, updatedAt:desc, displayOrder, displayOrder:asc, displayOrder:desc],and support sort group, eg: sortBy=name:asc,createdAt:desc Make sure to always use more than one sort if the first sort is not an unique valuefor example, if you wish to sort by displayOrder, make sure to include other sort such as name or createdAt after the first sort, eg: displayOrder:asc,name:asc

	*/
	SortBy []string
	/*StoreID
	  default is published store id

	*/
	StoreID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) WithTimeout(timeout time.Duration) *QueryUncategorizedItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) WithContext(ctx context.Context) *QueryUncategorizedItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) WithHTTPClient(client *http.Client) *QueryUncategorizedItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryUncategorizedItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) WithNamespace(namespace string) *QueryUncategorizedItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) WithActiveOnly(activeOnly *bool) *QueryUncategorizedItemsParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithLimit adds the limit to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) WithLimit(limit *int32) *QueryUncategorizedItemsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) WithOffset(offset *int32) *QueryUncategorizedItemsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) WithSortBy(sortBy []string) *QueryUncategorizedItemsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) SetSortBy(sortBy []string) {
	o.SortBy = sortBy
}

// WithStoreID adds the storeID to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) WithStoreID(storeID *string) *QueryUncategorizedItemsParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the query uncategorized items params
func (o *QueryUncategorizedItemsParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryUncategorizedItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
				return err
			}
		}

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

	valuesSortBy := o.SortBy

	joinedSortBy := swag.JoinByFormat(valuesSortBy, "csv")
	// query array param sortBy
	if err := r.SetQueryParam("sortBy", joinedSortBy...); err != nil {
		return err
	}

	if o.StoreID != nil {

		// query param storeId
		var qrStoreID string
		if o.StoreID != nil {
			qrStoreID = *o.StoreID
		}
		qStoreID := qrStoreID
		if qStoreID != "" {
			if err := r.SetQueryParam("storeId", qStoreID); err != nil {
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

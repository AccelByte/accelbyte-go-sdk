// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_items

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

// Get the enum in AdminListItemsParams
const (
	AdminListItemsCreatedAtConstant     = "createdAt"
	AdminListItemsCreatedAtAscConstant  = "createdAt:asc"
	AdminListItemsCreatedAtDescConstant = "createdAt:desc"
	AdminListItemsQtyConstant           = "qty"
	AdminListItemsQtyAscConstant        = "qty:asc"
	AdminListItemsQtyDescConstant       = "qty:desc"
	AdminListItemsUpdatedAtConstant     = "updatedAt"
	AdminListItemsUpdatedAtAscConstant  = "updatedAt:asc"
	AdminListItemsUpdatedAtDescConstant = "updatedAt:desc"
)

// NewAdminListItemsParams creates a new AdminListItemsParams object
// with the default values initialized.
func NewAdminListItemsParams() *AdminListItemsParams {
	var (
		limitDefault  = int64(25)
		qtyGteDefault = int64(1)
		sortByDefault = string("createdAt")
	)
	return &AdminListItemsParams{
		Limit:  &limitDefault,
		QtyGte: &qtyGteDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListItemsParamsWithTimeout creates a new AdminListItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListItemsParamsWithTimeout(timeout time.Duration) *AdminListItemsParams {
	var (
		limitDefault  = int64(25)
		qtyGteDefault = int64(1)
		sortByDefault = string("createdAt")
	)
	return &AdminListItemsParams{
		Limit:  &limitDefault,
		QtyGte: &qtyGteDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewAdminListItemsParamsWithContext creates a new AdminListItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListItemsParamsWithContext(ctx context.Context) *AdminListItemsParams {
	var (
		limitDefault  = int64(25)
		qtyGteDefault = int64(1)
		sortByDefault = string("createdAt")
	)
	return &AdminListItemsParams{
		Limit:  &limitDefault,
		QtyGte: &qtyGteDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewAdminListItemsParamsWithHTTPClient creates a new AdminListItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListItemsParamsWithHTTPClient(client *http.Client) *AdminListItemsParams {
	var (
		limitDefault  = int64(25)
		qtyGteDefault = int64(1)
		sortByDefault = string("createdAt")
	)
	return &AdminListItemsParams{
		Limit:      &limitDefault,
		QtyGte:     &qtyGteDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*AdminListItemsParams contains all the parameters to send to the API endpoint
for the admin list items operation typically these are written to a http.Request
*/
type AdminListItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*InventoryID
	  InventoryID

	*/
	InventoryID string
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
	/*QtyGte
	  Qty

	*/
	QtyGte *int64
	/*SortBy
	  Only support one level of sortBy; default createdAt

	*/
	SortBy *string
	/*SourceItemID
	  SourceItemID

	*/
	SourceItemID *string
	/*Tags
	  Tags

	*/
	Tags *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list items params
func (o *AdminListItemsParams) WithTimeout(timeout time.Duration) *AdminListItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list items params
func (o *AdminListItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list items params
func (o *AdminListItemsParams) WithContext(ctx context.Context) *AdminListItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list items params
func (o *AdminListItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list items params
func (o *AdminListItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list items params
func (o *AdminListItemsParams) WithHTTPClient(client *http.Client) *AdminListItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list items params
func (o *AdminListItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list items params
func (o *AdminListItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithInventoryID adds the inventoryID to the admin list items params
func (o *AdminListItemsParams) WithInventoryID(inventoryID string) *AdminListItemsParams {
	o.SetInventoryID(inventoryID)
	return o
}

// SetInventoryID adds the inventoryId to the admin list items params
func (o *AdminListItemsParams) SetInventoryID(inventoryID string) {
	o.InventoryID = inventoryID
}

// WithNamespace adds the namespace to the admin list items params
func (o *AdminListItemsParams) WithNamespace(namespace string) *AdminListItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list items params
func (o *AdminListItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin list items params
func (o *AdminListItemsParams) WithLimit(limit *int64) *AdminListItemsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list items params
func (o *AdminListItemsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list items params
func (o *AdminListItemsParams) WithOffset(offset *int64) *AdminListItemsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list items params
func (o *AdminListItemsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithQtyGte adds the qtyGte to the admin list items params
func (o *AdminListItemsParams) WithQtyGte(qtyGte *int64) *AdminListItemsParams {
	o.SetQtyGte(qtyGte)
	return o
}

// SetQtyGte adds the qtyGte to the admin list items params
func (o *AdminListItemsParams) SetQtyGte(qtyGte *int64) {
	o.QtyGte = qtyGte
}

// WithSortBy adds the sortBy to the admin list items params
func (o *AdminListItemsParams) WithSortBy(sortBy *string) *AdminListItemsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin list items params
func (o *AdminListItemsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithSourceItemID adds the sourceItemID to the admin list items params
func (o *AdminListItemsParams) WithSourceItemID(sourceItemID *string) *AdminListItemsParams {
	o.SetSourceItemID(sourceItemID)
	return o
}

// SetSourceItemID adds the sourceItemId to the admin list items params
func (o *AdminListItemsParams) SetSourceItemID(sourceItemID *string) {
	o.SourceItemID = sourceItemID
}

// WithTags adds the tags to the admin list items params
func (o *AdminListItemsParams) WithTags(tags *string) *AdminListItemsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the admin list items params
func (o *AdminListItemsParams) SetTags(tags *string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param inventoryId
	if err := r.SetPathParam("inventoryId", o.InventoryID); err != nil {
		return err
	}

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

	if o.QtyGte != nil {

		// query param qtyGte
		var qrQtyGte int64
		if o.QtyGte != nil {
			qrQtyGte = *o.QtyGte
		}
		qQtyGte := swag.FormatInt64(qrQtyGte)
		if qQtyGte != "" {
			if err := r.SetQueryParam("qtyGte", qQtyGte); err != nil {
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

	if o.SourceItemID != nil {

		// query param sourceItemId
		var qrSourceItemID string
		if o.SourceItemID != nil {
			qrSourceItemID = *o.SourceItemID
		}
		qSourceItemID := qrSourceItemID
		if qSourceItemID != "" {
			if err := r.SetQueryParam("sourceItemId", qSourceItemID); err != nil {
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

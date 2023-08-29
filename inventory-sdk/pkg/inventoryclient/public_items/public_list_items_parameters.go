// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_items

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

// Get the enum in PublicListItemsParams
const (
	PublicListItemsCreatedAtConstant     = "createdAt"
	PublicListItemsCreatedAtAscConstant  = "createdAt:asc"
	PublicListItemsCreatedAtDescConstant = "createdAt:desc"
	PublicListItemsQtyConstant           = "qty"
	PublicListItemsQtyAscConstant        = "qty:asc"
	PublicListItemsQtyDescConstant       = "qty:desc"
	PublicListItemsUpdatedAtConstant     = "updatedAt"
	PublicListItemsUpdatedAtAscConstant  = "updatedAt:asc"
	PublicListItemsUpdatedAtDescConstant = "updatedAt:desc"
)

// NewPublicListItemsParams creates a new PublicListItemsParams object
// with the default values initialized.
func NewPublicListItemsParams() *PublicListItemsParams {
	var (
		limitDefault  = int64(25)
		qtyGteDefault = int64(1)
		sortByDefault = string("createdAt")
	)
	return &PublicListItemsParams{
		Limit:  &limitDefault,
		QtyGte: &qtyGteDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListItemsParamsWithTimeout creates a new PublicListItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListItemsParamsWithTimeout(timeout time.Duration) *PublicListItemsParams {
	var (
		limitDefault  = int64(25)
		qtyGteDefault = int64(1)
		sortByDefault = string("createdAt")
	)
	return &PublicListItemsParams{
		Limit:  &limitDefault,
		QtyGte: &qtyGteDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewPublicListItemsParamsWithContext creates a new PublicListItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListItemsParamsWithContext(ctx context.Context) *PublicListItemsParams {
	var (
		limitDefault  = int64(25)
		qtyGteDefault = int64(1)
		sortByDefault = string("createdAt")
	)
	return &PublicListItemsParams{
		Limit:  &limitDefault,
		QtyGte: &qtyGteDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewPublicListItemsParamsWithHTTPClient creates a new PublicListItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListItemsParamsWithHTTPClient(client *http.Client) *PublicListItemsParams {
	var (
		limitDefault  = int64(25)
		qtyGteDefault = int64(1)
		sortByDefault = string("createdAt")
	)
	return &PublicListItemsParams{
		Limit:      &limitDefault,
		QtyGte:     &qtyGteDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*PublicListItemsParams contains all the parameters to send to the API endpoint
for the public list items operation typically these are written to a http.Request
*/
type PublicListItemsParams struct {

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
}

// WithTimeout adds the timeout to the public list items params
func (o *PublicListItemsParams) WithTimeout(timeout time.Duration) *PublicListItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list items params
func (o *PublicListItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list items params
func (o *PublicListItemsParams) WithContext(ctx context.Context) *PublicListItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list items params
func (o *PublicListItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list items params
func (o *PublicListItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list items params
func (o *PublicListItemsParams) WithHTTPClient(client *http.Client) *PublicListItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list items params
func (o *PublicListItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list items params
func (o *PublicListItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithInventoryID adds the inventoryID to the public list items params
func (o *PublicListItemsParams) WithInventoryID(inventoryID string) *PublicListItemsParams {
	o.SetInventoryID(inventoryID)
	return o
}

// SetInventoryID adds the inventoryId to the public list items params
func (o *PublicListItemsParams) SetInventoryID(inventoryID string) {
	o.InventoryID = inventoryID
}

// WithNamespace adds the namespace to the public list items params
func (o *PublicListItemsParams) WithNamespace(namespace string) *PublicListItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list items params
func (o *PublicListItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the public list items params
func (o *PublicListItemsParams) WithLimit(limit *int64) *PublicListItemsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public list items params
func (o *PublicListItemsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public list items params
func (o *PublicListItemsParams) WithOffset(offset *int64) *PublicListItemsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public list items params
func (o *PublicListItemsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithQtyGte adds the qtyGte to the public list items params
func (o *PublicListItemsParams) WithQtyGte(qtyGte *int64) *PublicListItemsParams {
	o.SetQtyGte(qtyGte)
	return o
}

// SetQtyGte adds the qtyGte to the public list items params
func (o *PublicListItemsParams) SetQtyGte(qtyGte *int64) {
	o.QtyGte = qtyGte
}

// WithSortBy adds the sortBy to the public list items params
func (o *PublicListItemsParams) WithSortBy(sortBy *string) *PublicListItemsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the public list items params
func (o *PublicListItemsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithSourceItemID adds the sourceItemID to the public list items params
func (o *PublicListItemsParams) WithSourceItemID(sourceItemID *string) *PublicListItemsParams {
	o.SetSourceItemID(sourceItemID)
	return o
}

// SetSourceItemID adds the sourceItemId to the public list items params
func (o *PublicListItemsParams) SetSourceItemID(sourceItemID *string) {
	o.SourceItemID = sourceItemID
}

// WithTags adds the tags to the public list items params
func (o *PublicListItemsParams) WithTags(tags *string) *PublicListItemsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the public list items params
func (o *PublicListItemsParams) SetTags(tags *string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

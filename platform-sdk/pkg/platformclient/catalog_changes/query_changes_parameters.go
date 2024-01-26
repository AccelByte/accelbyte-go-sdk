// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package catalog_changes

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

// Get the enum in QueryChangesParams
const (
	QueryChangesCREATEConstant = "CREATE"
	QueryChangesDELETEConstant = "DELETE"
	QueryChangesUPDATEConstant = "UPDATE"
)

// Get the enum in QueryChangesParams
const (
	QueryChangesAPPConstant          = "APP"
	QueryChangesBUNDLEConstant       = "BUNDLE"
	QueryChangesCODEConstant         = "CODE"
	QueryChangesCOINSConstant        = "COINS"
	QueryChangesEXTENSIONConstant    = "EXTENSION"
	QueryChangesINGAMEITEMConstant   = "INGAMEITEM"
	QueryChangesLOOTBOXConstant      = "LOOTBOX"
	QueryChangesMEDIAConstant        = "MEDIA"
	QueryChangesOPTIONBOXConstant    = "OPTIONBOX"
	QueryChangesSEASONConstant       = "SEASON"
	QueryChangesSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in QueryChangesParams
const (
	QueryChangesCreatedAtConstant     = "createdAt"
	QueryChangesCreatedAtAscConstant  = "createdAt:asc"
	QueryChangesCreatedAtDescConstant = "createdAt:desc"
	QueryChangesUpdatedAtConstant     = "updatedAt"
	QueryChangesUpdatedAtAscConstant  = "updatedAt:asc"
	QueryChangesUpdatedAtDescConstant = "updatedAt:desc"
)

// Get the enum in QueryChangesParams
const (
	QueryChangesPUBLISHEDConstant   = "PUBLISHED"
	QueryChangesUNPUBLISHEDConstant = "UNPUBLISHED"
)

// Get the enum in QueryChangesParams
const (
	QueryChangesCATEGORYConstant = "CATEGORY"
	QueryChangesITEMConstant     = "ITEM"
	QueryChangesSECTIONConstant  = "SECTION"
	QueryChangesSTOREConstant    = "STORE"
	QueryChangesVIEWConstant     = "VIEW"
)

// NewQueryChangesParams creates a new QueryChangesParams object
// with the default values initialized.
func NewQueryChangesParams() *QueryChangesParams {
	var (
		limitDefault     = int32(20)
		offsetDefault    = int32(0)
		sortByDefault    = []string{"updatedAtDesc"}
		statusDefault    = string("UNPUBLISHED")
		withTotalDefault = bool(false)
	)
	return &QueryChangesParams{
		Limit:     &limitDefault,
		Offset:    &offsetDefault,
		SortBy:    sortByDefault,
		Status:    &statusDefault,
		WithTotal: &withTotalDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryChangesParamsWithTimeout creates a new QueryChangesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryChangesParamsWithTimeout(timeout time.Duration) *QueryChangesParams {
	var (
		limitDefault     = int32(20)
		offsetDefault    = int32(0)
		sortByDefault    = []string{"updatedAtDesc"}
		statusDefault    = string("UNPUBLISHED")
		withTotalDefault = bool(false)
	)
	return &QueryChangesParams{
		Limit:     &limitDefault,
		Offset:    &offsetDefault,
		SortBy:    sortByDefault,
		Status:    &statusDefault,
		WithTotal: &withTotalDefault,

		timeout: timeout,
	}
}

// NewQueryChangesParamsWithContext creates a new QueryChangesParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryChangesParamsWithContext(ctx context.Context) *QueryChangesParams {
	var (
		limitDefault     = int32(20)
		offsetDefault    = int32(0)
		sortByDefault    = []string{"updatedAtDesc"}
		statusDefault    = string("UNPUBLISHED")
		withTotalDefault = bool(false)
	)
	return &QueryChangesParams{
		Limit:     &limitDefault,
		Offset:    &offsetDefault,
		SortBy:    sortByDefault,
		Status:    &statusDefault,
		WithTotal: &withTotalDefault,

		Context: ctx,
	}
}

// NewQueryChangesParamsWithHTTPClient creates a new QueryChangesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryChangesParamsWithHTTPClient(client *http.Client) *QueryChangesParams {
	var (
		limitDefault     = int32(20)
		offsetDefault    = int32(0)
		sortByDefault    = []string{"updatedAtDesc"}
		statusDefault    = string("UNPUBLISHED")
		withTotalDefault = bool(false)
	)
	return &QueryChangesParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     sortByDefault,
		Status:     &statusDefault,
		WithTotal:  &withTotalDefault,
		HTTPClient: client,
	}
}

/*QueryChangesParams contains all the parameters to send to the API endpoint
for the query changes operation typically these are written to a http.Request
*/
type QueryChangesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*StoreID*/
	StoreID string
	/*Action*/
	Action *string
	/*ItemSku*/
	ItemSku *string
	/*ItemType*/
	ItemType *string
	/*Limit
	  limit

	*/
	Limit *int32
	/*Offset
	  offset

	*/
	Offset *int32
	/*Selected*/
	Selected *bool
	/*SortBy
	  default is updatedAt:desc, allow values: [createdAt, createdAt:asc, createdAt:desc, updatedAt, updatedAt:asc, updatedAt:desc],and support sort group, eg: sortBy=title:asc,createdAt:desc. Make sure to always use more than one sort if the first sort is not an unique valuefor example, if you wish to sort by title, make sure to include other sort such as sku or createdAt after the first sort, eg: title:asc,updatedAt:desc

	*/
	SortBy []string
	/*Status
	  default is UNPUBLISHED

	*/
	Status *string
	/*Type*/
	Type *string
	/*UpdatedAtEnd
	  updated at end , using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	UpdatedAtEnd *string
	/*UpdatedAtStart
	  updated at start , using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	UpdatedAtStart *string
	/*WithTotal
	  true means include total count of catalog changes in response body

	*/
	WithTotal *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query changes params
func (o *QueryChangesParams) WithTimeout(timeout time.Duration) *QueryChangesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query changes params
func (o *QueryChangesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query changes params
func (o *QueryChangesParams) WithContext(ctx context.Context) *QueryChangesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query changes params
func (o *QueryChangesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query changes params
func (o *QueryChangesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query changes params
func (o *QueryChangesParams) WithHTTPClient(client *http.Client) *QueryChangesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query changes params
func (o *QueryChangesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query changes params
func (o *QueryChangesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryChangesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query changes params
func (o *QueryChangesParams) WithNamespace(namespace string) *QueryChangesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query changes params
func (o *QueryChangesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the query changes params
func (o *QueryChangesParams) WithStoreID(storeID string) *QueryChangesParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the query changes params
func (o *QueryChangesParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WithAction adds the action to the query changes params
func (o *QueryChangesParams) WithAction(action *string) *QueryChangesParams {
	o.SetAction(action)
	return o
}

// SetAction adds the action to the query changes params
func (o *QueryChangesParams) SetAction(action *string) {
	o.Action = action
}

// WithItemSku adds the itemSku to the query changes params
func (o *QueryChangesParams) WithItemSku(itemSku *string) *QueryChangesParams {
	o.SetItemSku(itemSku)
	return o
}

// SetItemSku adds the itemSku to the query changes params
func (o *QueryChangesParams) SetItemSku(itemSku *string) {
	o.ItemSku = itemSku
}

// WithItemType adds the itemType to the query changes params
func (o *QueryChangesParams) WithItemType(itemType *string) *QueryChangesParams {
	o.SetItemType(itemType)
	return o
}

// SetItemType adds the itemType to the query changes params
func (o *QueryChangesParams) SetItemType(itemType *string) {
	o.ItemType = itemType
}

// WithLimit adds the limit to the query changes params
func (o *QueryChangesParams) WithLimit(limit *int32) *QueryChangesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query changes params
func (o *QueryChangesParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query changes params
func (o *QueryChangesParams) WithOffset(offset *int32) *QueryChangesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query changes params
func (o *QueryChangesParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSelected adds the selected to the query changes params
func (o *QueryChangesParams) WithSelected(selected *bool) *QueryChangesParams {
	o.SetSelected(selected)
	return o
}

// SetSelected adds the selected to the query changes params
func (o *QueryChangesParams) SetSelected(selected *bool) {
	o.Selected = selected
}

// WithSortBy adds the sortBy to the query changes params
func (o *QueryChangesParams) WithSortBy(sortBy []string) *QueryChangesParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the query changes params
func (o *QueryChangesParams) SetSortBy(sortBy []string) {
	o.SortBy = sortBy
}

// WithStatus adds the status to the query changes params
func (o *QueryChangesParams) WithStatus(status *string) *QueryChangesParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the query changes params
func (o *QueryChangesParams) SetStatus(status *string) {
	o.Status = status
}

// WithType adds the typeVar to the query changes params
func (o *QueryChangesParams) WithType(typeVar *string) *QueryChangesParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the query changes params
func (o *QueryChangesParams) SetType(typeVar *string) {
	o.Type = typeVar
}

// WithUpdatedAtEnd adds the updatedAtEnd to the query changes params
func (o *QueryChangesParams) WithUpdatedAtEnd(updatedAtEnd *string) *QueryChangesParams {
	o.SetUpdatedAtEnd(updatedAtEnd)
	return o
}

// SetUpdatedAtEnd adds the updatedAtEnd to the query changes params
func (o *QueryChangesParams) SetUpdatedAtEnd(updatedAtEnd *string) {
	o.UpdatedAtEnd = updatedAtEnd
}

// WithUpdatedAtStart adds the updatedAtStart to the query changes params
func (o *QueryChangesParams) WithUpdatedAtStart(updatedAtStart *string) *QueryChangesParams {
	o.SetUpdatedAtStart(updatedAtStart)
	return o
}

// SetUpdatedAtStart adds the updatedAtStart to the query changes params
func (o *QueryChangesParams) SetUpdatedAtStart(updatedAtStart *string) {
	o.UpdatedAtStart = updatedAtStart
}

// WithWithTotal adds the withTotal to the query changes params
func (o *QueryChangesParams) WithWithTotal(withTotal *bool) *QueryChangesParams {
	o.SetWithTotal(withTotal)
	return o
}

// SetWithTotal adds the withTotal to the query changes params
func (o *QueryChangesParams) SetWithTotal(withTotal *bool) {
	o.WithTotal = withTotal
}

// WriteToRequest writes these params to a swagger request
func (o *QueryChangesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param storeId
	if err := r.SetPathParam("storeId", o.StoreID); err != nil {
		return err
	}

	if o.Action != nil {

		// query param action
		var qrAction string
		if o.Action != nil {
			qrAction = *o.Action
		}
		qAction := qrAction
		if qAction != "" {
			if err := r.SetQueryParam("action", qAction); err != nil {
				return err
			}
		}

	}

	if o.ItemSku != nil {

		// query param itemSku
		var qrItemSku string
		if o.ItemSku != nil {
			qrItemSku = *o.ItemSku
		}
		qItemSku := qrItemSku
		if qItemSku != "" {
			if err := r.SetQueryParam("itemSku", qItemSku); err != nil {
				return err
			}
		}

	}

	if o.ItemType != nil {

		// query param itemType
		var qrItemType string
		if o.ItemType != nil {
			qrItemType = *o.ItemType
		}
		qItemType := qrItemType
		if qItemType != "" {
			if err := r.SetQueryParam("itemType", qItemType); err != nil {
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

	if o.Selected != nil {

		// query param selected
		var qrSelected bool
		if o.Selected != nil {
			qrSelected = *o.Selected
		}
		qSelected := swag.FormatBool(qrSelected)
		if qSelected != "" {
			if err := r.SetQueryParam("selected", qSelected); err != nil {
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

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
				return err
			}
		}

	}

	if o.Type != nil {

		// query param type
		var qrType string
		if o.Type != nil {
			qrType = *o.Type
		}
		qType := qrType
		if qType != "" {
			if err := r.SetQueryParam("type", qType); err != nil {
				return err
			}
		}

	}

	if o.UpdatedAtEnd != nil {

		// query param updatedAtEnd
		var qrUpdatedAtEnd string
		if o.UpdatedAtEnd != nil {
			qrUpdatedAtEnd = *o.UpdatedAtEnd
		}
		qUpdatedAtEnd := qrUpdatedAtEnd
		if qUpdatedAtEnd != "" {
			if err := r.SetQueryParam("updatedAtEnd", qUpdatedAtEnd); err != nil {
				return err
			}
		}

	}

	if o.UpdatedAtStart != nil {

		// query param updatedAtStart
		var qrUpdatedAtStart string
		if o.UpdatedAtStart != nil {
			qrUpdatedAtStart = *o.UpdatedAtStart
		}
		qUpdatedAtStart := qrUpdatedAtStart
		if qUpdatedAtStart != "" {
			if err := r.SetQueryParam("updatedAtStart", qUpdatedAtStart); err != nil {
				return err
			}
		}

	}

	if o.WithTotal != nil {

		// query param withTotal
		var qrWithTotal bool
		if o.WithTotal != nil {
			qrWithTotal = *o.WithTotal
		}
		qWithTotal := swag.FormatBool(qrWithTotal)
		if qWithTotal != "" {
			if err := r.SetQueryParam("withTotal", qWithTotal); err != nil {
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

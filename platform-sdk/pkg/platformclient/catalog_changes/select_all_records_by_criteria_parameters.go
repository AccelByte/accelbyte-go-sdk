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

// Deprecated: 2025-07-16 - Use SelectAllRecordsByCriteriaAction<EnumValue>Constant instead.
// Get the enum in SelectAllRecordsByCriteriaParams
const (
	SelectAllRecordsByCriteriaCREATEConstant = "CREATE"
	SelectAllRecordsByCriteriaDELETEConstant = "DELETE"
	SelectAllRecordsByCriteriaUPDATEConstant = "UPDATE"
)

// Deprecated: 2025-07-16 - Use SelectAllRecordsByCriteriaItemType<EnumValue>Constant instead.
// Get the enum in SelectAllRecordsByCriteriaParams
const (
	SelectAllRecordsByCriteriaAPPConstant          = "APP"
	SelectAllRecordsByCriteriaBUNDLEConstant       = "BUNDLE"
	SelectAllRecordsByCriteriaCODEConstant         = "CODE"
	SelectAllRecordsByCriteriaCOINSConstant        = "COINS"
	SelectAllRecordsByCriteriaEXTENSIONConstant    = "EXTENSION"
	SelectAllRecordsByCriteriaINGAMEITEMConstant   = "INGAMEITEM"
	SelectAllRecordsByCriteriaLOOTBOXConstant      = "LOOTBOX"
	SelectAllRecordsByCriteriaMEDIAConstant        = "MEDIA"
	SelectAllRecordsByCriteriaOPTIONBOXConstant    = "OPTIONBOX"
	SelectAllRecordsByCriteriaSEASONConstant       = "SEASON"
	SelectAllRecordsByCriteriaSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Deprecated: 2025-07-16 - Use SelectAllRecordsByCriteriaType<EnumValue>Constant instead.
// Get the enum in SelectAllRecordsByCriteriaParams
const (
	SelectAllRecordsByCriteriaCATEGORYConstant = "CATEGORY"
	SelectAllRecordsByCriteriaITEMConstant     = "ITEM"
	SelectAllRecordsByCriteriaSECTIONConstant  = "SECTION"
	SelectAllRecordsByCriteriaSTOREConstant    = "STORE"
	SelectAllRecordsByCriteriaVIEWConstant     = "VIEW"
)

// Get the enum in SelectAllRecordsByCriteriaParams
const (
	SelectAllRecordsByCriteriaActionCREATEConstant = "CREATE"
	SelectAllRecordsByCriteriaActionDELETEConstant = "DELETE"
	SelectAllRecordsByCriteriaActionUPDATEConstant = "UPDATE"
)

// Get the enum in SelectAllRecordsByCriteriaParams
const (
	SelectAllRecordsByCriteriaItemTypeAPPConstant          = "APP"
	SelectAllRecordsByCriteriaItemTypeBUNDLEConstant       = "BUNDLE"
	SelectAllRecordsByCriteriaItemTypeCODEConstant         = "CODE"
	SelectAllRecordsByCriteriaItemTypeCOINSConstant        = "COINS"
	SelectAllRecordsByCriteriaItemTypeEXTENSIONConstant    = "EXTENSION"
	SelectAllRecordsByCriteriaItemTypeINGAMEITEMConstant   = "INGAMEITEM"
	SelectAllRecordsByCriteriaItemTypeLOOTBOXConstant      = "LOOTBOX"
	SelectAllRecordsByCriteriaItemTypeMEDIAConstant        = "MEDIA"
	SelectAllRecordsByCriteriaItemTypeOPTIONBOXConstant    = "OPTIONBOX"
	SelectAllRecordsByCriteriaItemTypeSEASONConstant       = "SEASON"
	SelectAllRecordsByCriteriaItemTypeSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in SelectAllRecordsByCriteriaParams
const (
	SelectAllRecordsByCriteriaTypeCATEGORYConstant = "CATEGORY"
	SelectAllRecordsByCriteriaTypeITEMConstant     = "ITEM"
	SelectAllRecordsByCriteriaTypeSECTIONConstant  = "SECTION"
	SelectAllRecordsByCriteriaTypeSTOREConstant    = "STORE"
	SelectAllRecordsByCriteriaTypeVIEWConstant     = "VIEW"
)

// NewSelectAllRecordsByCriteriaParams creates a new SelectAllRecordsByCriteriaParams object
// with the default values initialized.
func NewSelectAllRecordsByCriteriaParams() *SelectAllRecordsByCriteriaParams {
	var ()
	return &SelectAllRecordsByCriteriaParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSelectAllRecordsByCriteriaParamsWithTimeout creates a new SelectAllRecordsByCriteriaParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSelectAllRecordsByCriteriaParamsWithTimeout(timeout time.Duration) *SelectAllRecordsByCriteriaParams {
	var ()
	return &SelectAllRecordsByCriteriaParams{

		timeout: timeout,
	}
}

// NewSelectAllRecordsByCriteriaParamsWithContext creates a new SelectAllRecordsByCriteriaParams object
// with the default values initialized, and the ability to set a context for a request
func NewSelectAllRecordsByCriteriaParamsWithContext(ctx context.Context) *SelectAllRecordsByCriteriaParams {
	var ()
	return &SelectAllRecordsByCriteriaParams{

		Context: ctx,
	}
}

// NewSelectAllRecordsByCriteriaParamsWithHTTPClient creates a new SelectAllRecordsByCriteriaParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSelectAllRecordsByCriteriaParamsWithHTTPClient(client *http.Client) *SelectAllRecordsByCriteriaParams {
	var ()
	return &SelectAllRecordsByCriteriaParams{
		HTTPClient: client,
	}
}

/*SelectAllRecordsByCriteriaParams contains all the parameters to send to the API endpoint
for the select all records by criteria operation typically these are written to a http.Request
*/
type SelectAllRecordsByCriteriaParams struct {

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
	/*Selected*/
	Selected *bool
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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) WithTimeout(timeout time.Duration) *SelectAllRecordsByCriteriaParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) WithContext(ctx context.Context) *SelectAllRecordsByCriteriaParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) WithHTTPClient(client *http.Client) *SelectAllRecordsByCriteriaParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SelectAllRecordsByCriteriaParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) WithNamespace(namespace string) *SelectAllRecordsByCriteriaParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) WithStoreID(storeID string) *SelectAllRecordsByCriteriaParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WithAction adds the action to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) WithAction(action *string) *SelectAllRecordsByCriteriaParams {
	o.SetAction(action)
	return o
}

// SetAction adds the action to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) SetAction(action *string) {
	o.Action = action
}

// WithItemSku adds the itemSku to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) WithItemSku(itemSku *string) *SelectAllRecordsByCriteriaParams {
	o.SetItemSku(itemSku)
	return o
}

// SetItemSku adds the itemSku to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) SetItemSku(itemSku *string) {
	o.ItemSku = itemSku
}

// WithItemType adds the itemType to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) WithItemType(itemType *string) *SelectAllRecordsByCriteriaParams {
	o.SetItemType(itemType)
	return o
}

// SetItemType adds the itemType to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) SetItemType(itemType *string) {
	o.ItemType = itemType
}

// WithSelected adds the selected to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) WithSelected(selected *bool) *SelectAllRecordsByCriteriaParams {
	o.SetSelected(selected)
	return o
}

// SetSelected adds the selected to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) SetSelected(selected *bool) {
	o.Selected = selected
}

// WithType adds the typeVar to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) WithType(typeVar *string) *SelectAllRecordsByCriteriaParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) SetType(typeVar *string) {
	o.Type = typeVar
}

// WithUpdatedAtEnd adds the updatedAtEnd to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) WithUpdatedAtEnd(updatedAtEnd *string) *SelectAllRecordsByCriteriaParams {
	o.SetUpdatedAtEnd(updatedAtEnd)
	return o
}

// SetUpdatedAtEnd adds the updatedAtEnd to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) SetUpdatedAtEnd(updatedAtEnd *string) {
	o.UpdatedAtEnd = updatedAtEnd
}

// WithUpdatedAtStart adds the updatedAtStart to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) WithUpdatedAtStart(updatedAtStart *string) *SelectAllRecordsByCriteriaParams {
	o.SetUpdatedAtStart(updatedAtStart)
	return o
}

// SetUpdatedAtStart adds the updatedAtStart to the select all records by criteria params
func (o *SelectAllRecordsByCriteriaParams) SetUpdatedAtStart(updatedAtStart *string) {
	o.UpdatedAtStart = updatedAtStart
}

// WriteToRequest writes these params to a swagger request
func (o *SelectAllRecordsByCriteriaParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

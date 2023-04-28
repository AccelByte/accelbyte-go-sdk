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
)

// Get the enum in GetStatisticParams
const (
	GetStatisticCREATEConstant = "CREATE"
	GetStatisticDELETEConstant = "DELETE"
	GetStatisticUPDATEConstant = "UPDATE"
)

// Get the enum in GetStatisticParams
const (
	GetStatisticAPPConstant          = "APP"
	GetStatisticBUNDLEConstant       = "BUNDLE"
	GetStatisticCODEConstant         = "CODE"
	GetStatisticCOINSConstant        = "COINS"
	GetStatisticEXTENSIONConstant    = "EXTENSION"
	GetStatisticINGAMEITEMConstant   = "INGAMEITEM"
	GetStatisticLOOTBOXConstant      = "LOOTBOX"
	GetStatisticMEDIAConstant        = "MEDIA"
	GetStatisticOPTIONBOXConstant    = "OPTIONBOX"
	GetStatisticSEASONConstant       = "SEASON"
	GetStatisticSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in GetStatisticParams
const (
	GetStatisticCATEGORYConstant = "CATEGORY"
	GetStatisticITEMConstant     = "ITEM"
	GetStatisticSECTIONConstant  = "SECTION"
	GetStatisticSTOREConstant    = "STORE"
	GetStatisticVIEWConstant     = "VIEW"
)

// NewGetStatisticParams creates a new GetStatisticParams object
// with the default values initialized.
func NewGetStatisticParams() *GetStatisticParams {
	var ()
	return &GetStatisticParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetStatisticParamsWithTimeout creates a new GetStatisticParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetStatisticParamsWithTimeout(timeout time.Duration) *GetStatisticParams {
	var ()
	return &GetStatisticParams{

		timeout: timeout,
	}
}

// NewGetStatisticParamsWithContext creates a new GetStatisticParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetStatisticParamsWithContext(ctx context.Context) *GetStatisticParams {
	var ()
	return &GetStatisticParams{

		Context: ctx,
	}
}

// NewGetStatisticParamsWithHTTPClient creates a new GetStatisticParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetStatisticParamsWithHTTPClient(client *http.Client) *GetStatisticParams {
	var ()
	return &GetStatisticParams{
		HTTPClient: client,
	}
}

/*GetStatisticParams contains all the parameters to send to the API endpoint
for the get statistic operation typically these are written to a http.Request
*/
type GetStatisticParams struct {

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
}

// WithTimeout adds the timeout to the get statistic params
func (o *GetStatisticParams) WithTimeout(timeout time.Duration) *GetStatisticParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get statistic params
func (o *GetStatisticParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get statistic params
func (o *GetStatisticParams) WithContext(ctx context.Context) *GetStatisticParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get statistic params
func (o *GetStatisticParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get statistic params
func (o *GetStatisticParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get statistic params
func (o *GetStatisticParams) WithHTTPClient(client *http.Client) *GetStatisticParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get statistic params
func (o *GetStatisticParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get statistic params
func (o *GetStatisticParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get statistic params
func (o *GetStatisticParams) WithNamespace(namespace string) *GetStatisticParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get statistic params
func (o *GetStatisticParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the get statistic params
func (o *GetStatisticParams) WithStoreID(storeID string) *GetStatisticParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get statistic params
func (o *GetStatisticParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WithAction adds the action to the get statistic params
func (o *GetStatisticParams) WithAction(action *string) *GetStatisticParams {
	o.SetAction(action)
	return o
}

// SetAction adds the action to the get statistic params
func (o *GetStatisticParams) SetAction(action *string) {
	o.Action = action
}

// WithItemSku adds the itemSku to the get statistic params
func (o *GetStatisticParams) WithItemSku(itemSku *string) *GetStatisticParams {
	o.SetItemSku(itemSku)
	return o
}

// SetItemSku adds the itemSku to the get statistic params
func (o *GetStatisticParams) SetItemSku(itemSku *string) {
	o.ItemSku = itemSku
}

// WithItemType adds the itemType to the get statistic params
func (o *GetStatisticParams) WithItemType(itemType *string) *GetStatisticParams {
	o.SetItemType(itemType)
	return o
}

// SetItemType adds the itemType to the get statistic params
func (o *GetStatisticParams) SetItemType(itemType *string) {
	o.ItemType = itemType
}

// WithType adds the typeVar to the get statistic params
func (o *GetStatisticParams) WithType(typeVar *string) *GetStatisticParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the get statistic params
func (o *GetStatisticParams) SetType(typeVar *string) {
	o.Type = typeVar
}

// WithUpdatedAtEnd adds the updatedAtEnd to the get statistic params
func (o *GetStatisticParams) WithUpdatedAtEnd(updatedAtEnd *string) *GetStatisticParams {
	o.SetUpdatedAtEnd(updatedAtEnd)
	return o
}

// SetUpdatedAtEnd adds the updatedAtEnd to the get statistic params
func (o *GetStatisticParams) SetUpdatedAtEnd(updatedAtEnd *string) {
	o.UpdatedAtEnd = updatedAtEnd
}

// WithUpdatedAtStart adds the updatedAtStart to the get statistic params
func (o *GetStatisticParams) WithUpdatedAtStart(updatedAtStart *string) *GetStatisticParams {
	o.SetUpdatedAtStart(updatedAtStart)
	return o
}

// SetUpdatedAtStart adds the updatedAtStart to the get statistic params
func (o *GetStatisticParams) SetUpdatedAtStart(updatedAtStart *string) {
	o.UpdatedAtStart = updatedAtStart
}

// WriteToRequest writes these params to a swagger request
func (o *GetStatisticParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

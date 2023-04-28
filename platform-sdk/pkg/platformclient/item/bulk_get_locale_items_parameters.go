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

// NewBulkGetLocaleItemsParams creates a new BulkGetLocaleItemsParams object
// with the default values initialized.
func NewBulkGetLocaleItemsParams() *BulkGetLocaleItemsParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &BulkGetLocaleItemsParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkGetLocaleItemsParamsWithTimeout creates a new BulkGetLocaleItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkGetLocaleItemsParamsWithTimeout(timeout time.Duration) *BulkGetLocaleItemsParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &BulkGetLocaleItemsParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: timeout,
	}
}

// NewBulkGetLocaleItemsParamsWithContext creates a new BulkGetLocaleItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkGetLocaleItemsParamsWithContext(ctx context.Context) *BulkGetLocaleItemsParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &BulkGetLocaleItemsParams{
		ActiveOnly: &activeOnlyDefault,

		Context: ctx,
	}
}

// NewBulkGetLocaleItemsParamsWithHTTPClient creates a new BulkGetLocaleItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkGetLocaleItemsParamsWithHTTPClient(client *http.Client) *BulkGetLocaleItemsParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &BulkGetLocaleItemsParams{
		ActiveOnly: &activeOnlyDefault,
		HTTPClient: client,
	}
}

/*BulkGetLocaleItemsParams contains all the parameters to send to the API endpoint
for the bulk get locale items operation typically these are written to a http.Request
*/
type BulkGetLocaleItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*Language*/
	Language *string
	/*Region*/
	Region *string
	/*StoreID
	  default is published store id

	*/
	StoreID *string
	/*ItemIds
	  commas separated item ids

	*/
	ItemIds string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) WithTimeout(timeout time.Duration) *BulkGetLocaleItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) WithContext(ctx context.Context) *BulkGetLocaleItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) WithHTTPClient(client *http.Client) *BulkGetLocaleItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) WithNamespace(namespace string) *BulkGetLocaleItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) WithActiveOnly(activeOnly *bool) *BulkGetLocaleItemsParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithLanguage adds the language to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) WithLanguage(language *string) *BulkGetLocaleItemsParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) SetLanguage(language *string) {
	o.Language = language
}

// WithRegion adds the region to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) WithRegion(region *string) *BulkGetLocaleItemsParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) SetRegion(region *string) {
	o.Region = region
}

// WithStoreID adds the storeID to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) WithStoreID(storeID *string) *BulkGetLocaleItemsParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithItemIds adds the itemIds to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) WithItemIds(itemIds string) *BulkGetLocaleItemsParams {
	o.SetItemIds(itemIds)
	return o
}

// SetItemIds adds the itemIds to the bulk get locale items params
func (o *BulkGetLocaleItemsParams) SetItemIds(itemIds string) {
	o.ItemIds = itemIds
}

// WriteToRequest writes these params to a swagger request
func (o *BulkGetLocaleItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Language != nil {

		// query param language
		var qrLanguage string
		if o.Language != nil {
			qrLanguage = *o.Language
		}
		qLanguage := qrLanguage
		if qLanguage != "" {
			if err := r.SetQueryParam("language", qLanguage); err != nil {
				return err
			}
		}

	}

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
				return err
			}
		}

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

	// query param itemIds
	qrItemIds := o.ItemIds
	qItemIds := qrItemIds
	if qItemIds != "" {
		if err := r.SetQueryParam("itemIds", qItemIds); err != nil {
			return err
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

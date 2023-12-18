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

// NewPublicBulkGetItemsParams creates a new PublicBulkGetItemsParams object
// with the default values initialized.
func NewPublicBulkGetItemsParams() *PublicBulkGetItemsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
	)
	return &PublicBulkGetItemsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicBulkGetItemsParamsWithTimeout creates a new PublicBulkGetItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicBulkGetItemsParamsWithTimeout(timeout time.Duration) *PublicBulkGetItemsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
	)
	return &PublicBulkGetItemsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,

		timeout: timeout,
	}
}

// NewPublicBulkGetItemsParamsWithContext creates a new PublicBulkGetItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicBulkGetItemsParamsWithContext(ctx context.Context) *PublicBulkGetItemsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
	)
	return &PublicBulkGetItemsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,

		Context: ctx,
	}
}

// NewPublicBulkGetItemsParamsWithHTTPClient creates a new PublicBulkGetItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicBulkGetItemsParamsWithHTTPClient(client *http.Client) *PublicBulkGetItemsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
	)
	return &PublicBulkGetItemsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,
		HTTPClient:             client,
	}
}

/*PublicBulkGetItemsParams contains all the parameters to send to the API endpoint
for the public bulk get items operation typically these are written to a http.Request
*/
type PublicBulkGetItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*AutoCalcEstimatedPrice*/
	AutoCalcEstimatedPrice *bool
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

// WithTimeout adds the timeout to the public bulk get items params
func (o *PublicBulkGetItemsParams) WithTimeout(timeout time.Duration) *PublicBulkGetItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public bulk get items params
func (o *PublicBulkGetItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public bulk get items params
func (o *PublicBulkGetItemsParams) WithContext(ctx context.Context) *PublicBulkGetItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public bulk get items params
func (o *PublicBulkGetItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public bulk get items params
func (o *PublicBulkGetItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public bulk get items params
func (o *PublicBulkGetItemsParams) WithHTTPClient(client *http.Client) *PublicBulkGetItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public bulk get items params
func (o *PublicBulkGetItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public bulk get items params
func (o *PublicBulkGetItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public bulk get items params
func (o *PublicBulkGetItemsParams) WithNamespace(namespace string) *PublicBulkGetItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public bulk get items params
func (o *PublicBulkGetItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAutoCalcEstimatedPrice adds the autoCalcEstimatedPrice to the public bulk get items params
func (o *PublicBulkGetItemsParams) WithAutoCalcEstimatedPrice(autoCalcEstimatedPrice *bool) *PublicBulkGetItemsParams {
	o.SetAutoCalcEstimatedPrice(autoCalcEstimatedPrice)
	return o
}

// SetAutoCalcEstimatedPrice adds the autoCalcEstimatedPrice to the public bulk get items params
func (o *PublicBulkGetItemsParams) SetAutoCalcEstimatedPrice(autoCalcEstimatedPrice *bool) {
	o.AutoCalcEstimatedPrice = autoCalcEstimatedPrice
}

// WithLanguage adds the language to the public bulk get items params
func (o *PublicBulkGetItemsParams) WithLanguage(language *string) *PublicBulkGetItemsParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public bulk get items params
func (o *PublicBulkGetItemsParams) SetLanguage(language *string) {
	o.Language = language
}

// WithRegion adds the region to the public bulk get items params
func (o *PublicBulkGetItemsParams) WithRegion(region *string) *PublicBulkGetItemsParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the public bulk get items params
func (o *PublicBulkGetItemsParams) SetRegion(region *string) {
	o.Region = region
}

// WithStoreID adds the storeID to the public bulk get items params
func (o *PublicBulkGetItemsParams) WithStoreID(storeID *string) *PublicBulkGetItemsParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the public bulk get items params
func (o *PublicBulkGetItemsParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithItemIds adds the itemIds to the public bulk get items params
func (o *PublicBulkGetItemsParams) WithItemIds(itemIds string) *PublicBulkGetItemsParams {
	o.SetItemIds(itemIds)
	return o
}

// SetItemIds adds the itemIds to the public bulk get items params
func (o *PublicBulkGetItemsParams) SetItemIds(itemIds string) {
	o.ItemIds = itemIds
}

// WriteToRequest writes these params to a swagger request
func (o *PublicBulkGetItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.AutoCalcEstimatedPrice != nil {

		// query param autoCalcEstimatedPrice
		var qrAutoCalcEstimatedPrice bool
		if o.AutoCalcEstimatedPrice != nil {
			qrAutoCalcEstimatedPrice = *o.AutoCalcEstimatedPrice
		}
		qAutoCalcEstimatedPrice := swag.FormatBool(qrAutoCalcEstimatedPrice)
		if qAutoCalcEstimatedPrice != "" {
			if err := r.SetQueryParam("autoCalcEstimatedPrice", qAutoCalcEstimatedPrice); err != nil {
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

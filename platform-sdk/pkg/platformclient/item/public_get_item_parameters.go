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

// NewPublicGetItemParams creates a new PublicGetItemParams object
// with the default values initialized.
func NewPublicGetItemParams() *PublicGetItemParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
		populateBundleDefault         = bool(false)
	)
	return &PublicGetItemParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,
		PopulateBundle:         &populateBundleDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetItemParamsWithTimeout creates a new PublicGetItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetItemParamsWithTimeout(timeout time.Duration) *PublicGetItemParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
		populateBundleDefault         = bool(false)
	)
	return &PublicGetItemParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,
		PopulateBundle:         &populateBundleDefault,

		timeout: timeout,
	}
}

// NewPublicGetItemParamsWithContext creates a new PublicGetItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetItemParamsWithContext(ctx context.Context) *PublicGetItemParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
		populateBundleDefault         = bool(false)
	)
	return &PublicGetItemParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,
		PopulateBundle:         &populateBundleDefault,

		Context: ctx,
	}
}

// NewPublicGetItemParamsWithHTTPClient creates a new PublicGetItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetItemParamsWithHTTPClient(client *http.Client) *PublicGetItemParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
		populateBundleDefault         = bool(false)
	)
	return &PublicGetItemParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,
		PopulateBundle:         &populateBundleDefault,
		HTTPClient:             client,
	}
}

/*PublicGetItemParams contains all the parameters to send to the API endpoint
for the public get item operation typically these are written to a http.Request
*/
type PublicGetItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ItemID*/
	ItemID string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*AutoCalcEstimatedPrice*/
	AutoCalcEstimatedPrice *bool
	/*Language*/
	Language *string
	/*PopulateBundle
	  whether populate bundled items if it's a bundle

	*/
	PopulateBundle *bool
	/*Region*/
	Region *string
	/*StoreID
	  default is published store id

	*/
	StoreID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get item params
func (o *PublicGetItemParams) WithTimeout(timeout time.Duration) *PublicGetItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get item params
func (o *PublicGetItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get item params
func (o *PublicGetItemParams) WithContext(ctx context.Context) *PublicGetItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get item params
func (o *PublicGetItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get item params
func (o *PublicGetItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get item params
func (o *PublicGetItemParams) WithHTTPClient(client *http.Client) *PublicGetItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get item params
func (o *PublicGetItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get item params
func (o *PublicGetItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithItemID adds the itemID to the public get item params
func (o *PublicGetItemParams) WithItemID(itemID string) *PublicGetItemParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the public get item params
func (o *PublicGetItemParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithNamespace adds the namespace to the public get item params
func (o *PublicGetItemParams) WithNamespace(namespace string) *PublicGetItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get item params
func (o *PublicGetItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAutoCalcEstimatedPrice adds the autoCalcEstimatedPrice to the public get item params
func (o *PublicGetItemParams) WithAutoCalcEstimatedPrice(autoCalcEstimatedPrice *bool) *PublicGetItemParams {
	o.SetAutoCalcEstimatedPrice(autoCalcEstimatedPrice)
	return o
}

// SetAutoCalcEstimatedPrice adds the autoCalcEstimatedPrice to the public get item params
func (o *PublicGetItemParams) SetAutoCalcEstimatedPrice(autoCalcEstimatedPrice *bool) {
	o.AutoCalcEstimatedPrice = autoCalcEstimatedPrice
}

// WithLanguage adds the language to the public get item params
func (o *PublicGetItemParams) WithLanguage(language *string) *PublicGetItemParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public get item params
func (o *PublicGetItemParams) SetLanguage(language *string) {
	o.Language = language
}

// WithPopulateBundle adds the populateBundle to the public get item params
func (o *PublicGetItemParams) WithPopulateBundle(populateBundle *bool) *PublicGetItemParams {
	o.SetPopulateBundle(populateBundle)
	return o
}

// SetPopulateBundle adds the populateBundle to the public get item params
func (o *PublicGetItemParams) SetPopulateBundle(populateBundle *bool) {
	o.PopulateBundle = populateBundle
}

// WithRegion adds the region to the public get item params
func (o *PublicGetItemParams) WithRegion(region *string) *PublicGetItemParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the public get item params
func (o *PublicGetItemParams) SetRegion(region *string) {
	o.Region = region
}

// WithStoreID adds the storeID to the public get item params
func (o *PublicGetItemParams) WithStoreID(storeID *string) *PublicGetItemParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the public get item params
func (o *PublicGetItemParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param itemId
	if err := r.SetPathParam("itemId", o.ItemID); err != nil {
		return err
	}

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

	if o.PopulateBundle != nil {

		// query param populateBundle
		var qrPopulateBundle bool
		if o.PopulateBundle != nil {
			qrPopulateBundle = *o.PopulateBundle
		}
		qPopulateBundle := swag.FormatBool(qrPopulateBundle)
		if qPopulateBundle != "" {
			if err := r.SetQueryParam("populateBundle", qPopulateBundle); err != nil {
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

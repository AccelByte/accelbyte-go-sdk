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

// NewPublicGetItemBySkuParams creates a new PublicGetItemBySkuParams object
// with the default values initialized.
func NewPublicGetItemBySkuParams() *PublicGetItemBySkuParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
	)
	return &PublicGetItemBySkuParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetItemBySkuParamsWithTimeout creates a new PublicGetItemBySkuParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetItemBySkuParamsWithTimeout(timeout time.Duration) *PublicGetItemBySkuParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
	)
	return &PublicGetItemBySkuParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,

		timeout: timeout,
	}
}

// NewPublicGetItemBySkuParamsWithContext creates a new PublicGetItemBySkuParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetItemBySkuParamsWithContext(ctx context.Context) *PublicGetItemBySkuParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
	)
	return &PublicGetItemBySkuParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,

		Context: ctx,
	}
}

// NewPublicGetItemBySkuParamsWithHTTPClient creates a new PublicGetItemBySkuParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetItemBySkuParamsWithHTTPClient(client *http.Client) *PublicGetItemBySkuParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
	)
	return &PublicGetItemBySkuParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,
		HTTPClient:             client,
	}
}

/*PublicGetItemBySkuParams contains all the parameters to send to the API endpoint
for the public get item by sku operation typically these are written to a http.Request
*/
type PublicGetItemBySkuParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
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
	/*Sku*/
	Sku string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithTimeout(timeout time.Duration) *PublicGetItemBySkuParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithContext(ctx context.Context) *PublicGetItemBySkuParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithHTTPClient(client *http.Client) *PublicGetItemBySkuParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetItemBySkuParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithNamespace(namespace string) *PublicGetItemBySkuParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAutoCalcEstimatedPrice adds the autoCalcEstimatedPrice to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithAutoCalcEstimatedPrice(autoCalcEstimatedPrice *bool) *PublicGetItemBySkuParams {
	o.SetAutoCalcEstimatedPrice(autoCalcEstimatedPrice)
	return o
}

// SetAutoCalcEstimatedPrice adds the autoCalcEstimatedPrice to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetAutoCalcEstimatedPrice(autoCalcEstimatedPrice *bool) {
	o.AutoCalcEstimatedPrice = autoCalcEstimatedPrice
}

// WithLanguage adds the language to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithLanguage(language *string) *PublicGetItemBySkuParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetLanguage(language *string) {
	o.Language = language
}

// WithRegion adds the region to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithRegion(region *string) *PublicGetItemBySkuParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetRegion(region *string) {
	o.Region = region
}

// WithStoreID adds the storeID to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithStoreID(storeID *string) *PublicGetItemBySkuParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithSku adds the sku to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithSku(sku string) *PublicGetItemBySkuParams {
	o.SetSku(sku)
	return o
}

// SetSku adds the sku to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetSku(sku string) {
	o.Sku = sku
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetItemBySkuParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param sku
	qrSku := o.Sku
	qSku := qrSku
	if qSku != "" {
		if err := r.SetQueryParam("sku", qSku); err != nil {
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

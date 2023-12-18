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

// Get the enum in PublicSearchItemsParams
const (
	PublicSearchItemsAPPConstant          = "APP"
	PublicSearchItemsBUNDLEConstant       = "BUNDLE"
	PublicSearchItemsCODEConstant         = "CODE"
	PublicSearchItemsCOINSConstant        = "COINS"
	PublicSearchItemsEXTENSIONConstant    = "EXTENSION"
	PublicSearchItemsINGAMEITEMConstant   = "INGAMEITEM"
	PublicSearchItemsLOOTBOXConstant      = "LOOTBOX"
	PublicSearchItemsMEDIAConstant        = "MEDIA"
	PublicSearchItemsOPTIONBOXConstant    = "OPTIONBOX"
	PublicSearchItemsSEASONConstant       = "SEASON"
	PublicSearchItemsSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewPublicSearchItemsParams creates a new PublicSearchItemsParams object
// with the default values initialized.
func NewPublicSearchItemsParams() *PublicSearchItemsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
	)
	return &PublicSearchItemsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSearchItemsParamsWithTimeout creates a new PublicSearchItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSearchItemsParamsWithTimeout(timeout time.Duration) *PublicSearchItemsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
	)
	return &PublicSearchItemsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicSearchItemsParamsWithContext creates a new PublicSearchItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSearchItemsParamsWithContext(ctx context.Context) *PublicSearchItemsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
	)
	return &PublicSearchItemsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,

		Context: ctx,
	}
}

// NewPublicSearchItemsParamsWithHTTPClient creates a new PublicSearchItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSearchItemsParamsWithHTTPClient(client *http.Client) *PublicSearchItemsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
	)
	return &PublicSearchItemsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,
		HTTPClient:             client,
	}
}

/*PublicSearchItemsParams contains all the parameters to send to the API endpoint
for the public search items operation typically these are written to a http.Request
*/
type PublicSearchItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*AutoCalcEstimatedPrice*/
	AutoCalcEstimatedPrice *bool
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
	/*Region*/
	Region *string
	/*StoreID
	  default is published store id

	*/
	StoreID *string
	/*Keyword*/
	Keyword string
	/*Language*/
	Language string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public search items params
func (o *PublicSearchItemsParams) WithTimeout(timeout time.Duration) *PublicSearchItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public search items params
func (o *PublicSearchItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public search items params
func (o *PublicSearchItemsParams) WithContext(ctx context.Context) *PublicSearchItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public search items params
func (o *PublicSearchItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public search items params
func (o *PublicSearchItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public search items params
func (o *PublicSearchItemsParams) WithHTTPClient(client *http.Client) *PublicSearchItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public search items params
func (o *PublicSearchItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public search items params
func (o *PublicSearchItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public search items params
func (o *PublicSearchItemsParams) WithNamespace(namespace string) *PublicSearchItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public search items params
func (o *PublicSearchItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAutoCalcEstimatedPrice adds the autoCalcEstimatedPrice to the public search items params
func (o *PublicSearchItemsParams) WithAutoCalcEstimatedPrice(autoCalcEstimatedPrice *bool) *PublicSearchItemsParams {
	o.SetAutoCalcEstimatedPrice(autoCalcEstimatedPrice)
	return o
}

// SetAutoCalcEstimatedPrice adds the autoCalcEstimatedPrice to the public search items params
func (o *PublicSearchItemsParams) SetAutoCalcEstimatedPrice(autoCalcEstimatedPrice *bool) {
	o.AutoCalcEstimatedPrice = autoCalcEstimatedPrice
}

// WithItemType adds the itemType to the public search items params
func (o *PublicSearchItemsParams) WithItemType(itemType *string) *PublicSearchItemsParams {
	o.SetItemType(itemType)
	return o
}

// SetItemType adds the itemType to the public search items params
func (o *PublicSearchItemsParams) SetItemType(itemType *string) {
	o.ItemType = itemType
}

// WithLimit adds the limit to the public search items params
func (o *PublicSearchItemsParams) WithLimit(limit *int32) *PublicSearchItemsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public search items params
func (o *PublicSearchItemsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the public search items params
func (o *PublicSearchItemsParams) WithOffset(offset *int32) *PublicSearchItemsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public search items params
func (o *PublicSearchItemsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithRegion adds the region to the public search items params
func (o *PublicSearchItemsParams) WithRegion(region *string) *PublicSearchItemsParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the public search items params
func (o *PublicSearchItemsParams) SetRegion(region *string) {
	o.Region = region
}

// WithStoreID adds the storeID to the public search items params
func (o *PublicSearchItemsParams) WithStoreID(storeID *string) *PublicSearchItemsParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the public search items params
func (o *PublicSearchItemsParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithKeyword adds the keyword to the public search items params
func (o *PublicSearchItemsParams) WithKeyword(keyword string) *PublicSearchItemsParams {
	o.SetKeyword(keyword)
	return o
}

// SetKeyword adds the keyword to the public search items params
func (o *PublicSearchItemsParams) SetKeyword(keyword string) {
	o.Keyword = keyword
}

// WithLanguage adds the language to the public search items params
func (o *PublicSearchItemsParams) WithLanguage(language string) *PublicSearchItemsParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public search items params
func (o *PublicSearchItemsParams) SetLanguage(language string) {
	o.Language = language
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSearchItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param keyword
	qrKeyword := o.Keyword
	qKeyword := qrKeyword
	if qKeyword != "" {
		if err := r.SetQueryParam("keyword", qKeyword); err != nil {
			return err
		}
	}

	// query param language
	qrLanguage := o.Language
	qLanguage := qrLanguage
	if qLanguage != "" {
		if err := r.SetQueryParam("language", qLanguage); err != nil {
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

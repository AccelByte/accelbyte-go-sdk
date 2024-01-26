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

// Get the enum in PublicQueryItemsParams
const (
	PublicQueryItemsDEMOConstant     = "DEMO"
	PublicQueryItemsDLCConstant      = "DLC"
	PublicQueryItemsGAMEConstant     = "GAME"
	PublicQueryItemsSOFTWAREConstant = "SOFTWARE"
)

// Get the enum in PublicQueryItemsParams
const (
	PublicQueryItemsAPPConstant          = "APP"
	PublicQueryItemsBUNDLEConstant       = "BUNDLE"
	PublicQueryItemsCODEConstant         = "CODE"
	PublicQueryItemsCOINSConstant        = "COINS"
	PublicQueryItemsEXTENSIONConstant    = "EXTENSION"
	PublicQueryItemsINGAMEITEMConstant   = "INGAMEITEM"
	PublicQueryItemsLOOTBOXConstant      = "LOOTBOX"
	PublicQueryItemsMEDIAConstant        = "MEDIA"
	PublicQueryItemsOPTIONBOXConstant    = "OPTIONBOX"
	PublicQueryItemsSEASONConstant       = "SEASON"
	PublicQueryItemsSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in PublicQueryItemsParams
const (
	PublicQueryItemsNameConstant             = "name"
	PublicQueryItemsNameAscConstant          = "name:asc"
	PublicQueryItemsNameDescConstant         = "name:desc"
	PublicQueryItemsCreatedAtConstant        = "createdAt"
	PublicQueryItemsCreatedAtAscConstant     = "createdAt:asc"
	PublicQueryItemsCreatedAtDescConstant    = "createdAt:desc"
	PublicQueryItemsUpdatedAtConstant        = "updatedAt"
	PublicQueryItemsUpdatedAtAscConstant     = "updatedAt:asc"
	PublicQueryItemsUpdatedAtDescConstant    = "updatedAt:desc"
	PublicQueryItemsDisplayOrderConstant     = "displayOrder"
	PublicQueryItemsDisplayOrderAscConstant  = "displayOrder:asc"
	PublicQueryItemsDisplayOrderDescConstant = "displayOrder:desc"
)

// NewPublicQueryItemsParams creates a new PublicQueryItemsParams object
// with the default values initialized.
func NewPublicQueryItemsParams() *PublicQueryItemsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
		includeSubCategoryItemDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
		sortByDefault                 = []string{"nameAsc", "displayOrderAsc"}
	)
	return &PublicQueryItemsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,
		IncludeSubCategoryItem: &includeSubCategoryItemDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,
		SortBy:                 sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicQueryItemsParamsWithTimeout creates a new PublicQueryItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicQueryItemsParamsWithTimeout(timeout time.Duration) *PublicQueryItemsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
		includeSubCategoryItemDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
		sortByDefault                 = []string{"nameAsc", "displayOrderAsc"}
	)
	return &PublicQueryItemsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,
		IncludeSubCategoryItem: &includeSubCategoryItemDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,
		SortBy:                 sortByDefault,

		timeout: timeout,
	}
}

// NewPublicQueryItemsParamsWithContext creates a new PublicQueryItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicQueryItemsParamsWithContext(ctx context.Context) *PublicQueryItemsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
		includeSubCategoryItemDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
		sortByDefault                 = []string{"nameAsc", "displayOrderAsc"}
	)
	return &PublicQueryItemsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,
		IncludeSubCategoryItem: &includeSubCategoryItemDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,
		SortBy:                 sortByDefault,

		Context: ctx,
	}
}

// NewPublicQueryItemsParamsWithHTTPClient creates a new PublicQueryItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicQueryItemsParamsWithHTTPClient(client *http.Client) *PublicQueryItemsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
		includeSubCategoryItemDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
		sortByDefault                 = []string{"nameAsc", "displayOrderAsc"}
	)
	return &PublicQueryItemsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,
		IncludeSubCategoryItem: &includeSubCategoryItemDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,
		SortBy:                 sortByDefault,
		HTTPClient:             client,
	}
}

/*PublicQueryItemsParams contains all the parameters to send to the API endpoint
for the public query items operation typically these are written to a http.Request
*/
type PublicQueryItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*AppType*/
	AppType *string
	/*AutoCalcEstimatedPrice*/
	AutoCalcEstimatedPrice *bool
	/*BaseAppID*/
	BaseAppID *string
	/*CategoryPath
	  category path

	*/
	CategoryPath *string
	/*Features
	  features, separate multiple value by commas parameter

	*/
	Features *string
	/*IncludeSubCategoryItem
	  default is false, only available when search by category path, it will return all of the items(includes sub category path) under this category path

	*/
	IncludeSubCategoryItem *bool
	/*ItemType*/
	ItemType *string
	/*Language*/
	Language *string
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
	/*SortBy
	  default is name:asc,displayOrder:asc, allow values: [name, name:asc, name:desc, createdAt, createdAt:asc, createdAt:desc, updatedAt, updatedAt:asc, updatedAt:desc, displayOrder, displayOrder:asc, displayOrder:desc],and support sort group, eg: sortBy=name:asc,createdAt:desc. Make sure to always use more than one sort if the first sort is not an unique value for example, if you wish to sort by displayOrder, make sure to include other sort such as name or createdAt after the first sort, eg: displayOrder:asc,name:asc

	*/
	SortBy []string
	/*StoreID
	  default is published store id

	*/
	StoreID *string
	/*Tags
	  tags, separate multiple value by commas parameter

	*/
	Tags *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public query items params
func (o *PublicQueryItemsParams) WithTimeout(timeout time.Duration) *PublicQueryItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public query items params
func (o *PublicQueryItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public query items params
func (o *PublicQueryItemsParams) WithContext(ctx context.Context) *PublicQueryItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public query items params
func (o *PublicQueryItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public query items params
func (o *PublicQueryItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public query items params
func (o *PublicQueryItemsParams) WithHTTPClient(client *http.Client) *PublicQueryItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public query items params
func (o *PublicQueryItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public query items params
func (o *PublicQueryItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicQueryItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public query items params
func (o *PublicQueryItemsParams) WithNamespace(namespace string) *PublicQueryItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public query items params
func (o *PublicQueryItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAppType adds the appType to the public query items params
func (o *PublicQueryItemsParams) WithAppType(appType *string) *PublicQueryItemsParams {
	o.SetAppType(appType)
	return o
}

// SetAppType adds the appType to the public query items params
func (o *PublicQueryItemsParams) SetAppType(appType *string) {
	o.AppType = appType
}

// WithAutoCalcEstimatedPrice adds the autoCalcEstimatedPrice to the public query items params
func (o *PublicQueryItemsParams) WithAutoCalcEstimatedPrice(autoCalcEstimatedPrice *bool) *PublicQueryItemsParams {
	o.SetAutoCalcEstimatedPrice(autoCalcEstimatedPrice)
	return o
}

// SetAutoCalcEstimatedPrice adds the autoCalcEstimatedPrice to the public query items params
func (o *PublicQueryItemsParams) SetAutoCalcEstimatedPrice(autoCalcEstimatedPrice *bool) {
	o.AutoCalcEstimatedPrice = autoCalcEstimatedPrice
}

// WithBaseAppID adds the baseAppID to the public query items params
func (o *PublicQueryItemsParams) WithBaseAppID(baseAppID *string) *PublicQueryItemsParams {
	o.SetBaseAppID(baseAppID)
	return o
}

// SetBaseAppID adds the baseAppId to the public query items params
func (o *PublicQueryItemsParams) SetBaseAppID(baseAppID *string) {
	o.BaseAppID = baseAppID
}

// WithCategoryPath adds the categoryPath to the public query items params
func (o *PublicQueryItemsParams) WithCategoryPath(categoryPath *string) *PublicQueryItemsParams {
	o.SetCategoryPath(categoryPath)
	return o
}

// SetCategoryPath adds the categoryPath to the public query items params
func (o *PublicQueryItemsParams) SetCategoryPath(categoryPath *string) {
	o.CategoryPath = categoryPath
}

// WithFeatures adds the features to the public query items params
func (o *PublicQueryItemsParams) WithFeatures(features *string) *PublicQueryItemsParams {
	o.SetFeatures(features)
	return o
}

// SetFeatures adds the features to the public query items params
func (o *PublicQueryItemsParams) SetFeatures(features *string) {
	o.Features = features
}

// WithIncludeSubCategoryItem adds the includeSubCategoryItem to the public query items params
func (o *PublicQueryItemsParams) WithIncludeSubCategoryItem(includeSubCategoryItem *bool) *PublicQueryItemsParams {
	o.SetIncludeSubCategoryItem(includeSubCategoryItem)
	return o
}

// SetIncludeSubCategoryItem adds the includeSubCategoryItem to the public query items params
func (o *PublicQueryItemsParams) SetIncludeSubCategoryItem(includeSubCategoryItem *bool) {
	o.IncludeSubCategoryItem = includeSubCategoryItem
}

// WithItemType adds the itemType to the public query items params
func (o *PublicQueryItemsParams) WithItemType(itemType *string) *PublicQueryItemsParams {
	o.SetItemType(itemType)
	return o
}

// SetItemType adds the itemType to the public query items params
func (o *PublicQueryItemsParams) SetItemType(itemType *string) {
	o.ItemType = itemType
}

// WithLanguage adds the language to the public query items params
func (o *PublicQueryItemsParams) WithLanguage(language *string) *PublicQueryItemsParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public query items params
func (o *PublicQueryItemsParams) SetLanguage(language *string) {
	o.Language = language
}

// WithLimit adds the limit to the public query items params
func (o *PublicQueryItemsParams) WithLimit(limit *int32) *PublicQueryItemsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public query items params
func (o *PublicQueryItemsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the public query items params
func (o *PublicQueryItemsParams) WithOffset(offset *int32) *PublicQueryItemsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public query items params
func (o *PublicQueryItemsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithRegion adds the region to the public query items params
func (o *PublicQueryItemsParams) WithRegion(region *string) *PublicQueryItemsParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the public query items params
func (o *PublicQueryItemsParams) SetRegion(region *string) {
	o.Region = region
}

// WithSortBy adds the sortBy to the public query items params
func (o *PublicQueryItemsParams) WithSortBy(sortBy []string) *PublicQueryItemsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the public query items params
func (o *PublicQueryItemsParams) SetSortBy(sortBy []string) {
	o.SortBy = sortBy
}

// WithStoreID adds the storeID to the public query items params
func (o *PublicQueryItemsParams) WithStoreID(storeID *string) *PublicQueryItemsParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the public query items params
func (o *PublicQueryItemsParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithTags adds the tags to the public query items params
func (o *PublicQueryItemsParams) WithTags(tags *string) *PublicQueryItemsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the public query items params
func (o *PublicQueryItemsParams) SetTags(tags *string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *PublicQueryItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.AppType != nil {

		// query param appType
		var qrAppType string
		if o.AppType != nil {
			qrAppType = *o.AppType
		}
		qAppType := qrAppType
		if qAppType != "" {
			if err := r.SetQueryParam("appType", qAppType); err != nil {
				return err
			}
		}

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

	if o.BaseAppID != nil {

		// query param baseAppId
		var qrBaseAppID string
		if o.BaseAppID != nil {
			qrBaseAppID = *o.BaseAppID
		}
		qBaseAppID := qrBaseAppID
		if qBaseAppID != "" {
			if err := r.SetQueryParam("baseAppId", qBaseAppID); err != nil {
				return err
			}
		}

	}

	if o.CategoryPath != nil {

		// query param categoryPath
		var qrCategoryPath string
		if o.CategoryPath != nil {
			qrCategoryPath = *o.CategoryPath
		}
		qCategoryPath := qrCategoryPath
		if qCategoryPath != "" {
			if err := r.SetQueryParam("categoryPath", qCategoryPath); err != nil {
				return err
			}
		}

	}

	if o.Features != nil {

		// query param features
		var qrFeatures string
		if o.Features != nil {
			qrFeatures = *o.Features
		}
		qFeatures := qrFeatures
		if qFeatures != "" {
			if err := r.SetQueryParam("features", qFeatures); err != nil {
				return err
			}
		}

	}

	if o.IncludeSubCategoryItem != nil {

		// query param includeSubCategoryItem
		var qrIncludeSubCategoryItem bool
		if o.IncludeSubCategoryItem != nil {
			qrIncludeSubCategoryItem = *o.IncludeSubCategoryItem
		}
		qIncludeSubCategoryItem := swag.FormatBool(qrIncludeSubCategoryItem)
		if qIncludeSubCategoryItem != "" {
			if err := r.SetQueryParam("includeSubCategoryItem", qIncludeSubCategoryItem); err != nil {
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

	valuesSortBy := o.SortBy

	joinedSortBy := swag.JoinByFormat(valuesSortBy, "csv")
	// query array param sortBy
	if err := r.SetQueryParam("sortBy", joinedSortBy...); err != nil {
		return err
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

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

// Deprecated: 2025-07-16 - Use QueryItemsV2AppType<EnumValue>Constant instead.
// Get the enum in QueryItemsV2Params
const (
	QueryItemsV2DEMOConstant     = "DEMO"
	QueryItemsV2DLCConstant      = "DLC"
	QueryItemsV2GAMEConstant     = "GAME"
	QueryItemsV2SOFTWAREConstant = "SOFTWARE"
)

// Deprecated: 2025-07-16 - Use QueryItemsV2ItemStatus<EnumValue>Constant instead.
// Get the enum in QueryItemsV2Params
const (
	QueryItemsV2ACTIVEConstant   = "ACTIVE"
	QueryItemsV2INACTIVEConstant = "INACTIVE"
)

// Deprecated: 2025-07-16 - Use QueryItemsV2ItemType<EnumValue>Constant instead.
// Get the enum in QueryItemsV2Params
const (
	QueryItemsV2APPConstant          = "APP"
	QueryItemsV2BUNDLEConstant       = "BUNDLE"
	QueryItemsV2CODEConstant         = "CODE"
	QueryItemsV2COINSConstant        = "COINS"
	QueryItemsV2EXTENSIONConstant    = "EXTENSION"
	QueryItemsV2INGAMEITEMConstant   = "INGAMEITEM"
	QueryItemsV2LOOTBOXConstant      = "LOOTBOX"
	QueryItemsV2MEDIAConstant        = "MEDIA"
	QueryItemsV2OPTIONBOXConstant    = "OPTIONBOX"
	QueryItemsV2SEASONConstant       = "SEASON"
	QueryItemsV2SUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Deprecated: 2025-07-16 - Use QueryItemsV2SortBy<EnumValue>Constant instead.
// Get the enum in QueryItemsV2Params
const (
	QueryItemsV2NameConstant             = "name"
	QueryItemsV2NameAscConstant          = "name:asc"
	QueryItemsV2NameDescConstant         = "name:desc"
	QueryItemsV2CreatedAtConstant        = "createdAt"
	QueryItemsV2CreatedAtAscConstant     = "createdAt:asc"
	QueryItemsV2CreatedAtDescConstant    = "createdAt:desc"
	QueryItemsV2UpdatedAtConstant        = "updatedAt"
	QueryItemsV2UpdatedAtAscConstant     = "updatedAt:asc"
	QueryItemsV2UpdatedAtDescConstant    = "updatedAt:desc"
	QueryItemsV2DisplayOrderConstant     = "displayOrder"
	QueryItemsV2DisplayOrderAscConstant  = "displayOrder:asc"
	QueryItemsV2DisplayOrderDescConstant = "displayOrder:desc"
)

// Get the enum in QueryItemsV2Params
const (
	QueryItemsV2AppTypeDEMOConstant     = "DEMO"
	QueryItemsV2AppTypeDLCConstant      = "DLC"
	QueryItemsV2AppTypeGAMEConstant     = "GAME"
	QueryItemsV2AppTypeSOFTWAREConstant = "SOFTWARE"
)

// Get the enum in QueryItemsV2Params
const (
	QueryItemsV2ItemStatusACTIVEConstant   = "ACTIVE"
	QueryItemsV2ItemStatusINACTIVEConstant = "INACTIVE"
)

// Get the enum in QueryItemsV2Params
const (
	QueryItemsV2ItemTypeAPPConstant          = "APP"
	QueryItemsV2ItemTypeBUNDLEConstant       = "BUNDLE"
	QueryItemsV2ItemTypeCODEConstant         = "CODE"
	QueryItemsV2ItemTypeCOINSConstant        = "COINS"
	QueryItemsV2ItemTypeEXTENSIONConstant    = "EXTENSION"
	QueryItemsV2ItemTypeINGAMEITEMConstant   = "INGAMEITEM"
	QueryItemsV2ItemTypeLOOTBOXConstant      = "LOOTBOX"
	QueryItemsV2ItemTypeMEDIAConstant        = "MEDIA"
	QueryItemsV2ItemTypeOPTIONBOXConstant    = "OPTIONBOX"
	QueryItemsV2ItemTypeSEASONConstant       = "SEASON"
	QueryItemsV2ItemTypeSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in QueryItemsV2Params
const (
	QueryItemsV2SortByNameConstant             = "name"
	QueryItemsV2SortByNameAscConstant          = "name:asc"
	QueryItemsV2SortByNameDescConstant         = "name:desc"
	QueryItemsV2SortByCreatedAtConstant        = "createdAt"
	QueryItemsV2SortByCreatedAtAscConstant     = "createdAt:asc"
	QueryItemsV2SortByCreatedAtDescConstant    = "createdAt:desc"
	QueryItemsV2SortByUpdatedAtConstant        = "updatedAt"
	QueryItemsV2SortByUpdatedAtAscConstant     = "updatedAt:asc"
	QueryItemsV2SortByUpdatedAtDescConstant    = "updatedAt:desc"
	QueryItemsV2SortByDisplayOrderConstant     = "displayOrder"
	QueryItemsV2SortByDisplayOrderAscConstant  = "displayOrder:asc"
	QueryItemsV2SortByDisplayOrderDescConstant = "displayOrder:desc"
)

// NewQueryItemsV2Params creates a new QueryItemsV2Params object
// with the default values initialized.
func NewQueryItemsV2Params() *QueryItemsV2Params {
	var (
		includeSubCategoryItemDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
		sortByDefault                 = []string{"nameAsc", "displayOrderAsc"}
		withTotalDefault              = bool(false)
	)
	return &QueryItemsV2Params{
		IncludeSubCategoryItem: &includeSubCategoryItemDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,
		SortBy:                 sortByDefault,
		WithTotal:              &withTotalDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryItemsV2ParamsWithTimeout creates a new QueryItemsV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryItemsV2ParamsWithTimeout(timeout time.Duration) *QueryItemsV2Params {
	var (
		includeSubCategoryItemDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
		sortByDefault                 = []string{"nameAsc", "displayOrderAsc"}
		withTotalDefault              = bool(false)
	)
	return &QueryItemsV2Params{
		IncludeSubCategoryItem: &includeSubCategoryItemDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,
		SortBy:                 sortByDefault,
		WithTotal:              &withTotalDefault,

		timeout: timeout,
	}
}

// NewQueryItemsV2ParamsWithContext creates a new QueryItemsV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewQueryItemsV2ParamsWithContext(ctx context.Context) *QueryItemsV2Params {
	var (
		includeSubCategoryItemDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
		sortByDefault                 = []string{"nameAsc", "displayOrderAsc"}
		withTotalDefault              = bool(false)
	)
	return &QueryItemsV2Params{
		IncludeSubCategoryItem: &includeSubCategoryItemDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,
		SortBy:                 sortByDefault,
		WithTotal:              &withTotalDefault,

		Context: ctx,
	}
}

// NewQueryItemsV2ParamsWithHTTPClient creates a new QueryItemsV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryItemsV2ParamsWithHTTPClient(client *http.Client) *QueryItemsV2Params {
	var (
		includeSubCategoryItemDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
		sortByDefault                 = []string{"nameAsc", "displayOrderAsc"}
		withTotalDefault              = bool(false)
	)
	return &QueryItemsV2Params{
		IncludeSubCategoryItem: &includeSubCategoryItemDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,
		SortBy:                 sortByDefault,
		WithTotal:              &withTotalDefault,
		HTTPClient:             client,
	}
}

/*QueryItemsV2Params contains all the parameters to send to the API endpoint
for the query items v2 operation typically these are written to a http.Request
*/
type QueryItemsV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*AppType*/
	AppType *string
	/*AvailableDate
	  allowed format: \d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z , filter date include(purchaseAt, expireAt)

	*/
	AvailableDate *string
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
	/*ItemName
	  itemName, fuzzy matching

	*/
	ItemName *string
	/*ItemStatus*/
	ItemStatus *string
	/*ItemType*/
	ItemType []string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset
	  offset

	*/
	Offset *int32
	/*Region
	  exist in region

	*/
	Region *string
	/*SectionExclusive*/
	SectionExclusive *bool
	/*SortBy
	  default is name:asc,displayOrder:asc, allow values: [name, name:asc, name:desc, createdAt, createdAt:asc, createdAt:desc, updatedAt, updatedAt:asc, updatedAt:desc, displayOrder, displayOrder:asc, displayOrder:desc],and support sort group, eg: sortBy=name:asc,createdAt:desc. Make sure to always use more than one sort if the first sort is not an unique valuefor example, if you wish to sort by displayOrder, make sure to include other sort such as name or createdAt after the first sort, eg: displayOrder:asc,name:asc

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
	/*TargetNamespace
	  targetNamespace

	*/
	TargetNamespace *string
	/*WithTotal
	  true means include total count of items in response body

	*/
	WithTotal *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query items v2 params
func (o *QueryItemsV2Params) WithTimeout(timeout time.Duration) *QueryItemsV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query items v2 params
func (o *QueryItemsV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query items v2 params
func (o *QueryItemsV2Params) WithContext(ctx context.Context) *QueryItemsV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query items v2 params
func (o *QueryItemsV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query items v2 params
func (o *QueryItemsV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query items v2 params
func (o *QueryItemsV2Params) WithHTTPClient(client *http.Client) *QueryItemsV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query items v2 params
func (o *QueryItemsV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query items v2 params
func (o *QueryItemsV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryItemsV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query items v2 params
func (o *QueryItemsV2Params) WithNamespace(namespace string) *QueryItemsV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query items v2 params
func (o *QueryItemsV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAppType adds the appType to the query items v2 params
func (o *QueryItemsV2Params) WithAppType(appType *string) *QueryItemsV2Params {
	o.SetAppType(appType)
	return o
}

// SetAppType adds the appType to the query items v2 params
func (o *QueryItemsV2Params) SetAppType(appType *string) {
	o.AppType = appType
}

// WithAvailableDate adds the availableDate to the query items v2 params
func (o *QueryItemsV2Params) WithAvailableDate(availableDate *string) *QueryItemsV2Params {
	o.SetAvailableDate(availableDate)
	return o
}

// SetAvailableDate adds the availableDate to the query items v2 params
func (o *QueryItemsV2Params) SetAvailableDate(availableDate *string) {
	o.AvailableDate = availableDate
}

// WithBaseAppID adds the baseAppID to the query items v2 params
func (o *QueryItemsV2Params) WithBaseAppID(baseAppID *string) *QueryItemsV2Params {
	o.SetBaseAppID(baseAppID)
	return o
}

// SetBaseAppID adds the baseAppId to the query items v2 params
func (o *QueryItemsV2Params) SetBaseAppID(baseAppID *string) {
	o.BaseAppID = baseAppID
}

// WithCategoryPath adds the categoryPath to the query items v2 params
func (o *QueryItemsV2Params) WithCategoryPath(categoryPath *string) *QueryItemsV2Params {
	o.SetCategoryPath(categoryPath)
	return o
}

// SetCategoryPath adds the categoryPath to the query items v2 params
func (o *QueryItemsV2Params) SetCategoryPath(categoryPath *string) {
	o.CategoryPath = categoryPath
}

// WithFeatures adds the features to the query items v2 params
func (o *QueryItemsV2Params) WithFeatures(features *string) *QueryItemsV2Params {
	o.SetFeatures(features)
	return o
}

// SetFeatures adds the features to the query items v2 params
func (o *QueryItemsV2Params) SetFeatures(features *string) {
	o.Features = features
}

// WithIncludeSubCategoryItem adds the includeSubCategoryItem to the query items v2 params
func (o *QueryItemsV2Params) WithIncludeSubCategoryItem(includeSubCategoryItem *bool) *QueryItemsV2Params {
	o.SetIncludeSubCategoryItem(includeSubCategoryItem)
	return o
}

// SetIncludeSubCategoryItem adds the includeSubCategoryItem to the query items v2 params
func (o *QueryItemsV2Params) SetIncludeSubCategoryItem(includeSubCategoryItem *bool) {
	o.IncludeSubCategoryItem = includeSubCategoryItem
}

// WithItemName adds the itemName to the query items v2 params
func (o *QueryItemsV2Params) WithItemName(itemName *string) *QueryItemsV2Params {
	o.SetItemName(itemName)
	return o
}

// SetItemName adds the itemName to the query items v2 params
func (o *QueryItemsV2Params) SetItemName(itemName *string) {
	o.ItemName = itemName
}

// WithItemStatus adds the itemStatus to the query items v2 params
func (o *QueryItemsV2Params) WithItemStatus(itemStatus *string) *QueryItemsV2Params {
	o.SetItemStatus(itemStatus)
	return o
}

// SetItemStatus adds the itemStatus to the query items v2 params
func (o *QueryItemsV2Params) SetItemStatus(itemStatus *string) {
	o.ItemStatus = itemStatus
}

// WithItemType adds the itemType to the query items v2 params
func (o *QueryItemsV2Params) WithItemType(itemType []string) *QueryItemsV2Params {
	o.SetItemType(itemType)
	return o
}

// SetItemType adds the itemType to the query items v2 params
func (o *QueryItemsV2Params) SetItemType(itemType []string) {
	o.ItemType = itemType
}

// WithLimit adds the limit to the query items v2 params
func (o *QueryItemsV2Params) WithLimit(limit *int32) *QueryItemsV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query items v2 params
func (o *QueryItemsV2Params) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query items v2 params
func (o *QueryItemsV2Params) WithOffset(offset *int32) *QueryItemsV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query items v2 params
func (o *QueryItemsV2Params) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithRegion adds the region to the query items v2 params
func (o *QueryItemsV2Params) WithRegion(region *string) *QueryItemsV2Params {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the query items v2 params
func (o *QueryItemsV2Params) SetRegion(region *string) {
	o.Region = region
}

// WithSectionExclusive adds the sectionExclusive to the query items v2 params
func (o *QueryItemsV2Params) WithSectionExclusive(sectionExclusive *bool) *QueryItemsV2Params {
	o.SetSectionExclusive(sectionExclusive)
	return o
}

// SetSectionExclusive adds the sectionExclusive to the query items v2 params
func (o *QueryItemsV2Params) SetSectionExclusive(sectionExclusive *bool) {
	o.SectionExclusive = sectionExclusive
}

// WithSortBy adds the sortBy to the query items v2 params
func (o *QueryItemsV2Params) WithSortBy(sortBy []string) *QueryItemsV2Params {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the query items v2 params
func (o *QueryItemsV2Params) SetSortBy(sortBy []string) {
	o.SortBy = sortBy
}

// WithStoreID adds the storeID to the query items v2 params
func (o *QueryItemsV2Params) WithStoreID(storeID *string) *QueryItemsV2Params {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the query items v2 params
func (o *QueryItemsV2Params) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithTags adds the tags to the query items v2 params
func (o *QueryItemsV2Params) WithTags(tags *string) *QueryItemsV2Params {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the query items v2 params
func (o *QueryItemsV2Params) SetTags(tags *string) {
	o.Tags = tags
}

// WithTargetNamespace adds the targetNamespace to the query items v2 params
func (o *QueryItemsV2Params) WithTargetNamespace(targetNamespace *string) *QueryItemsV2Params {
	o.SetTargetNamespace(targetNamespace)
	return o
}

// SetTargetNamespace adds the targetNamespace to the query items v2 params
func (o *QueryItemsV2Params) SetTargetNamespace(targetNamespace *string) {
	o.TargetNamespace = targetNamespace
}

// WithWithTotal_ adds the withTotal to the query items v2 params
func (o *QueryItemsV2Params) WithWithTotal_(withTotal *bool) *QueryItemsV2Params {
	o.SetWithTotal(withTotal)
	return o
}

// SetWithTotal adds the withTotal to the query items v2 params
func (o *QueryItemsV2Params) SetWithTotal(withTotal *bool) {
	o.WithTotal = withTotal
}

// WriteToRequest writes these params to a swagger request
func (o *QueryItemsV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.AvailableDate != nil {

		// query param availableDate
		var qrAvailableDate string
		if o.AvailableDate != nil {
			qrAvailableDate = *o.AvailableDate
		}
		qAvailableDate := qrAvailableDate
		if qAvailableDate != "" {
			if err := r.SetQueryParam("availableDate", qAvailableDate); err != nil {
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

	if o.ItemName != nil {

		// query param itemName
		var qrItemName string
		if o.ItemName != nil {
			qrItemName = *o.ItemName
		}
		qItemName := qrItemName
		if qItemName != "" {
			if err := r.SetQueryParam("itemName", qItemName); err != nil {
				return err
			}
		}

	}

	if o.ItemStatus != nil {

		// query param itemStatus
		var qrItemStatus string
		if o.ItemStatus != nil {
			qrItemStatus = *o.ItemStatus
		}
		qItemStatus := qrItemStatus
		if qItemStatus != "" {
			if err := r.SetQueryParam("itemStatus", qItemStatus); err != nil {
				return err
			}
		}

	}

	valuesItemType := o.ItemType

	joinedItemType := swag.JoinByFormat(valuesItemType, "multi")
	// query array param itemType
	if err := r.SetQueryParam("itemType", joinedItemType...); err != nil {
		return err
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

	if o.SectionExclusive != nil {

		// query param sectionExclusive
		var qrSectionExclusive bool
		if o.SectionExclusive != nil {
			qrSectionExclusive = *o.SectionExclusive
		}
		qSectionExclusive := swag.FormatBool(qrSectionExclusive)
		if qSectionExclusive != "" {
			if err := r.SetQueryParam("sectionExclusive", qSectionExclusive); err != nil {
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

	if o.TargetNamespace != nil {

		// query param targetNamespace
		var qrTargetNamespace string
		if o.TargetNamespace != nil {
			qrTargetNamespace = *o.TargetNamespace
		}
		qTargetNamespace := qrTargetNamespace
		if qTargetNamespace != "" {
			if err := r.SetQueryParam("targetNamespace", qTargetNamespace); err != nil {
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

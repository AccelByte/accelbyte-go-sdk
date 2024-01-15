// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package item

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new item API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for item API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListItemTypeConfigs(params *ListItemTypeConfigsParams, authInfo runtime.ClientAuthInfoWriter) (*ListItemTypeConfigsOK, error)
	ListItemTypeConfigsShort(params *ListItemTypeConfigsParams, authInfo runtime.ClientAuthInfoWriter) (*ListItemTypeConfigsOK, error)
	CreateItemTypeConfig(params *CreateItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateItemTypeConfigCreated, *CreateItemTypeConfigBadRequest, *CreateItemTypeConfigConflict, *CreateItemTypeConfigUnprocessableEntity, error)
	CreateItemTypeConfigShort(params *CreateItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateItemTypeConfigCreated, error)
	SearchItemTypeConfig(params *SearchItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*SearchItemTypeConfigOK, *SearchItemTypeConfigNotFound, error)
	SearchItemTypeConfigShort(params *SearchItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*SearchItemTypeConfigOK, error)
	GetItemTypeConfig(params *GetItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemTypeConfigOK, *GetItemTypeConfigNotFound, error)
	GetItemTypeConfigShort(params *GetItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemTypeConfigOK, error)
	UpdateItemTypeConfig(params *UpdateItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemTypeConfigOK, *UpdateItemTypeConfigNotFound, *UpdateItemTypeConfigConflict, *UpdateItemTypeConfigUnprocessableEntity, error)
	UpdateItemTypeConfigShort(params *UpdateItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemTypeConfigOK, error)
	DeleteItemTypeConfig(params *DeleteItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteItemTypeConfigNoContent, *DeleteItemTypeConfigNotFound, error)
	DeleteItemTypeConfigShort(params *DeleteItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteItemTypeConfigNoContent, error)
	SyncInGameItem(params *SyncInGameItemParams, authInfo runtime.ClientAuthInfoWriter) (*SyncInGameItemOK, *SyncInGameItemBadRequest, *SyncInGameItemNotFound, *SyncInGameItemConflict, *SyncInGameItemUnprocessableEntity, error)
	SyncInGameItemShort(params *SyncInGameItemParams, authInfo runtime.ClientAuthInfoWriter) (*SyncInGameItemOK, error)
	CreateItem(params *CreateItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateItemCreated, *CreateItemBadRequest, *CreateItemNotFound, *CreateItemConflict, *CreateItemUnprocessableEntity, error)
	CreateItemShort(params *CreateItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateItemCreated, error)
	GetItemByAppID(params *GetItemByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemByAppIDOK, *GetItemByAppIDNotFound, error)
	GetItemByAppIDShort(params *GetItemByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemByAppIDOK, error)
	QueryItems(params *QueryItemsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryItemsOK, *QueryItemsNotFound, *QueryItemsUnprocessableEntity, error)
	QueryItemsShort(params *QueryItemsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryItemsOK, error)
	ListBasicItemsByFeatures(params *ListBasicItemsByFeaturesParams, authInfo runtime.ClientAuthInfoWriter) (*ListBasicItemsByFeaturesOK, error)
	ListBasicItemsByFeaturesShort(params *ListBasicItemsByFeaturesParams, authInfo runtime.ClientAuthInfoWriter) (*ListBasicItemsByFeaturesOK, error)
	GetItems(params *GetItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemsOK, *GetItemsNotFound, error)
	GetItemsShort(params *GetItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemsOK, error)
	GetItemBySku(params *GetItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemBySkuOK, *GetItemBySkuNotFound, error)
	GetItemBySkuShort(params *GetItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemBySkuOK, error)
	GetLocaleItemBySku(params *GetLocaleItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocaleItemBySkuOK, *GetLocaleItemBySkuNotFound, error)
	GetLocaleItemBySkuShort(params *GetLocaleItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocaleItemBySkuOK, error)
	GetEstimatedPrice(params *GetEstimatedPriceParams, authInfo runtime.ClientAuthInfoWriter) (*GetEstimatedPriceOK, *GetEstimatedPriceNotFound, error)
	GetEstimatedPriceShort(params *GetEstimatedPriceParams, authInfo runtime.ClientAuthInfoWriter) (*GetEstimatedPriceOK, error)
	GetItemIDBySku(params *GetItemIDBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemIDBySkuOK, *GetItemIDBySkuNotFound, error)
	GetItemIDBySkuShort(params *GetItemIDBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemIDBySkuOK, error)
	GetBulkItemIDBySkus(params *GetBulkItemIDBySkusParams, authInfo runtime.ClientAuthInfoWriter) (*GetBulkItemIDBySkusOK, error)
	GetBulkItemIDBySkusShort(params *GetBulkItemIDBySkusParams, authInfo runtime.ClientAuthInfoWriter) (*GetBulkItemIDBySkusOK, error)
	BulkGetLocaleItems(params *BulkGetLocaleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetLocaleItemsOK, *BulkGetLocaleItemsNotFound, error)
	BulkGetLocaleItemsShort(params *BulkGetLocaleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetLocaleItemsOK, error)
	GetAvailablePredicateTypes(params *GetAvailablePredicateTypesParams, authInfo runtime.ClientAuthInfoWriter) (*GetAvailablePredicateTypesOK, *GetAvailablePredicateTypesNotFound, error)
	GetAvailablePredicateTypesShort(params *GetAvailablePredicateTypesParams, authInfo runtime.ClientAuthInfoWriter) (*GetAvailablePredicateTypesOK, error)
	ValidateItemPurchaseCondition(params *ValidateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*ValidateItemPurchaseConditionOK, *ValidateItemPurchaseConditionUnprocessableEntity, error)
	ValidateItemPurchaseConditionShort(params *ValidateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*ValidateItemPurchaseConditionOK, error)
	BulkUpdateRegionData(params *BulkUpdateRegionDataParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateRegionDataNoContent, *BulkUpdateRegionDataBadRequest, *BulkUpdateRegionDataNotFound, *BulkUpdateRegionDataConflict, *BulkUpdateRegionDataUnprocessableEntity, error)
	BulkUpdateRegionDataShort(params *BulkUpdateRegionDataParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateRegionDataNoContent, error)
	SearchItems(params *SearchItemsParams, authInfo runtime.ClientAuthInfoWriter) (*SearchItemsOK, *SearchItemsNotFound, error)
	SearchItemsShort(params *SearchItemsParams, authInfo runtime.ClientAuthInfoWriter) (*SearchItemsOK, error)
	QueryUncategorizedItems(params *QueryUncategorizedItemsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUncategorizedItemsOK, *QueryUncategorizedItemsNotFound, *QueryUncategorizedItemsUnprocessableEntity, error)
	QueryUncategorizedItemsShort(params *QueryUncategorizedItemsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUncategorizedItemsOK, error)
	GetItem(params *GetItemParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemOK, *GetItemNotFound, error)
	GetItemShort(params *GetItemParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemOK, error)
	UpdateItem(params *UpdateItemParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemOK, *UpdateItemBadRequest, *UpdateItemNotFound, *UpdateItemConflict, *UpdateItemUnprocessableEntity, error)
	UpdateItemShort(params *UpdateItemParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemOK, error)
	DeleteItem(params *DeleteItemParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteItemNoContent, *DeleteItemNotFound, error)
	DeleteItemShort(params *DeleteItemParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteItemNoContent, error)
	AcquireItem(params *AcquireItemParams, authInfo runtime.ClientAuthInfoWriter) (*AcquireItemOK, *AcquireItemNotFound, error)
	AcquireItemShort(params *AcquireItemParams, authInfo runtime.ClientAuthInfoWriter) (*AcquireItemOK, error)
	GetApp(params *GetAppParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppOK, error)
	GetAppShort(params *GetAppParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppOK, error)
	UpdateApp(params *UpdateAppParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppOK, *UpdateAppNotFound, *UpdateAppConflict, *UpdateAppUnprocessableEntity, error)
	UpdateAppShort(params *UpdateAppParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppOK, error)
	DisableItem(params *DisableItemParams, authInfo runtime.ClientAuthInfoWriter) (*DisableItemOK, *DisableItemNotFound, *DisableItemConflict, error)
	DisableItemShort(params *DisableItemParams, authInfo runtime.ClientAuthInfoWriter) (*DisableItemOK, error)
	GetItemDynamicData(params *GetItemDynamicDataParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemDynamicDataOK, *GetItemDynamicDataNotFound, error)
	GetItemDynamicDataShort(params *GetItemDynamicDataParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemDynamicDataOK, error)
	EnableItem(params *EnableItemParams, authInfo runtime.ClientAuthInfoWriter) (*EnableItemOK, *EnableItemNotFound, *EnableItemConflict, error)
	EnableItemShort(params *EnableItemParams, authInfo runtime.ClientAuthInfoWriter) (*EnableItemOK, error)
	FeatureItem(params *FeatureItemParams, authInfo runtime.ClientAuthInfoWriter) (*FeatureItemOK, *FeatureItemNotFound, *FeatureItemConflict, error)
	FeatureItemShort(params *FeatureItemParams, authInfo runtime.ClientAuthInfoWriter) (*FeatureItemOK, error)
	DefeatureItem(params *DefeatureItemParams, authInfo runtime.ClientAuthInfoWriter) (*DefeatureItemOK, *DefeatureItemNotFound, *DefeatureItemConflict, error)
	DefeatureItemShort(params *DefeatureItemParams, authInfo runtime.ClientAuthInfoWriter) (*DefeatureItemOK, error)
	GetLocaleItem(params *GetLocaleItemParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocaleItemOK, *GetLocaleItemNotFound, error)
	GetLocaleItemShort(params *GetLocaleItemParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocaleItemOK, error)
	UpdateItemPurchaseCondition(params *UpdateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemPurchaseConditionOK, *UpdateItemPurchaseConditionBadRequest, *UpdateItemPurchaseConditionNotFound, *UpdateItemPurchaseConditionConflict, *UpdateItemPurchaseConditionUnprocessableEntity, error)
	UpdateItemPurchaseConditionShort(params *UpdateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemPurchaseConditionOK, error)
	ReturnItem(params *ReturnItemParams, authInfo runtime.ClientAuthInfoWriter) (*ReturnItemNoContent, *ReturnItemNotFound, *ReturnItemUnprocessableEntity, error)
	ReturnItemShort(params *ReturnItemParams, authInfo runtime.ClientAuthInfoWriter) (*ReturnItemNoContent, error)
	PublicGetItemByAppID(params *PublicGetItemByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemByAppIDOK, *PublicGetItemByAppIDNotFound, error)
	PublicGetItemByAppIDShort(params *PublicGetItemByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemByAppIDOK, error)
	PublicQueryItems(params *PublicQueryItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryItemsOK, *PublicQueryItemsNotFound, *PublicQueryItemsUnprocessableEntity, error)
	PublicQueryItemsShort(params *PublicQueryItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryItemsOK, error)
	PublicGetItemBySku(params *PublicGetItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemBySkuOK, *PublicGetItemBySkuNotFound, error)
	PublicGetItemBySkuShort(params *PublicGetItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemBySkuOK, error)
	PublicGetEstimatedPrice(params *PublicGetEstimatedPriceParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetEstimatedPriceOK, *PublicGetEstimatedPriceNotFound, error)
	PublicGetEstimatedPriceShort(params *PublicGetEstimatedPriceParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetEstimatedPriceOK, error)
	PublicBulkGetItems(params *PublicBulkGetItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetItemsOK, *PublicBulkGetItemsNotFound, error)
	PublicBulkGetItemsShort(params *PublicBulkGetItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetItemsOK, error)
	PublicValidateItemPurchaseCondition(params *PublicValidateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateItemPurchaseConditionOK, *PublicValidateItemPurchaseConditionUnprocessableEntity, error)
	PublicValidateItemPurchaseConditionShort(params *PublicValidateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateItemPurchaseConditionOK, error)
	PublicSearchItems(params *PublicSearchItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchItemsOK, *PublicSearchItemsNotFound, error)
	PublicSearchItemsShort(params *PublicSearchItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchItemsOK, error)
	PublicGetApp(params *PublicGetAppParams) (*PublicGetAppOK, *PublicGetAppNotFound, error)
	PublicGetAppShort(params *PublicGetAppParams) (*PublicGetAppOK, error)
	PublicGetItemDynamicData(params *PublicGetItemDynamicDataParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemDynamicDataOK, *PublicGetItemDynamicDataNotFound, error)
	PublicGetItemDynamicDataShort(params *PublicGetItemDynamicDataParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemDynamicDataOK, error)
	PublicGetItem(params *PublicGetItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemOK, *PublicGetItemNotFound, error)
	PublicGetItemShort(params *PublicGetItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemOK, error)
	QueryItems1(params *QueryItems1Params, authInfo runtime.ClientAuthInfoWriter) (*QueryItems1OK, *QueryItems1NotFound, *QueryItems1UnprocessableEntity, error)
	QueryItems1Short(params *QueryItems1Params, authInfo runtime.ClientAuthInfoWriter) (*QueryItems1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ListItemTypeConfigsShort instead.

ListItemTypeConfigs get all item type configs
 [Not Supported Yet In Starter] This API is used to get all item type configs.

Other detail info:

  * Required permission : resource="ADMIN:ITEM:CONFIG", action=2 (READ)
  *  Returns : the list of items
*/
func (a *Client) ListItemTypeConfigs(params *ListItemTypeConfigsParams, authInfo runtime.ClientAuthInfoWriter) (*ListItemTypeConfigsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListItemTypeConfigsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listItemTypeConfigs",
		Method:             "GET",
		PathPattern:        "/platform/admin/items/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListItemTypeConfigsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListItemTypeConfigsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListItemTypeConfigsShort get all item type configs
 [Not Supported Yet In Starter] This API is used to get all item type configs.

Other detail info:

  * Required permission : resource="ADMIN:ITEM:CONFIG", action=2 (READ)
  *  Returns : the list of items
*/
func (a *Client) ListItemTypeConfigsShort(params *ListItemTypeConfigsParams, authInfo runtime.ClientAuthInfoWriter) (*ListItemTypeConfigsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListItemTypeConfigsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listItemTypeConfigs",
		Method:             "GET",
		PathPattern:        "/platform/admin/items/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListItemTypeConfigsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListItemTypeConfigsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateItemTypeConfigShort instead.

CreateItemTypeConfig create an item type config
 [Not Supported Yet In Starter] This API is used to create an item type config.

*  Required permission : resource="ADMIN:ITEM:CONFIG", action=1 (CREATE)
*  Returns : item type config data
*/
func (a *Client) CreateItemTypeConfig(params *CreateItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateItemTypeConfigCreated, *CreateItemTypeConfigBadRequest, *CreateItemTypeConfigConflict, *CreateItemTypeConfigUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateItemTypeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createItemTypeConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/items/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateItemTypeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateItemTypeConfigCreated:
		return v, nil, nil, nil, nil

	case *CreateItemTypeConfigBadRequest:
		return nil, v, nil, nil, nil

	case *CreateItemTypeConfigConflict:
		return nil, nil, v, nil, nil

	case *CreateItemTypeConfigUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateItemTypeConfigShort create an item type config
 [Not Supported Yet In Starter] This API is used to create an item type config.

*  Required permission : resource="ADMIN:ITEM:CONFIG", action=1 (CREATE)
*  Returns : item type config data
*/
func (a *Client) CreateItemTypeConfigShort(params *CreateItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateItemTypeConfigCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateItemTypeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createItemTypeConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/items/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateItemTypeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateItemTypeConfigCreated:
		return v, nil
	case *CreateItemTypeConfigBadRequest:
		return nil, v
	case *CreateItemTypeConfigConflict:
		return nil, v
	case *CreateItemTypeConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SearchItemTypeConfigShort instead.

SearchItemTypeConfig get an item type config
 [Not Supported Yet In Starter] This API is used to get an item type config.

Other detail info:

  * Required permission : resource="ADMIN:ITEM:CONFIG", action=2 (READ)
  *  Returns : item type config data
*/
func (a *Client) SearchItemTypeConfig(params *SearchItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*SearchItemTypeConfigOK, *SearchItemTypeConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchItemTypeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "searchItemTypeConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/items/configs/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchItemTypeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SearchItemTypeConfigOK:
		return v, nil, nil

	case *SearchItemTypeConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SearchItemTypeConfigShort get an item type config
 [Not Supported Yet In Starter] This API is used to get an item type config.

Other detail info:

  * Required permission : resource="ADMIN:ITEM:CONFIG", action=2 (READ)
  *  Returns : item type config data
*/
func (a *Client) SearchItemTypeConfigShort(params *SearchItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*SearchItemTypeConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchItemTypeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "searchItemTypeConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/items/configs/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchItemTypeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SearchItemTypeConfigOK:
		return v, nil
	case *SearchItemTypeConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetItemTypeConfigShort instead.

GetItemTypeConfig get an item type config
 [Not Supported Yet In Starter] This API is used to get an item type config.

Other detail info:

  * Required permission : resource="ADMIN:ITEM:CONFIG", action=2 (READ)
  *  Returns : item type config data
*/
func (a *Client) GetItemTypeConfig(params *GetItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemTypeConfigOK, *GetItemTypeConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemTypeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getItemTypeConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/items/configs/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemTypeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetItemTypeConfigOK:
		return v, nil, nil

	case *GetItemTypeConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetItemTypeConfigShort get an item type config
 [Not Supported Yet In Starter] This API is used to get an item type config.

Other detail info:

  * Required permission : resource="ADMIN:ITEM:CONFIG", action=2 (READ)
  *  Returns : item type config data
*/
func (a *Client) GetItemTypeConfigShort(params *GetItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemTypeConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemTypeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getItemTypeConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/items/configs/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemTypeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemTypeConfigOK:
		return v, nil
	case *GetItemTypeConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateItemTypeConfigShort instead.

UpdateItemTypeConfig update an item type config
 [Not Supported Yet In Starter] This API is used to update an item type config.

*  Required permission : resource="ADMIN:ITEM:CONFIG", action=4 (UPDATE)
*  Returns : item type config data
*/
func (a *Client) UpdateItemTypeConfig(params *UpdateItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemTypeConfigOK, *UpdateItemTypeConfigNotFound, *UpdateItemTypeConfigConflict, *UpdateItemTypeConfigUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateItemTypeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateItemTypeConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/items/configs/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateItemTypeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateItemTypeConfigOK:
		return v, nil, nil, nil, nil

	case *UpdateItemTypeConfigNotFound:
		return nil, v, nil, nil, nil

	case *UpdateItemTypeConfigConflict:
		return nil, nil, v, nil, nil

	case *UpdateItemTypeConfigUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateItemTypeConfigShort update an item type config
 [Not Supported Yet In Starter] This API is used to update an item type config.

*  Required permission : resource="ADMIN:ITEM:CONFIG", action=4 (UPDATE)
*  Returns : item type config data
*/
func (a *Client) UpdateItemTypeConfigShort(params *UpdateItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemTypeConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateItemTypeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateItemTypeConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/items/configs/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateItemTypeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateItemTypeConfigOK:
		return v, nil
	case *UpdateItemTypeConfigNotFound:
		return nil, v
	case *UpdateItemTypeConfigConflict:
		return nil, v
	case *UpdateItemTypeConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteItemTypeConfigShort instead.

DeleteItemTypeConfig delete an item type config
 [Not Supported Yet In Starter] This API is used to delete an item type config permanently.Other detail info:

  * Required permission : resource="ADMIN:ITEM:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteItemTypeConfig(params *DeleteItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteItemTypeConfigNoContent, *DeleteItemTypeConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteItemTypeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteItemTypeConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/items/configs/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteItemTypeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteItemTypeConfigNoContent:
		return v, nil, nil

	case *DeleteItemTypeConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteItemTypeConfigShort delete an item type config
 [Not Supported Yet In Starter] This API is used to delete an item type config permanently.Other detail info:

  * Required permission : resource="ADMIN:ITEM:CONFIG", action=8 (DELETE)
*/
func (a *Client) DeleteItemTypeConfigShort(params *DeleteItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteItemTypeConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteItemTypeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteItemTypeConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/items/configs/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteItemTypeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteItemTypeConfigNoContent:
		return v, nil
	case *DeleteItemTypeConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SyncInGameItemShort instead.

SyncInGameItem sync an in game item
 [Not Supported Yet In Starter] This API is used to sync an in game item in game namespace to publisher namespace, only INGAMEITEM, CODE, COINS and SEASON are supported

The synced item has an additional field targetItemId besides targetNamespace, mostly this item should not modified manually again.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : item data
*/
func (a *Client) SyncInGameItem(params *SyncInGameItemParams, authInfo runtime.ClientAuthInfoWriter) (*SyncInGameItemOK, *SyncInGameItemBadRequest, *SyncInGameItemNotFound, *SyncInGameItemConflict, *SyncInGameItemUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncInGameItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncInGameItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncInGameItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SyncInGameItemOK:
		return v, nil, nil, nil, nil, nil

	case *SyncInGameItemBadRequest:
		return nil, v, nil, nil, nil, nil

	case *SyncInGameItemNotFound:
		return nil, nil, v, nil, nil, nil

	case *SyncInGameItemConflict:
		return nil, nil, nil, v, nil, nil

	case *SyncInGameItemUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncInGameItemShort sync an in game item
 [Not Supported Yet In Starter] This API is used to sync an in game item in game namespace to publisher namespace, only INGAMEITEM, CODE, COINS and SEASON are supported

The synced item has an additional field targetItemId besides targetNamespace, mostly this item should not modified manually again.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : item data
*/
func (a *Client) SyncInGameItemShort(params *SyncInGameItemParams, authInfo runtime.ClientAuthInfoWriter) (*SyncInGameItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncInGameItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncInGameItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncInGameItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncInGameItemOK:
		return v, nil
	case *SyncInGameItemBadRequest:
		return nil, v
	case *SyncInGameItemNotFound:
		return nil, v
	case *SyncInGameItemConflict:
		return nil, v
	case *SyncInGameItemUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateItemShort instead.

CreateItem create an item
This API is used to create an item. APP item only can created in publisher namespace.

An item create example:


    {

       "categoryPath": "/games",

       "localizations": {

           "en": {

               "title":"required",

               "description":"optional",

               "longDescription":"optional",

               "localExt": {

                      "properties":[

                                       {

                                           "key1":"value1",

                                           "key2":"value2"

                                       }

                      ],

                      "functions":[

                                       {

                                           "key1":"value1",

                                           "key2":"value2"

                                       }

                     ]

               }

            }

       },

       "images": [

         {

               "as":"optional, image for",

               "caption":"optional",

               "height":10,

               "width":10,

               "imageUrl":"http://img-url-required",

               "smallImageUrl":"http://small-img-url-required"

         }

       ],

       "thumbnailUrl": "optional, thumbnail url",

       "status": "ACTIVE",

       "listable": true,

       "purchasable": true,

       "itemType": "APP(allowed: [APP,COINS,INGAMEITEM,CODE,BUNDLE])",

       "name": "required, also will be used as entitlement name",

       "entitlementType": "DURABLE(allowed:[DURABLE,CONSUMABLE], should be CONSUMABLE when item type is COINS)",

       "useCount": 1(optional, required if the entitlement type is consumable),

       "stackable": false,

       "appId": "optional, required if itemType is APP",

       "appType": "GAME(optional, required if itemType is APP)",

       "seasonType": "PASS(optional, required if itemType is SEASON)",

       "baseAppId": "optional, set value of game app id if you want to link to a game",

       "targetCurrencyCode": "optional, required if itemType is COINS",

       "targetNamespace": "optional, required when itemType is INGAMEITEM, the targetNamespace will only take effect when the item

       created belongs to the publisher namespace",

       "sku": "optional, commonly unique item code",

       "regionData": {

           "US(store's default region is required)": [

             {

                "price":10,

                "discountPercentage": 0(integer, optional, range[0,100], discountedPrice = price  * ((100 - discountPercentage) * 0.01),

                  will use it to calculate discounted price if it is not 0),

                "discountAmount":0(integer, optional, range[0,itemPrice], will use it to calculate discounted price if discountPercentage is 0),

                "currencyCode":"code(required, example: USD)",

                "currencyNamespace":"test-ns-required(allow publisher namespace if namespace is publisher namespace, allow publisher and game namespace if namespace is not publisher namespace)",

                "trialPrice":5(required while fixedTrialCycles set, should >=0 and <= price, will same as price if not present),

                "purchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "expireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "discountPurchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "discountExpireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

             }

           ]

       },

       "itemIds": [

           "itemId"

       ],

       "itemQty": {

           "itemId":1

       },

       "recurring": {

           "cycle":"MONTHLY(allowed: [WEEKLY,MONTHLY,QUARTERLY,YEARLY])",

           "fixedFreeDays":0(integer, fixed free days, 0 means not set),

           "fixedTrialCycles":0(integer, fixed trial cycles, 0 means not set, will not take effect if fixedFreeDays set),

           "graceDays":7(integer, recurring grace days, retry recurring charge within configured days if charge fail, default 7)

       },

       "tags": [

           "exampleTag24"

       ],

       "features": [

           "feature"

       ],

       "clazz": "weapon",

       "boothName": "C_campaign1",

       "displayOrder": 1000,

       "ext": {

           "properties":[

               {

                   "key1":"value1",

                   "key2":"value2"

               }

           ],

           "functions":[

               {

                   "key1":"value1",

                   "key2":"value2"

               }

           ]

       },

       "maxCountPerUser": 1(integer, optional, -1 means UNLIMITED),

       "maxCount": 1(integer, optional, -1 means UNLIMITED, unset when itemType is CODE)

    }

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=1 (CREATE)
  *  Returns : created item data



## Restrictions for item extension and localization extension


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) CreateItem(params *CreateItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateItemCreated, *CreateItemBadRequest, *CreateItemNotFound, *CreateItemConflict, *CreateItemUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createItem",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateItemCreated:
		return v, nil, nil, nil, nil, nil

	case *CreateItemBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateItemNotFound:
		return nil, nil, v, nil, nil, nil

	case *CreateItemConflict:
		return nil, nil, nil, v, nil, nil

	case *CreateItemUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateItemShort create an item
This API is used to create an item. APP item only can created in publisher namespace.

An item create example:


    {

       "categoryPath": "/games",

       "localizations": {

           "en": {

               "title":"required",

               "description":"optional",

               "longDescription":"optional",

               "localExt": {

                      "properties":[

                                       {

                                           "key1":"value1",

                                           "key2":"value2"

                                       }

                      ],

                      "functions":[

                                       {

                                           "key1":"value1",

                                           "key2":"value2"

                                       }

                     ]

               }

            }

       },

       "images": [

         {

               "as":"optional, image for",

               "caption":"optional",

               "height":10,

               "width":10,

               "imageUrl":"http://img-url-required",

               "smallImageUrl":"http://small-img-url-required"

         }

       ],

       "thumbnailUrl": "optional, thumbnail url",

       "status": "ACTIVE",

       "listable": true,

       "purchasable": true,

       "itemType": "APP(allowed: [APP,COINS,INGAMEITEM,CODE,BUNDLE])",

       "name": "required, also will be used as entitlement name",

       "entitlementType": "DURABLE(allowed:[DURABLE,CONSUMABLE], should be CONSUMABLE when item type is COINS)",

       "useCount": 1(optional, required if the entitlement type is consumable),

       "stackable": false,

       "appId": "optional, required if itemType is APP",

       "appType": "GAME(optional, required if itemType is APP)",

       "seasonType": "PASS(optional, required if itemType is SEASON)",

       "baseAppId": "optional, set value of game app id if you want to link to a game",

       "targetCurrencyCode": "optional, required if itemType is COINS",

       "targetNamespace": "optional, required when itemType is INGAMEITEM, the targetNamespace will only take effect when the item

       created belongs to the publisher namespace",

       "sku": "optional, commonly unique item code",

       "regionData": {

           "US(store's default region is required)": [

             {

                "price":10,

                "discountPercentage": 0(integer, optional, range[0,100], discountedPrice = price  * ((100 - discountPercentage) * 0.01),

                  will use it to calculate discounted price if it is not 0),

                "discountAmount":0(integer, optional, range[0,itemPrice], will use it to calculate discounted price if discountPercentage is 0),

                "currencyCode":"code(required, example: USD)",

                "currencyNamespace":"test-ns-required(allow publisher namespace if namespace is publisher namespace, allow publisher and game namespace if namespace is not publisher namespace)",

                "trialPrice":5(required while fixedTrialCycles set, should >=0 and <= price, will same as price if not present),

                "purchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "expireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "discountPurchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "discountExpireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

             }

           ]

       },

       "itemIds": [

           "itemId"

       ],

       "itemQty": {

           "itemId":1

       },

       "recurring": {

           "cycle":"MONTHLY(allowed: [WEEKLY,MONTHLY,QUARTERLY,YEARLY])",

           "fixedFreeDays":0(integer, fixed free days, 0 means not set),

           "fixedTrialCycles":0(integer, fixed trial cycles, 0 means not set, will not take effect if fixedFreeDays set),

           "graceDays":7(integer, recurring grace days, retry recurring charge within configured days if charge fail, default 7)

       },

       "tags": [

           "exampleTag24"

       ],

       "features": [

           "feature"

       ],

       "clazz": "weapon",

       "boothName": "C_campaign1",

       "displayOrder": 1000,

       "ext": {

           "properties":[

               {

                   "key1":"value1",

                   "key2":"value2"

               }

           ],

           "functions":[

               {

                   "key1":"value1",

                   "key2":"value2"

               }

           ]

       },

       "maxCountPerUser": 1(integer, optional, -1 means UNLIMITED),

       "maxCount": 1(integer, optional, -1 means UNLIMITED, unset when itemType is CODE)

    }

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=1 (CREATE)
  *  Returns : created item data



## Restrictions for item extension and localization extension


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) CreateItemShort(params *CreateItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateItemCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createItem",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateItemCreated:
		return v, nil
	case *CreateItemBadRequest:
		return nil, v
	case *CreateItemNotFound:
		return nil, v
	case *CreateItemConflict:
		return nil, v
	case *CreateItemUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetItemByAppIDShort instead.

GetItemByAppID get item by appid
This API is used to get the item by appId.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the item with that appId
*/
func (a *Client) GetItemByAppID(params *GetItemByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemByAppIDOK, *GetItemByAppIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemByAppIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getItemByAppId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetItemByAppIDOK:
		return v, nil, nil

	case *GetItemByAppIDNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetItemByAppIDShort get item by appid
This API is used to get the item by appId.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the item with that appId
*/
func (a *Client) GetItemByAppIDShort(params *GetItemByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemByAppIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemByAppIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getItemByAppId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemByAppIDOK:
		return v, nil
	case *GetItemByAppIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryItemsShort instead.

QueryItems query items by criteria
This API is used to query items by criteria within a store.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the list of items
*/
func (a *Client) QueryItems(params *QueryItemsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryItemsOK, *QueryItemsNotFound, *QueryItemsUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryItemsOK:
		return v, nil, nil, nil

	case *QueryItemsNotFound:
		return nil, v, nil, nil

	case *QueryItemsUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryItemsShort query items by criteria
This API is used to query items by criteria within a store.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the list of items
*/
func (a *Client) QueryItemsShort(params *QueryItemsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryItemsOK:
		return v, nil
	case *QueryItemsNotFound:
		return nil, v
	case *QueryItemsUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListBasicItemsByFeaturesShort instead.

ListBasicItemsByFeatures list basic items by features
 [SERVICE COMMUNICATION ONLY] This API is used to list basic items by features.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the list of basic items
*/
func (a *Client) ListBasicItemsByFeatures(params *ListBasicItemsByFeaturesParams, authInfo runtime.ClientAuthInfoWriter) (*ListBasicItemsByFeaturesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListBasicItemsByFeaturesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listBasicItemsByFeatures",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/byFeatures/basic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListBasicItemsByFeaturesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListBasicItemsByFeaturesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListBasicItemsByFeaturesShort list basic items by features
 [SERVICE COMMUNICATION ONLY] This API is used to list basic items by features.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the list of basic items
*/
func (a *Client) ListBasicItemsByFeaturesShort(params *ListBasicItemsByFeaturesParams, authInfo runtime.ClientAuthInfoWriter) (*ListBasicItemsByFeaturesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListBasicItemsByFeaturesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listBasicItemsByFeatures",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/byFeatures/basic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListBasicItemsByFeaturesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListBasicItemsByFeaturesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetItemsShort instead.

GetItems get items
This API is used to get items.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the list of items info
*/
func (a *Client) GetItems(params *GetItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemsOK, *GetItemsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetItemsOK:
		return v, nil, nil

	case *GetItemsNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetItemsShort get items
This API is used to get items.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the list of items info
*/
func (a *Client) GetItemsShort(params *GetItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemsOK:
		return v, nil
	case *GetItemsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetItemBySkuShort instead.

GetItemBySku get item by sku
This API is used to get the item by sku.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the item with sku
*/
func (a *Client) GetItemBySku(params *GetItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemBySkuOK, *GetItemBySkuNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemBySkuParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getItemBySku",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetItemBySkuOK:
		return v, nil, nil

	case *GetItemBySkuNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetItemBySkuShort get item by sku
This API is used to get the item by sku.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the item with sku
*/
func (a *Client) GetItemBySkuShort(params *GetItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemBySkuOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemBySkuParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getItemBySku",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemBySkuOK:
		return v, nil
	case *GetItemBySkuNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetLocaleItemBySkuShort instead.

GetLocaleItemBySku get an item by sku in locale
This API is used to get an item by sku in specific locale. If item not exist in specific region, default region item will return.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : item data
*/
func (a *Client) GetLocaleItemBySku(params *GetLocaleItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocaleItemBySkuOK, *GetLocaleItemBySkuNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLocaleItemBySkuParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLocaleItemBySku",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/bySku/locale",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLocaleItemBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetLocaleItemBySkuOK:
		return v, nil, nil

	case *GetLocaleItemBySkuNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLocaleItemBySkuShort get an item by sku in locale
This API is used to get an item by sku in specific locale. If item not exist in specific region, default region item will return.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : item data
*/
func (a *Client) GetLocaleItemBySkuShort(params *GetLocaleItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocaleItemBySkuOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLocaleItemBySkuParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLocaleItemBySku",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/bySku/locale",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLocaleItemBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLocaleItemBySkuOK:
		return v, nil
	case *GetLocaleItemBySkuNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetEstimatedPriceShort instead.

GetEstimatedPrice get estimated price
This API is used to get estimated prices of a flexible pricing bundle
*/
func (a *Client) GetEstimatedPrice(params *GetEstimatedPriceParams, authInfo runtime.ClientAuthInfoWriter) (*GetEstimatedPriceOK, *GetEstimatedPriceNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEstimatedPriceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getEstimatedPrice",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/estimatedPrice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEstimatedPriceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetEstimatedPriceOK:
		return v, nil, nil

	case *GetEstimatedPriceNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEstimatedPriceShort get estimated price
This API is used to get estimated prices of a flexible pricing bundle
*/
func (a *Client) GetEstimatedPriceShort(params *GetEstimatedPriceParams, authInfo runtime.ClientAuthInfoWriter) (*GetEstimatedPriceOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEstimatedPriceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getEstimatedPrice",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/estimatedPrice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEstimatedPriceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEstimatedPriceOK:
		return v, nil
	case *GetEstimatedPriceNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetItemIDBySkuShort instead.

GetItemIDBySku get itemid by sku
 [SERVICE COMMUNICATION ONLY] This API is used to get the itemId by sku.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the itemId with sku
*/
func (a *Client) GetItemIDBySku(params *GetItemIDBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemIDBySkuOK, *GetItemIDBySkuNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemIDBySkuParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getItemIdBySku",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/itemId/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemIDBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetItemIDBySkuOK:
		return v, nil, nil

	case *GetItemIDBySkuNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetItemIDBySkuShort get itemid by sku
 [SERVICE COMMUNICATION ONLY] This API is used to get the itemId by sku.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the itemId with sku
*/
func (a *Client) GetItemIDBySkuShort(params *GetItemIDBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemIDBySkuOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemIDBySkuParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getItemIdBySku",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/itemId/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemIDBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemIDBySkuOK:
		return v, nil
	case *GetItemIDBySkuNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetBulkItemIDBySkusShort instead.

GetBulkItemIDBySkus get multiple itemid by sku
This API is used to get an list of itemId by list of sku.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : item data
*/
func (a *Client) GetBulkItemIDBySkus(params *GetBulkItemIDBySkusParams, authInfo runtime.ClientAuthInfoWriter) (*GetBulkItemIDBySkusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetBulkItemIDBySkusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getBulkItemIdBySkus",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/itemId/bySkus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetBulkItemIDBySkusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetBulkItemIDBySkusOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetBulkItemIDBySkusShort get multiple itemid by sku
This API is used to get an list of itemId by list of sku.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : item data
*/
func (a *Client) GetBulkItemIDBySkusShort(params *GetBulkItemIDBySkusParams, authInfo runtime.ClientAuthInfoWriter) (*GetBulkItemIDBySkusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetBulkItemIDBySkusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getBulkItemIdBySkus",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/itemId/bySkus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetBulkItemIDBySkusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetBulkItemIDBySkusOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkGetLocaleItemsShort instead.

BulkGetLocaleItems bulk get locale items
This API is used to bulk get locale items. If item not exist in specific region, default region item will return.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the list of items info
*/
func (a *Client) BulkGetLocaleItems(params *BulkGetLocaleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetLocaleItemsOK, *BulkGetLocaleItemsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetLocaleItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkGetLocaleItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/locale/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetLocaleItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkGetLocaleItemsOK:
		return v, nil, nil

	case *BulkGetLocaleItemsNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetLocaleItemsShort bulk get locale items
This API is used to bulk get locale items. If item not exist in specific region, default region item will return.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the list of items info
*/
func (a *Client) BulkGetLocaleItemsShort(params *BulkGetLocaleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetLocaleItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetLocaleItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkGetLocaleItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/locale/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetLocaleItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetLocaleItemsOK:
		return v, nil
	case *BulkGetLocaleItemsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAvailablePredicateTypesShort instead.

GetAvailablePredicateTypes get available predicate types
Get available predicate types.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:ITEM, action=2 (READ)
  *  Returns : available predicate types
*/
func (a *Client) GetAvailablePredicateTypes(params *GetAvailablePredicateTypesParams, authInfo runtime.ClientAuthInfoWriter) (*GetAvailablePredicateTypesOK, *GetAvailablePredicateTypesNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAvailablePredicateTypesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getAvailablePredicateTypes",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/predicate/types",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAvailablePredicateTypesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetAvailablePredicateTypesOK:
		return v, nil, nil

	case *GetAvailablePredicateTypesNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAvailablePredicateTypesShort get available predicate types
Get available predicate types.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:ITEM, action=2 (READ)
  *  Returns : available predicate types
*/
func (a *Client) GetAvailablePredicateTypesShort(params *GetAvailablePredicateTypesParams, authInfo runtime.ClientAuthInfoWriter) (*GetAvailablePredicateTypesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAvailablePredicateTypesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getAvailablePredicateTypes",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/predicate/types",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAvailablePredicateTypesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAvailablePredicateTypesOK:
		return v, nil
	case *GetAvailablePredicateTypesNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ValidateItemPurchaseConditionShort instead.

ValidateItemPurchaseCondition validate user purchase condition
This API is used to validate user purchase condition
*/
func (a *Client) ValidateItemPurchaseCondition(params *ValidateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*ValidateItemPurchaseConditionOK, *ValidateItemPurchaseConditionUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewValidateItemPurchaseConditionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "validateItemPurchaseCondition",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/purchase/conditions/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ValidateItemPurchaseConditionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ValidateItemPurchaseConditionOK:
		return v, nil, nil

	case *ValidateItemPurchaseConditionUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ValidateItemPurchaseConditionShort validate user purchase condition
This API is used to validate user purchase condition
*/
func (a *Client) ValidateItemPurchaseConditionShort(params *ValidateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*ValidateItemPurchaseConditionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewValidateItemPurchaseConditionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "validateItemPurchaseCondition",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/purchase/conditions/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ValidateItemPurchaseConditionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ValidateItemPurchaseConditionOK:
		return v, nil
	case *ValidateItemPurchaseConditionUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkUpdateRegionDataShort instead.

BulkUpdateRegionData update item's region data in bulk
This API is used to update region data of items in bulk
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
*/
func (a *Client) BulkUpdateRegionData(params *BulkUpdateRegionDataParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateRegionDataNoContent, *BulkUpdateRegionDataBadRequest, *BulkUpdateRegionDataNotFound, *BulkUpdateRegionDataConflict, *BulkUpdateRegionDataUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkUpdateRegionDataParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkUpdateRegionData",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/regiondata",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkUpdateRegionDataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateRegionDataNoContent:
		return v, nil, nil, nil, nil, nil

	case *BulkUpdateRegionDataBadRequest:
		return nil, v, nil, nil, nil, nil

	case *BulkUpdateRegionDataNotFound:
		return nil, nil, v, nil, nil, nil

	case *BulkUpdateRegionDataConflict:
		return nil, nil, nil, v, nil, nil

	case *BulkUpdateRegionDataUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkUpdateRegionDataShort update item's region data in bulk
This API is used to update region data of items in bulk
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
*/
func (a *Client) BulkUpdateRegionDataShort(params *BulkUpdateRegionDataParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateRegionDataNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkUpdateRegionDataParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkUpdateRegionData",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/regiondata",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkUpdateRegionDataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateRegionDataNoContent:
		return v, nil
	case *BulkUpdateRegionDataBadRequest:
		return nil, v
	case *BulkUpdateRegionDataNotFound:
		return nil, v
	case *BulkUpdateRegionDataConflict:
		return nil, v
	case *BulkUpdateRegionDataUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SearchItemsShort instead.

SearchItems search items by keyword
This API is used to search items by keyword in title, description and long description within a store.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the list of items
*/
func (a *Client) SearchItems(params *SearchItemsParams, authInfo runtime.ClientAuthInfoWriter) (*SearchItemsOK, *SearchItemsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "searchItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SearchItemsOK:
		return v, nil, nil

	case *SearchItemsNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SearchItemsShort search items by keyword
This API is used to search items by keyword in title, description and long description within a store.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the list of items
*/
func (a *Client) SearchItemsShort(params *SearchItemsParams, authInfo runtime.ClientAuthInfoWriter) (*SearchItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "searchItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SearchItemsOK:
		return v, nil
	case *SearchItemsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryUncategorizedItemsShort instead.

QueryUncategorizedItems query uncategorized items
This API is used to query uncategorized items within a store.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the list of uncategorized items
*/
func (a *Client) QueryUncategorizedItems(params *QueryUncategorizedItemsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUncategorizedItemsOK, *QueryUncategorizedItemsNotFound, *QueryUncategorizedItemsUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUncategorizedItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryUncategorizedItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/uncategorized",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUncategorizedItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryUncategorizedItemsOK:
		return v, nil, nil, nil

	case *QueryUncategorizedItemsNotFound:
		return nil, v, nil, nil

	case *QueryUncategorizedItemsUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUncategorizedItemsShort query uncategorized items
This API is used to query uncategorized items within a store.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the list of uncategorized items
*/
func (a *Client) QueryUncategorizedItemsShort(params *QueryUncategorizedItemsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUncategorizedItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUncategorizedItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryUncategorizedItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/uncategorized",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUncategorizedItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUncategorizedItemsOK:
		return v, nil
	case *QueryUncategorizedItemsNotFound:
		return nil, v
	case *QueryUncategorizedItemsUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetItemShort instead.

GetItem get an item
This API is used to get an item.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : item data
*/
func (a *Client) GetItem(params *GetItemParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemOK, *GetItemNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getItem",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetItemOK:
		return v, nil, nil

	case *GetItemNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetItemShort get an item
This API is used to get an item.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : item data
*/
func (a *Client) GetItemShort(params *GetItemParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getItem",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemOK:
		return v, nil
	case *GetItemNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateItemShort instead.

UpdateItem update an item
This API is used to update an item.

An item update example:


    {

        "categoryPath": "/games",

        "localizations": {

           "en": {

               "title":"required",

               "description":"optional",

               "longDescription":"optional",

               "localExt": {

                      "properties":[

                                       {

                                           "key1":"value1",

                                           "key2":"value2"

                                       }

                      ],

                      "functions":[

                                       {

                                           "key1":"value1",

                                           "key2":"value2"

                                       }

                     ]

               }

           }

       },

       "images": [

         {

               "as":"optional, image for",

               "caption":"optional",

               "height":10,

               "width":10,

               "imageUrl":"http://img-url-required",

               "smallImageUrl":"http://small-img-url-required"

         }

       ],

       "thumbnailUrl": "optional, thumbnail url",

       "status": "ACTIVE",

       "listable": true,

       "purchasable": true,

       "itemType": "APP(allowed: [APP,COINS,INGAMEITEM,CODE,BUNDLE])",

       "name": "optional",

       "entitlementType": "DURABLE(allowed:[DURABLE,CONSUMABLE], should be CONSUMABLE when item type is COINS)",

       "useCount": 1(optional, required if the entitlement type is consumable),

       "stackable": false,

       "appId": "optional, required if itemType is APP",

       "baseAppId": "optional, set value of game app id if you want to link to a game",

       "appType": "GAME(optional, required if itemType is APP)",

       "seasonType": "PASS(optional, required if itemType is SEASON)",

       "sku": "optional, commonly unique item code",

       "targetCurrencyCode": "optional, required if itemType is COINS",

       "targetNamespace": "optional, required when itemType is INGAMEITEM, the targetNamespace will only take effect when the item

       created belongs to the publisher namespace",

       "regionData": {

           "US(store's default region is required)": [

             {

                "price":10,

                "discountPercentage":0(integer, optional, range[0,100], discountedPrice = price*((100 - discountPercentage) * 0.01),

                  if it is not 0, will use it to calculate discounted price),

                "discountAmount":0(integer, optional, range[0,itemPrice], will use it to calculate discounted price if discountPercentage is 0),

                "currencyCode":"code(required, example: USD)",

                "currencyNamespace":"test-ns-required(allow publisher namespace if namespace is publisher namespace, allow publisher and game namespace if namespace is not publisher namespace)",

                "trialPrice":5(required while fixedTrialCycles set, should >=0 and <= price, will same as price if not present),

                "purchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "expireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "discountPurchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "discountExpireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

             }

           ]

       },

       "itemIds": [

           "itemId"

       ],

       "itemQty": {

           "itemId":1

       },

       "recurring": {

           "cycle":"MONTHLY(allowed: [WEEKLY,MONTHLY,QUARTERLY,YEARLY])",

           "fixedFreeDays":0(integer, fixed free days, 0 means not set),

           "fixedTrialCycles":0(integer, fixed trial cycles, 0 means not set, will not take effect if fixedFreeDays set),

           "graceDays":7(integer, recurring grace days, retry recurring charge within configured days if charge fail, default 7)

       },

       "tags": [

           "exampleTag24"

       ],

       "features": [

           "feature"

       ],

       "clazz": "weapon",

       "boothName": "C_campaign1",

       "displayOrder": 1000,

       "ext": {

           "properties":[

               {

                   "key1":"value1",

                   "key2":"value2"

               }

           ],

           "functions":[

               {

                   "key1":"value1",

                   "key2":"value2"

               }

           ]

       },

       "maxCountPerUser": 1(integer, optional, -1 means UNLIMITED),

       "maxCount": 1(integer, optional, -1 means UNLIMITED, new value should >= old value if both old value and new value is

       limited, unset when item type is CODE)

    }

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : updated item data



## Restrictions for item extension and localization extension


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) UpdateItem(params *UpdateItemParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemOK, *UpdateItemBadRequest, *UpdateItemNotFound, *UpdateItemConflict, *UpdateItemUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateItemOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateItemBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateItemNotFound:
		return nil, nil, v, nil, nil, nil

	case *UpdateItemConflict:
		return nil, nil, nil, v, nil, nil

	case *UpdateItemUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateItemShort update an item
This API is used to update an item.

An item update example:


    {

        "categoryPath": "/games",

        "localizations": {

           "en": {

               "title":"required",

               "description":"optional",

               "longDescription":"optional",

               "localExt": {

                      "properties":[

                                       {

                                           "key1":"value1",

                                           "key2":"value2"

                                       }

                      ],

                      "functions":[

                                       {

                                           "key1":"value1",

                                           "key2":"value2"

                                       }

                     ]

               }

           }

       },

       "images": [

         {

               "as":"optional, image for",

               "caption":"optional",

               "height":10,

               "width":10,

               "imageUrl":"http://img-url-required",

               "smallImageUrl":"http://small-img-url-required"

         }

       ],

       "thumbnailUrl": "optional, thumbnail url",

       "status": "ACTIVE",

       "listable": true,

       "purchasable": true,

       "itemType": "APP(allowed: [APP,COINS,INGAMEITEM,CODE,BUNDLE])",

       "name": "optional",

       "entitlementType": "DURABLE(allowed:[DURABLE,CONSUMABLE], should be CONSUMABLE when item type is COINS)",

       "useCount": 1(optional, required if the entitlement type is consumable),

       "stackable": false,

       "appId": "optional, required if itemType is APP",

       "baseAppId": "optional, set value of game app id if you want to link to a game",

       "appType": "GAME(optional, required if itemType is APP)",

       "seasonType": "PASS(optional, required if itemType is SEASON)",

       "sku": "optional, commonly unique item code",

       "targetCurrencyCode": "optional, required if itemType is COINS",

       "targetNamespace": "optional, required when itemType is INGAMEITEM, the targetNamespace will only take effect when the item

       created belongs to the publisher namespace",

       "regionData": {

           "US(store's default region is required)": [

             {

                "price":10,

                "discountPercentage":0(integer, optional, range[0,100], discountedPrice = price*((100 - discountPercentage) * 0.01),

                  if it is not 0, will use it to calculate discounted price),

                "discountAmount":0(integer, optional, range[0,itemPrice], will use it to calculate discounted price if discountPercentage is 0),

                "currencyCode":"code(required, example: USD)",

                "currencyNamespace":"test-ns-required(allow publisher namespace if namespace is publisher namespace, allow publisher and game namespace if namespace is not publisher namespace)",

                "trialPrice":5(required while fixedTrialCycles set, should >=0 and <= price, will same as price if not present),

                "purchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "expireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "discountPurchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "discountExpireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

             }

           ]

       },

       "itemIds": [

           "itemId"

       ],

       "itemQty": {

           "itemId":1

       },

       "recurring": {

           "cycle":"MONTHLY(allowed: [WEEKLY,MONTHLY,QUARTERLY,YEARLY])",

           "fixedFreeDays":0(integer, fixed free days, 0 means not set),

           "fixedTrialCycles":0(integer, fixed trial cycles, 0 means not set, will not take effect if fixedFreeDays set),

           "graceDays":7(integer, recurring grace days, retry recurring charge within configured days if charge fail, default 7)

       },

       "tags": [

           "exampleTag24"

       ],

       "features": [

           "feature"

       ],

       "clazz": "weapon",

       "boothName": "C_campaign1",

       "displayOrder": 1000,

       "ext": {

           "properties":[

               {

                   "key1":"value1",

                   "key2":"value2"

               }

           ],

           "functions":[

               {

                   "key1":"value1",

                   "key2":"value2"

               }

           ]

       },

       "maxCountPerUser": 1(integer, optional, -1 means UNLIMITED),

       "maxCount": 1(integer, optional, -1 means UNLIMITED, new value should >= old value if both old value and new value is

       limited, unset when item type is CODE)

    }

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : updated item data



## Restrictions for item extension and localization extension


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) UpdateItemShort(params *UpdateItemParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateItemOK:
		return v, nil
	case *UpdateItemBadRequest:
		return nil, v
	case *UpdateItemNotFound:
		return nil, v
	case *UpdateItemConflict:
		return nil, v
	case *UpdateItemUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteItemShort instead.

DeleteItem delete an item
This API is used to delete an item permanently.

force: the default value should be: false. When the value is:
* false: only the items in the draft store that have never been published yet can be removed.
*  true: the item in the draft store(even been published before) can be removed.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=8 (DELETE)
*/
func (a *Client) DeleteItem(params *DeleteItemParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteItemNoContent, *DeleteItemNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteItem",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteItemNoContent:
		return v, nil, nil

	case *DeleteItemNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteItemShort delete an item
This API is used to delete an item permanently.

force: the default value should be: false. When the value is:
* false: only the items in the draft store that have never been published yet can be removed.
*  true: the item in the draft store(even been published before) can be removed.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=8 (DELETE)
*/
func (a *Client) DeleteItemShort(params *DeleteItemParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteItemNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteItem",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteItemNoContent:
		return v, nil
	case *DeleteItemNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AcquireItemShort instead.

AcquireItem acquire item
 [SERVICE COMMUNICATION ONLY] This api is used for acquiring a published item while the item is maxCount limited, it will decrease the sale available count.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : acquire result
*/
func (a *Client) AcquireItem(params *AcquireItemParams, authInfo runtime.ClientAuthInfoWriter) (*AcquireItemOK, *AcquireItemNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcquireItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "acquireItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/acquire",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcquireItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *AcquireItemOK:
		return v, nil, nil

	case *AcquireItemNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AcquireItemShort acquire item
 [SERVICE COMMUNICATION ONLY] This api is used for acquiring a published item while the item is maxCount limited, it will decrease the sale available count.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : acquire result
*/
func (a *Client) AcquireItemShort(params *AcquireItemParams, authInfo runtime.ClientAuthInfoWriter) (*AcquireItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcquireItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "acquireItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/acquire",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcquireItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AcquireItemOK:
		return v, nil
	case *AcquireItemNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAppShort instead.

GetApp get an app info
This API is used to get an app info.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : app data
*/
func (a *Client) GetApp(params *GetAppParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getApp",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/app",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAppShort get an app info
This API is used to get an app info.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : app data
*/
func (a *Client) GetAppShort(params *GetAppParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getApp",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/app",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateAppShort instead.

UpdateApp update an app
This API is used to update an app.

An app update example:


    {

      "developer": "accelbyte",

      "publisher": "accelbyte",

      "websiteUrl": "http://accelbyte.io",

      "forumUrl": "http://accelbyte.io",

      "platforms": ["Windows(allowed values: Windows, MacOS, Linux, IOS, Android)"],

      "platformRequirements": {

        "Windows": [

          {

            "label":"minimum(can be minimum or recommended)",

            "osVersion":"os version",

            "processor":"processor",

            "ram":"RAM",

            "graphics":"graphics",

            "directXVersion":"directXVersion",

            "diskSpace":"diskSpace",

            "soundCard":"soundCard",

            "additionals":"additionals"

          }

         ]

      },

      "carousel": [

        {

          "type":"image(allowed values: image, video)",

          "videoSource":"generic(allowed values:generic, youtube, viemo)",

          "url":"url",

          "alt":"alternative url or text",

          "thumbnailUrl":"thumbnail url",

          "previewUrl":"preview url",

        }

      ],

      "localizations": {

        "en": {

          "slogan":"slogan",

          "announcement":"announcement",

        }

      },

      "primaryGenre": "Action",

      "genres": ["Action", "Adventure"],

      "players": ["Single"],

      "releaseDate": "optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

    }

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : updated app data
*/
func (a *Client) UpdateApp(params *UpdateAppParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppOK, *UpdateAppNotFound, *UpdateAppConflict, *UpdateAppUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAppParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateApp",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/app",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAppReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateAppOK:
		return v, nil, nil, nil, nil

	case *UpdateAppNotFound:
		return nil, v, nil, nil, nil

	case *UpdateAppConflict:
		return nil, nil, v, nil, nil

	case *UpdateAppUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAppShort update an app
This API is used to update an app.

An app update example:


    {

      "developer": "accelbyte",

      "publisher": "accelbyte",

      "websiteUrl": "http://accelbyte.io",

      "forumUrl": "http://accelbyte.io",

      "platforms": ["Windows(allowed values: Windows, MacOS, Linux, IOS, Android)"],

      "platformRequirements": {

        "Windows": [

          {

            "label":"minimum(can be minimum or recommended)",

            "osVersion":"os version",

            "processor":"processor",

            "ram":"RAM",

            "graphics":"graphics",

            "directXVersion":"directXVersion",

            "diskSpace":"diskSpace",

            "soundCard":"soundCard",

            "additionals":"additionals"

          }

         ]

      },

      "carousel": [

        {

          "type":"image(allowed values: image, video)",

          "videoSource":"generic(allowed values:generic, youtube, viemo)",

          "url":"url",

          "alt":"alternative url or text",

          "thumbnailUrl":"thumbnail url",

          "previewUrl":"preview url",

        }

      ],

      "localizations": {

        "en": {

          "slogan":"slogan",

          "announcement":"announcement",

        }

      },

      "primaryGenre": "Action",

      "genres": ["Action", "Adventure"],

      "players": ["Single"],

      "releaseDate": "optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

    }

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : updated app data
*/
func (a *Client) UpdateAppShort(params *UpdateAppParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAppParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateApp",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/app",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAppReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAppOK:
		return v, nil
	case *UpdateAppNotFound:
		return nil, v
	case *UpdateAppConflict:
		return nil, v
	case *UpdateAppUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DisableItemShort instead.

DisableItem disable an item
Disable an item.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : updated item
*/
func (a *Client) DisableItem(params *DisableItemParams, authInfo runtime.ClientAuthInfoWriter) (*DisableItemOK, *DisableItemNotFound, *DisableItemConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "disableItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DisableItemOK:
		return v, nil, nil, nil

	case *DisableItemNotFound:
		return nil, v, nil, nil

	case *DisableItemConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DisableItemShort disable an item
Disable an item.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : updated item
*/
func (a *Client) DisableItemShort(params *DisableItemParams, authInfo runtime.ClientAuthInfoWriter) (*DisableItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "disableItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DisableItemOK:
		return v, nil
	case *DisableItemNotFound:
		return nil, v
	case *DisableItemConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetItemDynamicDataShort instead.

GetItemDynamicData get item dynamic data
Get item dynamic data for published item.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : item dynamic data
*/
func (a *Client) GetItemDynamicData(params *GetItemDynamicDataParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemDynamicDataOK, *GetItemDynamicDataNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemDynamicDataParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getItemDynamicData",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/dynamic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemDynamicDataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetItemDynamicDataOK:
		return v, nil, nil

	case *GetItemDynamicDataNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetItemDynamicDataShort get item dynamic data
Get item dynamic data for published item.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : item dynamic data
*/
func (a *Client) GetItemDynamicDataShort(params *GetItemDynamicDataParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemDynamicDataOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemDynamicDataParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getItemDynamicData",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/dynamic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemDynamicDataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemDynamicDataOK:
		return v, nil
	case *GetItemDynamicDataNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use EnableItemShort instead.

EnableItem enable an item
Enable an item.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : updated item
*/
func (a *Client) EnableItem(params *EnableItemParams, authInfo runtime.ClientAuthInfoWriter) (*EnableItemOK, *EnableItemNotFound, *EnableItemConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "enableItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *EnableItemOK:
		return v, nil, nil, nil

	case *EnableItemNotFound:
		return nil, v, nil, nil

	case *EnableItemConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EnableItemShort enable an item
Enable an item.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : updated item
*/
func (a *Client) EnableItemShort(params *EnableItemParams, authInfo runtime.ClientAuthInfoWriter) (*EnableItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "enableItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnableItemOK:
		return v, nil
	case *EnableItemNotFound:
		return nil, v
	case *EnableItemConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use FeatureItemShort instead.

FeatureItem feature an item
Add a feature to an item.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : updated item
*/
func (a *Client) FeatureItem(params *FeatureItemParams, authInfo runtime.ClientAuthInfoWriter) (*FeatureItemOK, *FeatureItemNotFound, *FeatureItemConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFeatureItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "featureItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FeatureItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *FeatureItemOK:
		return v, nil, nil, nil

	case *FeatureItemNotFound:
		return nil, v, nil, nil

	case *FeatureItemConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FeatureItemShort feature an item
Add a feature to an item.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : updated item
*/
func (a *Client) FeatureItemShort(params *FeatureItemParams, authInfo runtime.ClientAuthInfoWriter) (*FeatureItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFeatureItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "featureItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FeatureItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FeatureItemOK:
		return v, nil
	case *FeatureItemNotFound:
		return nil, v
	case *FeatureItemConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DefeatureItemShort instead.

DefeatureItem defeature an item
Remove a feature from an item.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : updated item
*/
func (a *Client) DefeatureItem(params *DefeatureItemParams, authInfo runtime.ClientAuthInfoWriter) (*DefeatureItemOK, *DefeatureItemNotFound, *DefeatureItemConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDefeatureItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "defeatureItem",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DefeatureItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DefeatureItemOK:
		return v, nil, nil, nil

	case *DefeatureItemNotFound:
		return nil, v, nil, nil

	case *DefeatureItemConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DefeatureItemShort defeature an item
Remove a feature from an item.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
  *  Returns : updated item
*/
func (a *Client) DefeatureItemShort(params *DefeatureItemParams, authInfo runtime.ClientAuthInfoWriter) (*DefeatureItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDefeatureItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "defeatureItem",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DefeatureItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DefeatureItemOK:
		return v, nil
	case *DefeatureItemNotFound:
		return nil, v
	case *DefeatureItemConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetLocaleItemShort instead.

GetLocaleItem get an item in locale
This API is used to get an item in specific locale. If item not exist in specific region, default region item will return.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : item data
*/
func (a *Client) GetLocaleItem(params *GetLocaleItemParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocaleItemOK, *GetLocaleItemNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLocaleItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLocaleItem",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/locale",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLocaleItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetLocaleItemOK:
		return v, nil, nil

	case *GetLocaleItemNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLocaleItemShort get an item in locale
This API is used to get an item in specific locale. If item not exist in specific region, default region item will return.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : item data
*/
func (a *Client) GetLocaleItemShort(params *GetLocaleItemParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocaleItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLocaleItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLocaleItem",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/locale",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLocaleItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLocaleItemOK:
		return v, nil
	case *GetLocaleItemNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateItemPurchaseConditionShort instead.

UpdateItemPurchaseCondition update item purchase condition
This API is used to update item purchase condition
*/
func (a *Client) UpdateItemPurchaseCondition(params *UpdateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemPurchaseConditionOK, *UpdateItemPurchaseConditionBadRequest, *UpdateItemPurchaseConditionNotFound, *UpdateItemPurchaseConditionConflict, *UpdateItemPurchaseConditionUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateItemPurchaseConditionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateItemPurchaseCondition",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/purchase/condition",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateItemPurchaseConditionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateItemPurchaseConditionOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateItemPurchaseConditionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateItemPurchaseConditionNotFound:
		return nil, nil, v, nil, nil, nil

	case *UpdateItemPurchaseConditionConflict:
		return nil, nil, nil, v, nil, nil

	case *UpdateItemPurchaseConditionUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateItemPurchaseConditionShort update item purchase condition
This API is used to update item purchase condition
*/
func (a *Client) UpdateItemPurchaseConditionShort(params *UpdateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemPurchaseConditionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateItemPurchaseConditionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateItemPurchaseCondition",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/purchase/condition",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateItemPurchaseConditionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateItemPurchaseConditionOK:
		return v, nil
	case *UpdateItemPurchaseConditionBadRequest:
		return nil, v
	case *UpdateItemPurchaseConditionNotFound:
		return nil, v
	case *UpdateItemPurchaseConditionConflict:
		return nil, v
	case *UpdateItemPurchaseConditionUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ReturnItemShort instead.

ReturnItem return item
 [SERVICE COMMUNICATION ONLY] This api is used for returning a published item while the item is maxCount limited, it will increase the sale available count if orderNo already acquired.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
*/
func (a *Client) ReturnItem(params *ReturnItemParams, authInfo runtime.ClientAuthInfoWriter) (*ReturnItemNoContent, *ReturnItemNotFound, *ReturnItemUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewReturnItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "returnItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/return",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ReturnItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ReturnItemNoContent:
		return v, nil, nil, nil

	case *ReturnItemNotFound:
		return nil, v, nil, nil

	case *ReturnItemUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ReturnItemShort return item
 [SERVICE COMMUNICATION ONLY] This api is used for returning a published item while the item is maxCount limited, it will increase the sale available count if orderNo already acquired.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=4 (UPDATE)
*/
func (a *Client) ReturnItemShort(params *ReturnItemParams, authInfo runtime.ClientAuthInfoWriter) (*ReturnItemNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewReturnItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "returnItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/return",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ReturnItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ReturnItemNoContent:
		return v, nil
	case *ReturnItemNotFound:
		return nil, v
	case *ReturnItemUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetItemByAppIDShort instead.

PublicGetItemByAppID get item by appid
This API is used to get item by appId.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
  *  Returns : the item with that appId
*/
func (a *Client) PublicGetItemByAppID(params *PublicGetItemByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemByAppIDOK, *PublicGetItemByAppIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetItemByAppIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetItemByAppId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetItemByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetItemByAppIDOK:
		return v, nil, nil

	case *PublicGetItemByAppIDNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetItemByAppIDShort get item by appid
This API is used to get item by appId.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
  *  Returns : the item with that appId
*/
func (a *Client) PublicGetItemByAppIDShort(params *PublicGetItemByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemByAppIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetItemByAppIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetItemByAppId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetItemByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetItemByAppIDOK:
		return v, nil
	case *PublicGetItemByAppIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicQueryItemsShort instead.

PublicQueryItems query items by criteria
This API is used to query items by criteria within a store. If item not exist in specific region, default region item will return.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
  *  Returns : the list of items
*/
func (a *Client) PublicQueryItems(params *PublicQueryItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryItemsOK, *PublicQueryItemsNotFound, *PublicQueryItemsUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicQueryItems",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicQueryItemsOK:
		return v, nil, nil, nil

	case *PublicQueryItemsNotFound:
		return nil, v, nil, nil

	case *PublicQueryItemsUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryItemsShort query items by criteria
This API is used to query items by criteria within a store. If item not exist in specific region, default region item will return.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
  *  Returns : the list of items
*/
func (a *Client) PublicQueryItemsShort(params *PublicQueryItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicQueryItems",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryItemsOK:
		return v, nil
	case *PublicQueryItemsNotFound:
		return nil, v
	case *PublicQueryItemsUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetItemBySkuShort instead.

PublicGetItemBySku get item by sku
This API is used to get the item by sku.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
  *  Returns : the item with sku
*/
func (a *Client) PublicGetItemBySku(params *PublicGetItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemBySkuOK, *PublicGetItemBySkuNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetItemBySkuParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetItemBySku",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetItemBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetItemBySkuOK:
		return v, nil, nil

	case *PublicGetItemBySkuNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetItemBySkuShort get item by sku
This API is used to get the item by sku.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
  *  Returns : the item with sku
*/
func (a *Client) PublicGetItemBySkuShort(params *PublicGetItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemBySkuOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetItemBySkuParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetItemBySku",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetItemBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetItemBySkuOK:
		return v, nil
	case *PublicGetItemBySkuNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetEstimatedPriceShort instead.

PublicGetEstimatedPrice get estimated price
This API is used to get estimated prices of item
*/
func (a *Client) PublicGetEstimatedPrice(params *PublicGetEstimatedPriceParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetEstimatedPriceOK, *PublicGetEstimatedPriceNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetEstimatedPriceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetEstimatedPrice",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/estimatedPrice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetEstimatedPriceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetEstimatedPriceOK:
		return v, nil, nil

	case *PublicGetEstimatedPriceNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetEstimatedPriceShort get estimated price
This API is used to get estimated prices of item
*/
func (a *Client) PublicGetEstimatedPriceShort(params *PublicGetEstimatedPriceParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetEstimatedPriceOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetEstimatedPriceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetEstimatedPrice",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/estimatedPrice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetEstimatedPriceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetEstimatedPriceOK:
		return v, nil
	case *PublicGetEstimatedPriceNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicBulkGetItemsShort instead.

PublicBulkGetItems bulk get locale items
This API is used to bulk get locale items. If item not exist in specific region, default region item will return.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store items)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store items)
  *  Returns : the list of items info
*/
func (a *Client) PublicBulkGetItems(params *PublicBulkGetItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetItemsOK, *PublicBulkGetItemsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkGetItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicBulkGetItems",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/locale/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkGetItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicBulkGetItemsOK:
		return v, nil, nil

	case *PublicBulkGetItemsNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkGetItemsShort bulk get locale items
This API is used to bulk get locale items. If item not exist in specific region, default region item will return.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store items)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store items)
  *  Returns : the list of items info
*/
func (a *Client) PublicBulkGetItemsShort(params *PublicBulkGetItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkGetItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicBulkGetItems",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/locale/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkGetItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkGetItemsOK:
		return v, nil
	case *PublicBulkGetItemsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicValidateItemPurchaseConditionShort instead.

PublicValidateItemPurchaseCondition validate user item purchase condition
This API is used to validate user item purchase condition
*/
func (a *Client) PublicValidateItemPurchaseCondition(params *PublicValidateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateItemPurchaseConditionOK, *PublicValidateItemPurchaseConditionUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicValidateItemPurchaseConditionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicValidateItemPurchaseCondition",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/purchase/conditions/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicValidateItemPurchaseConditionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicValidateItemPurchaseConditionOK:
		return v, nil, nil

	case *PublicValidateItemPurchaseConditionUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicValidateItemPurchaseConditionShort validate user item purchase condition
This API is used to validate user item purchase condition
*/
func (a *Client) PublicValidateItemPurchaseConditionShort(params *PublicValidateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateItemPurchaseConditionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicValidateItemPurchaseConditionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicValidateItemPurchaseCondition",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/purchase/conditions/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicValidateItemPurchaseConditionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicValidateItemPurchaseConditionOK:
		return v, nil
	case *PublicValidateItemPurchaseConditionUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicSearchItemsShort instead.

PublicSearchItems search items by keyword
This API is used to search items by keyword in title, description and long description, It's language constrained, also if item not exist in specific region, default region item will return.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
  *  Returns : the list of items
*/
func (a *Client) PublicSearchItems(params *PublicSearchItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchItemsOK, *PublicSearchItemsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSearchItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicSearchItems",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSearchItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSearchItemsOK:
		return v, nil, nil

	case *PublicSearchItemsNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSearchItemsShort search items by keyword
This API is used to search items by keyword in title, description and long description, It's language constrained, also if item not exist in specific region, default region item will return.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
  *  Returns : the list of items
*/
func (a *Client) PublicSearchItemsShort(params *PublicSearchItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSearchItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicSearchItems",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSearchItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSearchItemsOK:
		return v, nil
	case *PublicSearchItemsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetAppShort instead.

PublicGetApp get an app in locale
This API is used to get an app in locale. If app not exist in specific region, default region app will return.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store app)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store app)
  *  Returns : app data
*/
func (a *Client) PublicGetApp(params *PublicGetAppParams) (*PublicGetAppOK, *PublicGetAppNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetAppParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetApp",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/{itemId}/app/locale",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetAppReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetAppOK:
		return v, nil, nil

	case *PublicGetAppNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetAppShort get an app in locale
This API is used to get an app in locale. If app not exist in specific region, default region app will return.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store app)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store app)
  *  Returns : app data
*/
func (a *Client) PublicGetAppShort(params *PublicGetAppParams) (*PublicGetAppOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetAppParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetApp",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/{itemId}/app/locale",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetAppReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetAppOK:
		return v, nil
	case *PublicGetAppNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetItemDynamicDataShort instead.

PublicGetItemDynamicData get item dynamic data
Get item dynamic data for a published item.
Other detail info:

  * Returns : item dynamic data
*/
func (a *Client) PublicGetItemDynamicData(params *PublicGetItemDynamicDataParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemDynamicDataOK, *PublicGetItemDynamicDataNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetItemDynamicDataParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetItemDynamicData",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/{itemId}/dynamic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetItemDynamicDataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetItemDynamicDataOK:
		return v, nil, nil

	case *PublicGetItemDynamicDataNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetItemDynamicDataShort get item dynamic data
Get item dynamic data for a published item.
Other detail info:

  * Returns : item dynamic data
*/
func (a *Client) PublicGetItemDynamicDataShort(params *PublicGetItemDynamicDataParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemDynamicDataOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetItemDynamicDataParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetItemDynamicData",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/{itemId}/dynamic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetItemDynamicDataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetItemDynamicDataOK:
		return v, nil
	case *PublicGetItemDynamicDataNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetItemShort instead.

PublicGetItem get an item in locale
This API is used to get an item in locale. If item not exist in specific region, default region item will return.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
  *  Returns : item data
*/
func (a *Client) PublicGetItem(params *PublicGetItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemOK, *PublicGetItemNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetItem",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/{itemId}/locale",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetItemOK:
		return v, nil, nil

	case *PublicGetItemNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetItemShort get an item in locale
This API is used to get an item in locale. If item not exist in specific region, default region item will return.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
  *  Returns : item data
*/
func (a *Client) PublicGetItemShort(params *PublicGetItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetItemParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetItem",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/{itemId}/locale",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetItemOK:
		return v, nil
	case *PublicGetItemNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryItems1Short instead.

QueryItems1 query items by criteria
This API is used to query items by criteria within a store.

The behaviour for itemStatus query parameter:
* TRUE: Show only ACTIVE items
* FALSE: Show only INACTIVE items
* Not provided: show both ACTIVE and INACTIVE items
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the list of items
*/
func (a *Client) QueryItems1(params *QueryItems1Params, authInfo runtime.ClientAuthInfoWriter) (*QueryItems1OK, *QueryItems1NotFound, *QueryItems1UnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryItems1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryItems_1",
		Method:             "GET",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/items/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QueryItems1OK:
		return v, nil, nil, nil

	case *QueryItems1NotFound:
		return nil, v, nil, nil

	case *QueryItems1UnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryItems1Short query items by criteria
This API is used to query items by criteria within a store.

The behaviour for itemStatus query parameter:
* TRUE: Show only ACTIVE items
* FALSE: Show only INACTIVE items
* Not provided: show both ACTIVE and INACTIVE items
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
  *  Returns : the list of items
*/
func (a *Client) QueryItems1Short(params *QueryItems1Params, authInfo runtime.ClientAuthInfoWriter) (*QueryItems1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryItems1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryItems_1",
		Method:             "GET",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/items/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryItems1OK:
		return v, nil
	case *QueryItems1NotFound:
		return nil, v
	case *QueryItems1UnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}

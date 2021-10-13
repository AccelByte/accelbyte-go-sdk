// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type ItemService struct {
	PlatformService *platformclient.JusticePlatformService
	OauthService    *iam.OAuth20Service
}

func (itemService *ItemService) GetApp(namespace, itemId, storeId string, activeOnly *bool) (*platformclientmodels.FullAppInfo, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &item.GetAppParams{
		ActiveOnly: activeOnly,
		ItemID:     itemId,
		Namespace:  namespace,
		StoreID:    &storeId,
	}
	app, err := itemService.PlatformService.Item.GetApp(params, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return app.GetPayload(), nil
}

func (itemService *ItemService) UpdateApp(namespace, itemId, storeId string, appUpdate platformclientmodels.AppUpdate) (*platformclientmodels.FullAppInfo, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	updateAppParam := &item.UpdateAppParams{
		Body:      &appUpdate,
		ItemID:    itemId,
		Namespace: namespace,
		StoreID:   storeId,
	}
	ok, notFound, conflict, unprocessableEntity, err := itemService.PlatformService.Item.UpdateApp(updateAppParam, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (itemService *ItemService) GetItem(namespace, itemId string, storeId *string, activeOnly *bool) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.GetItemParams{
		ActiveOnly: activeOnly,
		ItemID:     itemId,
		Namespace:  namespace,
		StoreID:    storeId,
	}
	existingItem, notFound, err := itemService.PlatformService.Item.GetItem(params, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return existingItem.GetPayload(), nil
}

func (itemService *ItemService) UpdateItem(namespace, itemId, storeId string, itemUpdate platformclientmodels.ItemUpdate) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	updateItemParam := &item.UpdateItemParams{
		Body:      &itemUpdate,
		ItemID:    itemId,
		Namespace: namespace,
		StoreID:   storeId,
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := itemService.PlatformService.Item.UpdateItem(updateItemParam, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (itemService *ItemService) DeleteItem(namespace, itemId string, storeId *string) error {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	deleteItemParam := &item.DeleteItemParams{
		ItemID:    itemId,
		Namespace: namespace,
		StoreID:   storeId,
	}
	_, notFound, err := itemService.PlatformService.Item.DeleteItem(deleteItemParam, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (itemService *ItemService) GetItemBySku(namespace, sku string, storeId *string, activeOnly *bool) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.GetItemBySkuParams{
		ActiveOnly: activeOnly,
		Namespace:  namespace,
		Sku:        sku,
		StoreID:    storeId,
	}
	existingItem, notFound, err := itemService.PlatformService.Item.GetItemBySku(params, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return existingItem.GetPayload(), nil
}

func (itemService *ItemService) GetLocaleItemBySku(namespace, sku string, storeId, region, language *string, activeOnly, populateBundle *bool) (*platformclientmodels.PopulatedItemInfo, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.GetLocaleItemBySkuParams{
		ActiveOnly:     activeOnly,
		Language:       language,
		Namespace:      namespace,
		PopulateBundle: populateBundle,
		Region:         region,
		Sku:            sku,
		StoreID:        storeId,
	}
	existingItem, notFound, err := itemService.PlatformService.Item.GetLocaleItemBySku(params, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return existingItem.GetPayload(), nil
}

func (itemService *ItemService) ReturnItem(namespace, itemId string, itemReturnRequest platformclientmodels.ItemReturnRequest) error {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &item.ReturnItemParams{
		Body:      &itemReturnRequest,
		ItemID:    namespace,
		Namespace: itemId,
	}
	_, notFound, unprocessableEntity, err := itemService.PlatformService.Item.ReturnItem(param, client.BearerToken(*accessToken.AccessToken))

	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return unprocessableEntity
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}

	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (itemService *ItemService) FeatureItem(namespace, itemId, storeId, feature string) error {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &item.FeatureItemParams{Feature: feature, ItemID: itemId, Namespace: namespace, StoreID: storeId}
	_, notFound, conflict, err := itemService.PlatformService.Item.FeatureItem(param, client.BearerToken(*accessToken.AccessToken))

	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}

	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (itemService *ItemService) DefeatureItem(namespace, itemId, storeId, feature string) error {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &item.DefeatureItemParams{
		Feature:   feature,
		ItemID:    itemId,
		Namespace: namespace,
		StoreID:   storeId,
	}
	_, notFound, conflict, err := itemService.PlatformService.Item.DefeatureItem(param, client.BearerToken(*accessToken.AccessToken))

	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}

	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (itemService *ItemService) GetItemIdBySku(namespace, sku, storeId string, activeOnly *bool) (*platformclientmodels.ItemID, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.GetItemIDBySkuParams{
		ActiveOnly: activeOnly,
		Namespace:  namespace,
		Sku:        sku,
		StoreID:    &storeId,
	}
	existingItem, notFound, err := itemService.PlatformService.Item.GetItemIDBySku(params, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return existingItem.GetPayload(), nil
}

func (itemService *ItemService) GetItemByAppId(namespace, appId, storeId string, activeOnly *bool) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.GetItemByAppIDParams{
		ActiveOnly: activeOnly,
		AppID:      appId,
		Namespace:  namespace,
		StoreID:    &storeId,
	}
	existingItem, notFound, err := itemService.PlatformService.Item.GetItemByAppID(params, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return existingItem.GetPayload(), nil
}

func (itemService *ItemService) GetUncategorizedItem(namespace string, storeId, sortBy *string, activeOnly *bool, limit, offset *int32) (*platformclientmodels.FullItemPagingSlicedResult, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.QueryUncategorizedItemsParams{
		ActiveOnly: activeOnly,
		Limit:      limit,
		Namespace:  namespace,
		Offset:     offset,
		SortBy:     sortBy,
		StoreID:    storeId,
	}
	items, notFound, unprocessableEntity, err := itemService.PlatformService.Item.QueryUncategorizedItems(params, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return items.GetPayload(), nil
}

func (itemService *ItemService) GetItemByCriteria(namespace string, targetNamespace, appType, baseAppId, categoryPath, features,
	itemType, region, sortBy, tags, storeId, availableDate *string, activeOnly *bool, limit, offset *int32) (*platformclientmodels.FullItemPagingSlicedResult, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.QueryItemsParams{
		ActiveOnly:      activeOnly,
		AppType:         appType,
		AvailableDate:   availableDate,
		BaseAppID:       baseAppId,
		CategoryPath:    categoryPath,
		Features:        features,
		ItemType:        itemType,
		Limit:           limit,
		Namespace:       namespace,
		Offset:          offset,
		Region:          region,
		SortBy:          sortBy,
		StoreID:         storeId,
		Tags:            tags,
		TargetNamespace: targetNamespace,
	}
	items, notFound, unprocessableEntity, err := itemService.PlatformService.Item.QueryItems(params, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return items.GetPayload(), nil
}

func (itemService *ItemService) AcquireItem(namespace, itemId string, itemAcqRequest platformclientmodels.ItemAcquireRequest) (*platformclientmodels.ItemAcquireResult, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &item.AcquireItemParams{
		Body:      &itemAcqRequest,
		ItemID:    itemId,
		Namespace: namespace,
	}
	ok, notFound, err := itemService.PlatformService.Item.AcquireItem(param, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (itemService *ItemService) SearchItem(namespace, keyword, language string, storeId *string, activeOnly *bool, limit, offset *int32) (*platformclientmodels.FullItemPagingSlicedResult, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.SearchItemsParams{
		ActiveOnly: activeOnly,
		Keyword:    keyword,
		Language:   language,
		Limit:      limit,
		Namespace:  namespace,
		Offset:     offset,
		StoreID:    storeId,
	}
	items, err := itemService.PlatformService.Item.SearchItems(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return items.GetPayload(), nil
}

func (itemService *ItemService) EnableItem(namespace, itemId, storeId string) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.EnableItemParams{
		ItemID:    itemId,
		Namespace: namespace,
		StoreID:   storeId,
	}
	ok, notFound, conflict, err := itemService.PlatformService.Item.EnableItem(params, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (itemService *ItemService) BulkGetLocaleItem(namespace, itemIds string, language, region, storeId *string, activeOnly *bool) ([]*platformclientmodels.ItemInfo, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.BulkGetLocaleItemsParams{
		ActiveOnly: activeOnly,
		ItemIds:    itemIds,
		Language:   language,
		Namespace:  namespace,
		Region:     region,
		StoreID:    storeId,
	}
	items, err := itemService.PlatformService.Item.BulkGetLocaleItems(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return items.GetPayload(), nil
}

func (itemService *ItemService) GetItemDynamicData(namespace, itemId string) (*platformclientmodels.ItemDynamicDataInfo, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.GetItemDynamicDataParams{
		ItemID:    itemId,
		Namespace: namespace,
	}
	itemDynamicData, notFound, err := itemService.PlatformService.Item.GetItemDynamicData(params, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return itemDynamicData.GetPayload(), nil
}

func (itemService *ItemService) CreateItem(namespace, storeId string, itemCreate platformclientmodels.ItemCreate) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.CreateItemParams{
		Body:      &itemCreate,
		Namespace: namespace,
		StoreID:   storeId,
	}

	itemCreated, badRequest, notFound, conflict, unprocessableEntity, err :=
		itemService.PlatformService.Item.CreateItem(params, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return itemCreated.GetPayload(), nil
}

func (itemService *ItemService) SyncInGameItem(namespace, storeId string, inGameItemSync platformclientmodels.InGameItemSync) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.SyncInGameItemParams{
		Body:      &inGameItemSync,
		Namespace: namespace,
		StoreID:   storeId,
	}

	itemCreated, badRequest, notFound, conflict, unprocessableEntity, err :=
		itemService.PlatformService.Item.SyncInGameItem(params, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return itemCreated.GetPayload(), nil
}

func (itemService *ItemService) GetLocaleItem(namespace, itemId string, region, language, storeId *string, activeOnly, populateBundle *bool) (*platformclientmodels.PopulatedItemInfo, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.GetLocaleItemParams{
		ActiveOnly:     activeOnly,
		ItemID:         itemId,
		Language:       language,
		Namespace:      namespace,
		PopulateBundle: populateBundle,
		Region:         region,
		StoreID:        storeId,
	}

	ok, notFound, err := itemService.PlatformService.Item.GetLocaleItem(params, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (itemService *ItemService) GetBasicItemByFeature(namespace string, features []string, activeOnly *bool) ([]*platformclientmodels.BasicItem, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.ListBasicItemsByFeaturesParams{
		ActiveOnly: activeOnly,
		Features:   features,
		Namespace:  namespace,
	}

	itemsByFeatures, err := itemService.PlatformService.Item.ListBasicItemsByFeatures(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return itemsByFeatures.GetPayload(), nil
}

func (itemService *ItemService) DisableItem(namespace, itemId, storeId string) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := itemService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &item.DisableItemParams{
		ItemID:    itemId,
		Namespace: namespace,
		StoreID:   storeId,
	}
	ok, notFound, conflict, err := itemService.PlatformService.Item.DisableItem(params, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (itemService *ItemService) PublicGetApp(namespace, itemId string, storeId, language, region *string) (*platformclientmodels.AppInfo, error) {
	params := &item.PublicGetAppParams{
		ItemID:    itemId,
		Language:  language,
		Namespace: namespace,
		Region:    region,
		StoreID:   storeId,
	}
	app, notFound, err := itemService.PlatformService.Item.PublicGetApp(params)

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return app.GetPayload(), nil
}

func (itemService *ItemService) PublicGetItemBySku(namespace, sku string, storeId, region, language *string) (*platformclientmodels.ItemInfo, error) {
	params := &item.PublicGetItemBySkuParams{
		Language:  language,
		Namespace: namespace,
		Region:    region,
		Sku:       sku,
		StoreID:   storeId,
	}
	existingItem, notFound, err := itemService.PlatformService.Item.PublicGetItemBySku(params)

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return existingItem.GetPayload(), nil
}

func (itemService *ItemService) PublicSearchItem(namespace, keyword, language string, storeId, region *string, limit, offset *int32) (*platformclientmodels.ItemPagingSlicedResult, error) {
	params := &item.PublicSearchItemsParams{
		Keyword:   keyword,
		Language:  language,
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		Region:    region,
		StoreID:   storeId,
	}
	items, err := itemService.PlatformService.Item.PublicSearchItems(params)

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return items.GetPayload(), nil
}

func (itemService *ItemService) PublicGetItemByAppId(namespace, appId string, storeId, language, region *string) (*platformclientmodels.ItemInfo, error) {
	params := &item.PublicGetItemByAppIDParams{
		AppID:     appId,
		Language:  language,
		Namespace: namespace,
		Region:    region,
		StoreID:   storeId,
	}
	existingItem, notFound, err := itemService.PlatformService.Item.PublicGetItemByAppID(params)

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return existingItem.GetPayload(), nil
}

func (itemService *ItemService) PublicGetItem(namespace, itemId string, region, storeId, language *string, populateBundle *bool) (*platformclientmodels.PopulatedItemInfo, error) {
	param := &item.PublicGetItemParams{
		ItemID:         itemId,
		Language:       language,
		Namespace:      namespace,
		PopulateBundle: populateBundle,
		Region:         region,
		StoreID:        storeId,
	}
	ok, notFound, err := itemService.PlatformService.Item.PublicGetItem(param)
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (itemService *ItemService) PublicQueryItems(namespace string, language, appType, baseAppId, categoryPath,
	features, itemType, region, sortBy, tags, storeId *string, limit, offset *int32) (*platformclientmodels.ItemPagingSlicedResult, error) {

	params := &item.PublicQueryItemsParams{
		AppType:      appType,
		BaseAppID:    baseAppId,
		CategoryPath: categoryPath,
		Features:     features,
		ItemType:     itemType,
		Language:     language,
		Limit:        limit,
		Namespace:    namespace,
		Offset:       offset,
		Region:       region,
		SortBy:       sortBy,
		StoreID:      storeId,
		Tags:         tags,
	}
	items, notFound, unprocessableEntity, err := itemService.PlatformService.Item.PublicQueryItems(params)

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return items.GetPayload(), nil
}

func (itemService *ItemService) PublicGetItemDynamicData(namespace, itemId string) (*platformclientmodels.ItemDynamicDataInfo, error) {
	params := &item.PublicGetItemDynamicDataParams{
		ItemID:    itemId,
		Namespace: namespace,
	}
	dynamicData, notFound, err := itemService.PlatformService.Item.PublicGetItemDynamicData(params)
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return dynamicData.GetPayload(), nil
}

func (itemService *ItemService) PublicGetBulkItems(namespace, itemIds string, language, region, storeId *string) ([]*platformclientmodels.ItemInfo, error) {
	params := &item.PublicBulkGetItemsParams{
		ItemIds:   itemIds,
		Language:  language,
		Namespace: namespace,
		Region:    region,
		StoreID:   storeId,
	}
	items, err := itemService.PlatformService.Item.PublicBulkGetItems(params)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return items.GetPayload(), nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package platform

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type ItemService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (e *ItemService) GetApp(input *item.GetAppParams) (*platformclientmodels.FullAppInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	app, err := e.Client.Item.GetApp(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return app.GetPayload(), nil
}

func (e *ItemService) UpdateApp(input *item.UpdateAppParams) (*platformclientmodels.FullAppInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := e.Client.Item.UpdateApp(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) GetItem(input *item.GetItemParams) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	existingItem, notFound, err := e.Client.Item.GetItem(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) UpdateItem(input *item.UpdateItemParams) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := e.Client.Item.UpdateItem(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) DeleteItem(input *item.DeleteItemParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := e.Client.Item.DeleteItem(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) GetItemBySku(input *item.GetItemBySkuParams) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	existingItem, notFound, err := e.Client.Item.GetItemBySku(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) GetLocaleItemBySku(input *item.GetLocaleItemBySkuParams) (*platformclientmodels.PopulatedItemInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	existingItem, notFound, err := e.Client.Item.GetLocaleItemBySku(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) ReturnItem(input *item.ReturnItemParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, unprocessableEntity, err := e.Client.Item.ReturnItem(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) FeatureItem(input *item.FeatureItemParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, err := e.Client.Item.FeatureItem(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) DefeatureItem(input *item.DefeatureItemParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, err := e.Client.Item.DefeatureItem(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) GetItemIdBySku(input *item.GetItemIDBySkuParams) (*platformclientmodels.ItemID, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	existingItem, notFound, err := e.Client.Item.GetItemIDBySku(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) GetItemByAppId(input *item.GetItemByAppIDParams) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	existingItem, notFound, err := e.Client.Item.GetItemByAppID(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) GetUncategorizedItem(input *item.QueryUncategorizedItemsParams) (*platformclientmodels.FullItemPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	items, notFound, unprocessableEntity, err := e.Client.Item.QueryUncategorizedItems(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) GetItemByCriteria(input *item.QueryItemsParams) (*platformclientmodels.FullItemPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	items, notFound, unprocessableEntity, err := e.Client.Item.QueryItems(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) AcquireItem(input *item.AcquireItemParams) (*platformclientmodels.ItemAcquireResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Item.AcquireItem(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) SearchItem(input *item.SearchItemsParams) (*platformclientmodels.FullItemPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	items, err := e.Client.Item.SearchItems(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return items.GetPayload(), nil
}

func (e *ItemService) EnableItem(input *item.EnableItemParams) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := e.Client.Item.EnableItem(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) BulkGetLocaleItem(input *item.BulkGetLocaleItemsParams) ([]*platformclientmodels.ItemInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	items, err := e.Client.Item.BulkGetLocaleItems(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return items.GetPayload(), nil
}

func (e *ItemService) GetItemDynamicData(input *item.GetItemDynamicDataParams) (*platformclientmodels.ItemDynamicDataInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	itemDynamicData, notFound, err := e.Client.Item.GetItemDynamicData(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) CreateItem(input *item.CreateItemParams) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	itemCreated, badRequest, notFound, conflict, unprocessableEntity, err :=
		e.Client.Item.CreateItem(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) SyncInGameItem(input *item.SyncInGameItemParams) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	itemCreated, badRequest, notFound, conflict, unprocessableEntity, err :=
		e.Client.Item.SyncInGameItem(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) GetLocaleItem(input *item.GetLocaleItemParams) (*platformclientmodels.PopulatedItemInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Item.GetLocaleItem(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) GetBasicItemByFeature(input *item.ListBasicItemsByFeaturesParams) ([]*platformclientmodels.BasicItem, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	itemsByFeatures, err := e.Client.Item.ListBasicItemsByFeatures(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return itemsByFeatures.GetPayload(), nil
}

func (e *ItemService) DisableItem(input *item.DisableItemParams) (*platformclientmodels.FullItemInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := e.Client.Item.DisableItem(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *ItemService) PublicGetApp(input *item.PublicGetAppParams) (*platformclientmodels.AppInfo, error) {
	app, notFound, err := e.Client.Item.PublicGetApp(input)
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

func (e *ItemService) PublicGetItemBySku(input *item.PublicGetItemBySkuParams) (*platformclientmodels.ItemInfo, error) {
	existingItem, notFound, err := e.Client.Item.PublicGetItemBySku(input)
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

func (e *ItemService) PublicSearchItem(input *item.PublicSearchItemsParams) (*platformclientmodels.ItemPagingSlicedResult, error) {
	items, err := e.Client.Item.PublicSearchItems(input)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return items.GetPayload(), nil
}

func (e *ItemService) PublicGetItemByAppId(input *item.PublicGetItemByAppIDParams) (*platformclientmodels.ItemInfo, error) {
	existingItem, notFound, err := e.Client.Item.PublicGetItemByAppID(input)
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

func (e *ItemService) PublicGetItem(input *item.PublicGetItemParams) (*platformclientmodels.PopulatedItemInfo, error) {
	ok, notFound, err := e.Client.Item.PublicGetItem(input)
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

func (e *ItemService) PublicQueryItems(input *item.PublicQueryItemsParams) (*platformclientmodels.ItemPagingSlicedResult, error) {
	items, notFound, unprocessableEntity, err := e.Client.Item.PublicQueryItems(input)
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

func (e *ItemService) PublicGetItemDynamicData(input *item.PublicGetItemDynamicDataParams) (*platformclientmodels.ItemDynamicDataInfo, error) {
	dynamicData, notFound, err := e.Client.Item.PublicGetItemDynamicData(input)
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

func (e *ItemService) PublicGetBulkItems(input *item.PublicBulkGetItemsParams) ([]*platformclientmodels.ItemInfo, error) {
	items, err := e.Client.Item.PublicBulkGetItems(input)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return items.GetPayload(), nil
}

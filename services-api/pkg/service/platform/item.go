// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type ItemService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use SyncInGameItemShort instead
func (i *ItemService) SyncInGameItem(input *item.SyncInGameItemParams) (*platformclientmodels.FullItemInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := i.Client.Item.SyncInGameItem(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateItemShort instead
func (i *ItemService) CreateItem(input *item.CreateItemParams) (*platformclientmodels.FullItemInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, unprocessableEntity, err := i.Client.Item.CreateItem(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use GetItemByAppIDShort instead
func (i *ItemService) GetItemByAppID(input *item.GetItemByAppIDParams) (*platformclientmodels.FullItemInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := i.Client.Item.GetItemByAppID(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use QueryItemsShort instead
func (i *ItemService) QueryItems(input *item.QueryItemsParams) (*platformclientmodels.FullItemPagingSlicedResult, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, unprocessableEntity, err := i.Client.Item.QueryItems(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ListBasicItemsByFeaturesShort instead
func (i *ItemService) ListBasicItemsByFeatures(input *item.ListBasicItemsByFeaturesParams) ([]*platformclientmodels.BasicItem, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Item.ListBasicItemsByFeatures(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetItemBySkuShort instead
func (i *ItemService) GetItemBySku(input *item.GetItemBySkuParams) (*platformclientmodels.FullItemInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := i.Client.Item.GetItemBySku(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetLocaleItemBySkuShort instead
func (i *ItemService) GetLocaleItemBySku(input *item.GetLocaleItemBySkuParams) (*platformclientmodels.PopulatedItemInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := i.Client.Item.GetLocaleItemBySku(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetItemIDBySkuShort instead
func (i *ItemService) GetItemIDBySku(input *item.GetItemIDBySkuParams) (*platformclientmodels.ItemID, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := i.Client.Item.GetItemIDBySku(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkGetLocaleItemsShort instead
func (i *ItemService) BulkGetLocaleItems(input *item.BulkGetLocaleItemsParams) ([]*platformclientmodels.ItemInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := i.Client.Item.BulkGetLocaleItems(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use SearchItemsShort instead
func (i *ItemService) SearchItems(input *item.SearchItemsParams) (*platformclientmodels.FullItemPagingSlicedResult, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := i.Client.Item.SearchItems(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use QueryUncategorizedItemsShort instead
func (i *ItemService) QueryUncategorizedItems(input *item.QueryUncategorizedItemsParams) (*platformclientmodels.FullItemPagingSlicedResult, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, unprocessableEntity, err := i.Client.Item.QueryUncategorizedItems(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetItemShort instead
func (i *ItemService) GetItem(input *item.GetItemParams) (*platformclientmodels.FullItemInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := i.Client.Item.GetItem(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateItemShort instead
func (i *ItemService) UpdateItem(input *item.UpdateItemParams) (*platformclientmodels.FullItemInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := i.Client.Item.UpdateItem(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteItemShort instead
func (i *ItemService) DeleteItem(input *item.DeleteItemParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := i.Client.Item.DeleteItem(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AcquireItemShort instead
func (i *ItemService) AcquireItem(input *item.AcquireItemParams) (*platformclientmodels.ItemAcquireResult, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := i.Client.Item.AcquireItem(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetAppShort instead
func (i *ItemService) GetApp(input *item.GetAppParams) (*platformclientmodels.FullAppInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Item.GetApp(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateAppShort instead
func (i *ItemService) UpdateApp(input *item.UpdateAppParams) (*platformclientmodels.FullAppInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := i.Client.Item.UpdateApp(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DisableItemShort instead
func (i *ItemService) DisableItem(input *item.DisableItemParams) (*platformclientmodels.FullItemInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := i.Client.Item.DisableItem(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetItemDynamicDataShort instead
func (i *ItemService) GetItemDynamicData(input *item.GetItemDynamicDataParams) (*platformclientmodels.ItemDynamicDataInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := i.Client.Item.GetItemDynamicData(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use EnableItemShort instead
func (i *ItemService) EnableItem(input *item.EnableItemParams) (*platformclientmodels.FullItemInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := i.Client.Item.EnableItem(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use FeatureItemShort instead
func (i *ItemService) FeatureItem(input *item.FeatureItemParams) (*platformclientmodels.FullItemInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := i.Client.Item.FeatureItem(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DefeatureItemShort instead
func (i *ItemService) DefeatureItem(input *item.DefeatureItemParams) (*platformclientmodels.FullItemInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := i.Client.Item.DefeatureItem(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetLocaleItemShort instead
func (i *ItemService) GetLocaleItem(input *item.GetLocaleItemParams) (*platformclientmodels.PopulatedItemInfo, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := i.Client.Item.GetLocaleItem(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ReturnItemShort instead
func (i *ItemService) ReturnItem(input *item.ReturnItemParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, unprocessableEntity, err := i.Client.Item.ReturnItem(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return notFound
	}
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublicGetItemByAppIDShort instead
func (i *ItemService) PublicGetItemByAppID(input *item.PublicGetItemByAppIDParams) (*platformclientmodels.ItemInfo, error) {
	ok, notFound, err := i.Client.Item.PublicGetItemByAppID(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicQueryItemsShort instead
func (i *ItemService) PublicQueryItems(input *item.PublicQueryItemsParams) (*platformclientmodels.ItemPagingSlicedResult, error) {
	ok, notFound, unprocessableEntity, err := i.Client.Item.PublicQueryItems(input)
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetItemBySkuShort instead
func (i *ItemService) PublicGetItemBySku(input *item.PublicGetItemBySkuParams) (*platformclientmodels.ItemInfo, error) {
	ok, notFound, err := i.Client.Item.PublicGetItemBySku(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicBulkGetItemsShort instead
func (i *ItemService) PublicBulkGetItems(input *item.PublicBulkGetItemsParams) ([]*platformclientmodels.ItemInfo, error) {
	ok, notFound, err := i.Client.Item.PublicBulkGetItems(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicSearchItemsShort instead
func (i *ItemService) PublicSearchItems(input *item.PublicSearchItemsParams) (*platformclientmodels.ItemPagingSlicedResult, error) {
	ok, notFound, err := i.Client.Item.PublicSearchItems(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetAppShort instead
func (i *ItemService) PublicGetApp(input *item.PublicGetAppParams) (*platformclientmodels.AppInfo, error) {
	ok, notFound, err := i.Client.Item.PublicGetApp(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetItemDynamicDataShort instead
func (i *ItemService) PublicGetItemDynamicData(input *item.PublicGetItemDynamicDataParams) (*platformclientmodels.ItemDynamicDataInfo, error) {
	ok, notFound, err := i.Client.Item.PublicGetItemDynamicData(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetItemShort instead
func (i *ItemService) PublicGetItem(input *item.PublicGetItemParams) (*platformclientmodels.PopulatedItemInfo, error) {
	ok, notFound, err := i.Client.Item.PublicGetItem(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [UPDATE]'], 'authorization': []}]
func (i *ItemService) SyncInGameItemShort(input *item.SyncInGameItemParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullItemInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.SyncInGameItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [CREATE]'], 'authorization': []}]
func (i *ItemService) CreateItemShort(input *item.CreateItemParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullItemInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	created, err := i.Client.Item.CreateItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [READ]'], 'authorization': []}]
func (i *ItemService) GetItemByAppIDShort(input *item.GetItemByAppIDParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullItemInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.GetItemByAppIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [READ]'], 'authorization': []}]
func (i *ItemService) QueryItemsShort(input *item.QueryItemsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullItemPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.QueryItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [READ]'], 'authorization': []}]
func (i *ItemService) ListBasicItemsByFeaturesShort(input *item.ListBasicItemsByFeaturesParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*platformclientmodels.BasicItem, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.ListBasicItemsByFeaturesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [READ]'], 'authorization': []}]
func (i *ItemService) GetItemBySkuShort(input *item.GetItemBySkuParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullItemInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.GetItemBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [READ]'], 'authorization': []}]
func (i *ItemService) GetLocaleItemBySkuShort(input *item.GetLocaleItemBySkuParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.PopulatedItemInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.GetLocaleItemBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [READ]'], 'authorization': []}]
func (i *ItemService) GetItemIDBySkuShort(input *item.GetItemIDBySkuParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.ItemID, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.GetItemIDBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [READ]'], 'authorization': []}]
func (i *ItemService) BulkGetLocaleItemsShort(input *item.BulkGetLocaleItemsParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*platformclientmodels.ItemInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.BulkGetLocaleItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [READ]'], 'authorization': []}]
func (i *ItemService) SearchItemsShort(input *item.SearchItemsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullItemPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.SearchItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [READ]'], 'authorization': []}]
func (i *ItemService) QueryUncategorizedItemsShort(input *item.QueryUncategorizedItemsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullItemPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.QueryUncategorizedItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [READ]'], 'authorization': []}]
func (i *ItemService) GetItemShort(input *item.GetItemParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullItemInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.GetItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [UPDATE]'], 'authorization': []}]
func (i *ItemService) UpdateItemShort(input *item.UpdateItemParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullItemInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.UpdateItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [DELETE]'], 'authorization': []}]
func (i *ItemService) DeleteItemShort(input *item.DeleteItemParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	_, err := i.Client.Item.DeleteItemShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [UPDATE]'], 'authorization': []}]
func (i *ItemService) AcquireItemShort(input *item.AcquireItemParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.ItemAcquireResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.AcquireItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [READ]'], 'authorization': []}]
func (i *ItemService) GetAppShort(input *item.GetAppParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullAppInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.GetAppShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [UPDATE]'], 'authorization': []}]
func (i *ItemService) UpdateAppShort(input *item.UpdateAppParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullAppInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.UpdateAppShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [UPDATE]'], 'authorization': []}]
func (i *ItemService) DisableItemShort(input *item.DisableItemParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullItemInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.DisableItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [READ]'], 'authorization': []}]
func (i *ItemService) GetItemDynamicDataShort(input *item.GetItemDynamicDataParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.ItemDynamicDataInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.GetItemDynamicDataShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [UPDATE]'], 'authorization': []}]
func (i *ItemService) EnableItemShort(input *item.EnableItemParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullItemInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.EnableItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [UPDATE]'], 'authorization': []}]
func (i *ItemService) FeatureItemShort(input *item.FeatureItemParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullItemInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.FeatureItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [UPDATE]'], 'authorization': []}]
func (i *ItemService) DefeatureItemShort(input *item.DefeatureItemParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullItemInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.DefeatureItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [READ]'], 'authorization': []}]
func (i *ItemService) GetLocaleItemShort(input *item.GetLocaleItemParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.PopulatedItemInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.Item.GetLocaleItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:ITEM [UPDATE]'], 'authorization': []}]
func (i *ItemService) ReturnItemShort(input *item.ReturnItemParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	_, err := i.Client.Item.ReturnItemShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// None
func (i *ItemService) PublicGetItemByAppIDShort(input *item.PublicGetItemByAppIDParams) (*platformclientmodels.ItemInfo, error) {
	ok, err := i.Client.Item.PublicGetItemByAppIDShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// None
func (i *ItemService) PublicQueryItemsShort(input *item.PublicQueryItemsParams) (*platformclientmodels.ItemPagingSlicedResult, error) {
	ok, err := i.Client.Item.PublicQueryItemsShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// None
func (i *ItemService) PublicGetItemBySkuShort(input *item.PublicGetItemBySkuParams) (*platformclientmodels.ItemInfo, error) {
	ok, err := i.Client.Item.PublicGetItemBySkuShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// None
func (i *ItemService) PublicBulkGetItemsShort(input *item.PublicBulkGetItemsParams) ([]*platformclientmodels.ItemInfo, error) {
	ok, err := i.Client.Item.PublicBulkGetItemsShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// None
func (i *ItemService) PublicSearchItemsShort(input *item.PublicSearchItemsParams) (*platformclientmodels.ItemPagingSlicedResult, error) {
	ok, err := i.Client.Item.PublicSearchItemsShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// None
func (i *ItemService) PublicGetAppShort(input *item.PublicGetAppParams) (*platformclientmodels.AppInfo, error) {
	ok, err := i.Client.Item.PublicGetAppShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// None
func (i *ItemService) PublicGetItemDynamicDataShort(input *item.PublicGetItemDynamicDataParams) (*platformclientmodels.ItemDynamicDataInfo, error) {
	ok, err := i.Client.Item.PublicGetItemDynamicDataShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// None
func (i *ItemService) PublicGetItemShort(input *item.PublicGetItemParams) (*platformclientmodels.PopulatedItemInfo, error) {
	ok, err := i.Client.Item.PublicGetItemShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

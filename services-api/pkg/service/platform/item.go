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
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type ItemService struct {
	Client                 *platformclient.JusticePlatformService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (i *ItemService) GetAuthSession() auth.Session {
	if i.RefreshTokenRepository != nil {
		return auth.Session{
			i.TokenRepository,
			i.ConfigRepository,
			i.RefreshTokenRepository,
		}
	}

	return auth.Session{
		i.TokenRepository,
		i.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
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

// Deprecated: Use GetBulkItemIDBySkusShort instead
func (i *ItemService) GetBulkItemIDBySkus(input *item.GetBulkItemIDBySkusParams) ([]*platformclientmodels.ItemID, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.Item.GetBulkItemIDBySkus(input, client.BearerToken(*token.AccessToken))
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

func (i *ItemService) SyncInGameItemShort(input *item.SyncInGameItemParams) (*platformclientmodels.FullItemInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.SyncInGameItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) CreateItemShort(input *item.CreateItemParams) (*platformclientmodels.FullItemInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := i.Client.Item.CreateItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (i *ItemService) GetItemByAppIDShort(input *item.GetItemByAppIDParams) (*platformclientmodels.FullItemInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.GetItemByAppIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) QueryItemsShort(input *item.QueryItemsParams) (*platformclientmodels.FullItemPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.QueryItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) ListBasicItemsByFeaturesShort(input *item.ListBasicItemsByFeaturesParams) ([]*platformclientmodels.BasicItem, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.ListBasicItemsByFeaturesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) GetItemBySkuShort(input *item.GetItemBySkuParams) (*platformclientmodels.FullItemInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.GetItemBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) GetLocaleItemBySkuShort(input *item.GetLocaleItemBySkuParams) (*platformclientmodels.PopulatedItemInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.GetLocaleItemBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) GetItemIDBySkuShort(input *item.GetItemIDBySkuParams) (*platformclientmodels.ItemID, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.GetItemIDBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) GetBulkItemIDBySkusShort(input *item.GetBulkItemIDBySkusParams) ([]*platformclientmodels.ItemID, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.GetBulkItemIDBySkusShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) BulkGetLocaleItemsShort(input *item.BulkGetLocaleItemsParams) ([]*platformclientmodels.ItemInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.BulkGetLocaleItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) SearchItemsShort(input *item.SearchItemsParams) (*platformclientmodels.FullItemPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.SearchItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) QueryUncategorizedItemsShort(input *item.QueryUncategorizedItemsParams) (*platformclientmodels.FullItemPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.QueryUncategorizedItemsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) GetItemShort(input *item.GetItemParams) (*platformclientmodels.FullItemInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.GetItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) UpdateItemShort(input *item.UpdateItemParams) (*platformclientmodels.FullItemInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.UpdateItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) DeleteItemShort(input *item.DeleteItemParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Item.DeleteItemShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *ItemService) AcquireItemShort(input *item.AcquireItemParams) (*platformclientmodels.ItemAcquireResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.AcquireItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) GetAppShort(input *item.GetAppParams) (*platformclientmodels.FullAppInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.GetAppShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) UpdateAppShort(input *item.UpdateAppParams) (*platformclientmodels.FullAppInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.UpdateAppShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) DisableItemShort(input *item.DisableItemParams) (*platformclientmodels.FullItemInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.DisableItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) GetItemDynamicDataShort(input *item.GetItemDynamicDataParams) (*platformclientmodels.ItemDynamicDataInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.GetItemDynamicDataShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) EnableItemShort(input *item.EnableItemParams) (*platformclientmodels.FullItemInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.EnableItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) FeatureItemShort(input *item.FeatureItemParams) (*platformclientmodels.FullItemInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.FeatureItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) DefeatureItemShort(input *item.DefeatureItemParams) (*platformclientmodels.FullItemInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.DefeatureItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) GetLocaleItemShort(input *item.GetLocaleItemParams) (*platformclientmodels.PopulatedItemInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := i.Client.Item.GetLocaleItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) ReturnItemShort(input *item.ReturnItemParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  i.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := i.Client.Item.ReturnItemShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *ItemService) PublicGetItemByAppIDShort(input *item.PublicGetItemByAppIDParams) (*platformclientmodels.ItemInfo, error) {
	ok, err := i.Client.Item.PublicGetItemByAppIDShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) PublicQueryItemsShort(input *item.PublicQueryItemsParams) (*platformclientmodels.ItemPagingSlicedResult, error) {
	ok, err := i.Client.Item.PublicQueryItemsShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) PublicGetItemBySkuShort(input *item.PublicGetItemBySkuParams) (*platformclientmodels.ItemInfo, error) {
	ok, err := i.Client.Item.PublicGetItemBySkuShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) PublicBulkGetItemsShort(input *item.PublicBulkGetItemsParams) ([]*platformclientmodels.ItemInfo, error) {
	ok, err := i.Client.Item.PublicBulkGetItemsShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) PublicSearchItemsShort(input *item.PublicSearchItemsParams) (*platformclientmodels.ItemPagingSlicedResult, error) {
	ok, err := i.Client.Item.PublicSearchItemsShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) PublicGetAppShort(input *item.PublicGetAppParams) (*platformclientmodels.AppInfo, error) {
	ok, err := i.Client.Item.PublicGetAppShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) PublicGetItemDynamicDataShort(input *item.PublicGetItemDynamicDataParams) (*platformclientmodels.ItemDynamicDataInfo, error) {
	ok, err := i.Client.Item.PublicGetItemDynamicDataShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ItemService) PublicGetItemShort(input *item.PublicGetItemParams) (*platformclientmodels.PopulatedItemInfo, error) {
	ok, err := i.Client.Item.PublicGetItemShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

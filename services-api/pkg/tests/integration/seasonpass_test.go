// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"os"
	"strings"
	"testing"
	"time"

	"github.com/google/uuid"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"

	"github.com/stretchr/testify/assert"

	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
)

var (
	accelbyteNamespace       = "accelbyte"
	accelbyteCurrencyCode    = "USD"
	namespace                = os.Getenv("AB_NAMESPACE")
	configRepo               = auth.DefaultConfigRepositoryImpl()
	seasonpassClient         = factory.NewSeasonpassClient(configRepo)
	seasonpassPlatformClient = factory.NewPlatformClient(configRepo)
	seasonService            = &seasonpass.SeasonService{
		Client:          seasonpassClient,
		TokenRepository: tokenRepository,
	}
	storeTitle            = "Go Extend SDK Season Store"
	seasonCategoryService = &platform.CategoryService{
		Client:          seasonpassPlatformClient,
		TokenRepository: tokenRepository,
	}
	seasonItemService = &platform.ItemService{
		Client:          seasonpassPlatformClient,
		TokenRepository: tokenRepository,
	}
	seasonStoreService = &platform.StoreService{
		Client:          seasonpassPlatformClient,
		TokenRepository: tokenRepository,
	}
	seasonCreateStore = &platformclientmodels.StoreCreate{
		DefaultLanguage: "en-US",
		DefaultRegion:   "US",
		Description:     storeTitle,
		Title:           &storeTitle,
	}
)

func deleteAllDraftStores() error {
	inputListStores := store.ListStoresParams{
		Namespace: namespace,
	}

	listStoresOk, err := seasonStoreService.ListStoresShort(&inputListStores)
	if err != nil {
		return err
	}

	for _, storeInfo := range listStoresOk {
		if storeInfo.Published != nil && *storeInfo.Published == true {
			continue
		}
		inputDeleteStore := store.DeleteStoreParams{
			Namespace: namespace,
			StoreID:   *storeInfo.StoreID,
		}
		_, err = seasonStoreService.DeleteStoreShort(&inputDeleteStore)
		if err != nil {
			return err
		}
	}

	return nil
}

func getStore() (*platformclientmodels.StoreInfo, error) {
	inputListStores := store.ListStoresParams{
		Namespace: namespace,
	}

	listStoresOk, err := seasonStoreService.ListStoresShort(&inputListStores)
	if err != nil {
		return nil, err
	}

	if len(listStoresOk) > 0 {
		return listStoresOk[0], err
	}

	inputCreateStore := store.CreateStoreParams{
		Namespace: namespace,
		Body:      seasonCreateStore,
	}
	createStoreOk, err := seasonStoreService.CreateStoreShort(&inputCreateStore)
	if err != nil {
		return nil, err
	}

	return createStoreOk, nil
}

func getStoreTierItemID(storeID string) (*string, error) {
	// Create Store Category
	seasonStoreCategoryPath := "/" + strings.ReplaceAll(uuid.NewString(), "-", "")
	seasonStoreCategoryLocalizationDisplayNames := make(map[string]string)
	seasonStoreCategoryLocalizationDisplayNames["en-US"] = seasonStoreCategoryPath
	categoryCreate := platformclientmodels.CategoryCreate{
		CategoryPath:             &seasonStoreCategoryPath,
		LocalizationDisplayNames: seasonStoreCategoryLocalizationDisplayNames,
	}
	inputCreateCategory := category.CreateCategoryParams{
		Namespace: namespace,
		StoreID:   storeID,
		Body:      &categoryCreate,
	}
	_, err := seasonCategoryService.CreateCategoryShort(&inputCreateCategory)
	if err != nil {
		return nil, err
	}

	// Create Store Item (SEASON TIER)
	itemCurrencyType := platformclientmodels.RegionDataItemCurrencyTypeREAL
	itemName := "Item_SEASON_Tier1"
	itemEntitlementType := platformclientmodels.ItemCreateEntitlementTypeDURABLE
	itemLocalization := make(map[string]platformclientmodels.Localization)
	itemLocalization["en-US"] = platformclientmodels.Localization{
		Title: &itemName,
	}
	itemRegionData := make(map[string][]platformclientmodels.RegionDataItem)
	itemRegionData["US"] = []platformclientmodels.RegionDataItem{
		{
			CurrencyCode:      &accelbyteCurrencyCode,
			CurrencyNamespace: &accelbyteNamespace,
			CurrencyType:      &itemCurrencyType,
			Price:             int32(0),
		},
	}
	itemSeasonType := platformclientmodels.ItemCreateSeasonTypeTIER
	itemType := platformclientmodels.ItemCreateItemTypeSEASON
	createItem := platformclientmodels.ItemCreate{
		CategoryPath:    &seasonStoreCategoryPath,
		EntitlementType: &itemEntitlementType,
		ItemType:        &itemType,
		Localizations:   itemLocalization,
		Name:            &itemName,
		RegionData:      itemRegionData,
		SeasonType:      itemSeasonType,
	}
	inputCreateItem := item.CreateItemParams{
		Namespace: namespace,
		StoreID:   storeID,
		Body:      &createItem,
	}
	createItemOk, err := seasonItemService.CreateItemShort(&inputCreateItem)
	if err != nil {
		return nil, err
	}

	return createItemOk.ItemID, nil
}

func TestIntegrationSeason(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Create/Get stores
	seasonStore, err := getStore()
	if err != nil {
		t.Skip("failed to get a store")

		return
	}
	seasonStoreID := seasonStore.StoreID
	// ESAC

	defer func() {
		// This deletes all draft stores and the ff:
		// - any created Store Category
		// - any created Store Item
		_ = deleteAllDraftStores()
	}()

	// CASE Get store item tier ID
	seasonItemTierID, err := getStoreTierItemID(*seasonStoreID)
	if err != nil {
		t.Skip("failed to get store tier item id")

		return
	}
	// ESAC

	// CASE Create a season
	timeNow := time.Now()
	seasonName := "GoServerSDKTestSeason"
	seasonRequiredExp := int32(100)
	seasonTierItemID := seasonItemTierID
	seasonLocalization := make(map[string]seasonpassclientmodels.Localization)
	seasonLocalization["en"] = seasonpassclientmodels.Localization{
		Title:       "English",
		Description: "English",
	}
	createSeason := seasonpassclientmodels.SeasonCreate{
		Name:               &seasonName,
		Start:              strfmt.DateTime(timeNow),
		End:                strfmt.DateTime(timeNow.AddDate(0, 0, 7)),
		DefaultRequiredExp: &seasonRequiredExp,
		DraftStoreID:       seasonStoreID,
		TierItemID:         seasonTierItemID,
		Localizations:      seasonLocalization,
	}
	inputCreateSeason := season.CreateSeasonParams{
		Namespace: namespace,
		Body:      &createSeason,
	}

	createSeasonOk, errCreateSeason := seasonService.CreateSeasonShort(&inputCreateSeason)
	// ESAC

	// Assert
	assert.Nil(t, errCreateSeason, "err should be nil")
	assert.NotNil(t, createSeasonOk, "response should not be nil")

	seasonID := *createSeasonOk.ID

	// CASE UpdateSeason
	updatedSeasonName := "UpdatedGoServerSDKTestSeason"
	updateSeason := seasonpassclientmodels.SeasonUpdate{
		Name: updatedSeasonName,
	}
	inputUpdateSeason := season.UpdateSeasonParams{
		Namespace: namespace,
		SeasonID:  seasonID,
		Body:      &updateSeason,
	}

	updateSeasonOk, errUpdateSeason := seasonService.UpdateSeasonShort(&inputUpdateSeason)
	// ESAC

	// Assert
	assert.Nil(t, errUpdateSeason, "err should be nil")
	assert.NotNil(t, updateSeasonOk, "response should not be nil")

	// CASE Get season
	inputGetSeason := season.GetSeasonParams{
		Namespace: namespace,
		SeasonID:  seasonID,
	}

	getSeasonOk, errGetSeason := seasonService.GetSeasonShort(&inputGetSeason)
	// ESAC

	// Assert
	assert.Nil(t, errGetSeason, "err should be nil")
	assert.NotNil(t, getSeasonOk, "response should not be nil")

	// CASE Delete season
	inputDeleteSeason := season.DeleteSeasonParams{
		Namespace: namespace,
		SeasonID:  seasonID,
	}

	errDeleteSeason := seasonService.DeleteSeasonShort(&inputDeleteSeason)
	// ESAC

	// Assert
	assert.Nil(t, errDeleteSeason, "err should be nil")
	assert.Equal(t, updatedSeasonName, *getSeasonOk.Name)
}

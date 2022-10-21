// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"bytes"
	"os"
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/catalog_changes"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	storeService = &platform.StoreService{
		Client:          factory.NewPlatformClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	catalogChangesService = &platform.CatalogChangesService{
		Client:          factory.NewPlatformClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	rewardService = &platform.RewardService{
		Client:          factory.NewPlatformClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	language  = "en-US"
	region    = "US"
	title     = "Go Test SDK"
	bodyStore = &platformclientmodels.StoreCreate{
		DefaultLanguage: language,
		DefaultRegion:   region,
		Description:     title,
		Title:           &title,
	}
	bodyStoreUpdate = &platformclientmodels.StoreUpdate{
		DefaultLanguage: language,
		DefaultRegion:   region,
		Description:     title,
		Title:           &title,
	}
)

func TestIntegrationStore(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Create a store
	inputCreate := &store.CreateStoreParams{
		Body:      bodyStore,
		Namespace: integration.NamespaceTest,
	}

	created, errCreate := storeService.CreateStoreShort(inputCreate)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	storeID := *created.StoreID
	t.Logf("Store: %v created", storeID)
	// ESAC

	// Assert
	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")

	// CASE Get a single store
	inputGet := &store.GetStoreParams{
		Namespace: integration.NamespaceTest,
		StoreID:   storeID,
	}

	get, errGet := storeService.GetStoreShort(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "response should not be nil")

	// CASE Update a store
	inputUpdate := &store.UpdateStoreParams{
		Body:      bodyStoreUpdate,
		Namespace: integration.NamespaceTest,
		StoreID:   storeID,
	}

	updated, errUpdate := storeService.UpdateStoreShort(inputUpdate)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errUpdate, "err should be nil")
	assert.NotNil(t, updated, "response should not be nil")

	// CASE Delete a store
	inputDelete := &store.DeleteStoreParams{
		Namespace: integration.NamespaceTest,
		StoreID:   storeID,
	}

	deleted, errDelete := storeService.DeleteStoreShort(inputDelete)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errDelete, "err should be nil")
	assert.NotNil(t, deleted, "response should not be nil")
}

func TestIntegrationExportImportStore(t *testing.T) {
	// Login User - Arrange
	Init()

	storeId := createStore()
	publishedStoreId := publishStore(storeId)
	defer func() {
		_ = deletePublishStore(storeId)
	}()
	writer := bytes.NewBuffer(nil)

	// CASE Store export
	inputExport := &store.ExportStore1Params{
		Namespace: integration.NamespaceTest,
		StoreID:   publishedStoreId,
	}

	okExport, errExport := storeService.ExportStore1Short(inputExport, writer)
	if errExport != nil {
		t.Fatal(errExport.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errExport, "should be nil")
	assert.NotNil(t, okExport, "should not be nil")

	// Prepare the file zip with "published" json store - Arrange
	file, err := utils.ConvertToFileZip(okExport, writer)
	if err != nil {
		t.Fatalf("failed to convert file. %s", err.Error())
	}
	defer func() {
		_ = os.Remove("test.zip")
	}()

	// CASE Store export
	inputImport := &store.ImportStore1Params{
		File:      file,
		Namespace: integration.NamespaceTest,
		StoreID:   &storeId,
	}

	okImport, errImport := storeService.ImportStore1Short(inputImport)
	if errImport != nil {
		t.Fatal(errImport.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errImport, "should be nil")
	assert.NotNil(t, okImport, "should not be nil")
}

func TestIntegrationExportImportReward(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Reward export
	inputExport := &reward.ExportRewardsParams{
		Namespace: integration.NamespaceTest,
	}

	okExport, errExport := rewardService.ExportRewardsShort(inputExport)
	if errExport != nil {
		t.Fatal(errExport.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errExport, "should be nil")
	assert.NotNil(t, okExport, "should not be nil")

	// Arrange
	file, err := utils.ConvertToFileJSON(okExport)
	if err != nil {
		t.Fatal(err.Error())
	}
	defer func() {
		_ = os.Remove("test.json")
	}()

	// CASE Reward import
	inputImport := &reward.ImportRewardsParams{
		File:            file,
		Namespace:       integration.NamespaceTest,
		ReplaceExisting: false,
	}

	errImport := rewardService.ImportRewardsShort(inputImport)
	if errImport != nil {
		t.Fatal(errImport.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errImport, "should be nil")
}

func createStore() string {
	inputCreate := &store.CreateStoreParams{
		Body:      bodyStore,
		Namespace: integration.NamespaceTest,
	}

	created, errCreate := storeService.CreateStoreShort(inputCreate)
	if errCreate != nil {
		logrus.Error(errCreate.Error())

		return ""
	}
	storeID := *created.StoreID

	return storeID
}

func publishStore(storeId string) string {
	inputCreate := &catalog_changes.PublishAllParams{
		StoreID:   storeId,
		Namespace: integration.NamespaceTest,
	}

	created, errCreate := catalogChangesService.PublishAllShort(inputCreate)
	if errCreate != nil {
		logrus.Error(errCreate.Error())

		return ""
	}
	storeID := *created.StoreID

	return storeID
}

func deletePublishStore(storeId string) error {
	input := &store.DeletePublishedStoreParams{
		Namespace: integration.NamespaceTest,
	}

	_, errDelete := storeService.DeletePublishedStoreShort(input)
	if errDelete != nil {
		logrus.Error(errDelete.Error())
	}

	inputDelete := &store.DeleteStoreParams{
		StoreID:   storeId,
		Namespace: integration.NamespaceTest,
	}

	_, err := storeService.DeleteStoreShort(inputDelete)
	if err != nil {
		logrus.Error(err.Error())
	}

	return nil
}

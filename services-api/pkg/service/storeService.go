package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
	"os"
)

type StoreService struct {
	OauthService    *OauthService
	PlatformService *platformclient.JusticePlatformService
}

func (storeService *StoreService) BackupStore(namespace string) (*platformclientmodels.StoreBackupInfo, error) {
	accessToken, err := storeService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &store.GetPublishedStoreBackupParams{
		Namespace: namespace,
	}
	ok, notFound, err := storeService.PlatformService.Store.GetPublishedStoreBackup(params, client.BearerToken(*accessToken.AccessToken))
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

func (storeService *StoreService) GetStore(namespace, storeId string) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := storeService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &store.GetStoreParams{
		Namespace: namespace,
		StoreID:   storeId,
	}
	ok, notFound, err := storeService.PlatformService.Store.GetStore(params, client.BearerToken(*accessToken.AccessToken))
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

func (storeService *StoreService) UpdateStore(namespace, storeId string, storeUpdate platformclientmodels.StoreUpdate) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := storeService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &store.UpdateStoreParams{
		Body:      &storeUpdate,
		Namespace: namespace,
		StoreID:   storeId,
	}
	ok, notFound, conflict, unprocessableEntity, err := storeService.PlatformService.Store.UpdateStore(params, client.BearerToken(*accessToken.AccessToken))
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
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (storeService *StoreService) DeleteStore(namespace, storeId string) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := storeService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &store.DeleteStoreParams{
		Namespace: namespace,
		StoreID:   storeId,
	}
	ok, notFound, conflict, err := storeService.PlatformService.Store.DeleteStore(params, client.BearerToken(*accessToken.AccessToken))
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

func (storeService *StoreService) ListStore(namespace string) ([]*platformclientmodels.StoreInfo, error) {
	accessToken, err := storeService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &store.ListStoresParams{
		Namespace: namespace,
	}
	stores, err := storeService.PlatformService.Store.ListStores(params, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return stores.GetPayload(), nil
}

func (storeService *StoreService) CreateStore(namespace string, storeCreate platformclientmodels.StoreCreate) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := storeService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &store.CreateStoreParams{
		Body:      &storeCreate,
		Namespace: namespace,
	}
	storeCreated, unprocessableEntity, err := storeService.PlatformService.Store.CreateStore(params, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return storeCreated.GetPayload(), nil
}

func (storeService *StoreService) GetPublishedStore(namespace string) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := storeService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &store.GetPublishedStoreParams{
		Namespace: namespace,
	}
	storeCreated, unprocessableEntity, err := storeService.PlatformService.Store.GetPublishedStore(params, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return storeCreated.GetPayload(), nil
}

func (storeService *StoreService) DeletePublishedStore(namespace string) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := storeService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &store.DeletePublishedStoreParams{
		Namespace: namespace,
	}
	storeCreated, unprocessableEntity, err := storeService.PlatformService.Store.DeletePublishedStore(params, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return storeCreated.GetPayload(), nil
}

func (storeService *StoreService) CloneStore(namespace, storeId, targetStoreId string) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := storeService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &store.CloneStoreParams{
		Namespace:     namespace,
		StoreID:       storeId,
		TargetStoreID: &targetStoreId,
	}
	ok, badRequest, notFound, err := storeService.PlatformService.Store.CloneStore(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
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

func (storeService *StoreService) RollbackPublishedStore(namespace string) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := storeService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &store.RollbackPublishedStoreParams{
		Namespace: namespace,
	}
	rollbackPublishedStore, notFound, err := storeService.PlatformService.Store.RollbackPublishedStore(params, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return rollbackPublishedStore.GetPayload(), nil
}

func (storeService *StoreService) ExportStore(namespace, storeId string) error {
	accessToken, err := storeService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &store.ExportStoreParams{
		Namespace: namespace,
		StoreID:   storeId,
	}
	notFound, err := storeService.PlatformService.Store.ExportStore(params, client.BearerToken(*accessToken.AccessToken))
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

func (storeService *StoreService) ImportStore(namespace string, storeId *string, fileAbsolutePath string) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := storeService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	file, err := os.Open(fileAbsolutePath)
	if err != nil {
		logrus.Errorf("Cannot open file %v", fileAbsolutePath)
		return nil, err
	}

	params := &store.ImportStoreParams{
		File:      runtime.NamedReader(fileAbsolutePath, file),
		Namespace: namespace,
		StoreID:   storeId,
	}
	ok, badRequest, notFound, err := storeService.PlatformService.Store.ImportStore(params, client.BearerToken(*accessToken.AccessToken))
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
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (storeService *StoreService) PublicListStore(namespace string) ([]*platformclientmodels.StoreInfo, error) {
	params := &store.PublicListStoresParams{
		Namespace: namespace,
	}
	stores, err := storeService.PlatformService.Store.PublicListStores(params)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return stores.GetPayload(), nil
}

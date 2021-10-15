package platform

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type StoreService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (s *StoreService) BackupStore(input *store.GetPublishedStoreBackupParams) (*platformclientmodels.StoreBackupInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Store.GetPublishedStoreBackup(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *StoreService) GetStore(input *store.GetStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Store.GetStore(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *StoreService) UpdateStore(input *store.UpdateStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := s.Client.Store.UpdateStore(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *StoreService) DeleteStore(input *store.DeleteStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := s.Client.Store.DeleteStore(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *StoreService) ListStore(input *store.ListStoresParams) ([]*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	stores, err := s.Client.Store.ListStores(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return stores.GetPayload(), nil
}

func (s *StoreService) CreateStore(input *store.CreateStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	storeCreated, unprocessableEntity, err := s.Client.Store.CreateStore(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *StoreService) GetPublishedStore(input *store.GetPublishedStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	storeCreated, unprocessableEntity, err := s.Client.Store.GetPublishedStore(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *StoreService) DeletePublishedStore(input *store.DeletePublishedStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	storeCreated, unprocessableEntity, err := s.Client.Store.DeletePublishedStore(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *StoreService) CloneStore(input *store.CloneStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := s.Client.Store.CloneStore(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *StoreService) RollbackPublishedStore(input *store.RollbackPublishedStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	rollbackPublishedStore, notFound, err := s.Client.Store.RollbackPublishedStore(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *StoreService) ExportStore(input *store.ExportStoreParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	notFound, err := s.Client.Store.ExportStore(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *StoreService) ImportStore(input *store.ImportStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := s.Client.Store.ImportStore(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *StoreService) PublicListStore(input *store.PublicListStoresParams) ([]*platformclientmodels.StoreInfo, error) {
	stores, err := s.Client.Store.PublicListStores(input)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return stores.GetPayload(), nil
}

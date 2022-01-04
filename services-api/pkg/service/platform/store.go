// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type StoreService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (s *StoreService) ListStores(input *store.ListStoresParams) ([]*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Store.ListStores(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) CreateStore(input *store.CreateStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, conflict, unprocessableEntity, err := s.Client.Store.CreateStore(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *StoreService) ImportStore(input *store.ImportStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := s.Client.Store.ImportStore(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) GetPublishedStore(input *store.GetPublishedStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Store.GetPublishedStore(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) DeletePublishedStore(input *store.DeletePublishedStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Store.DeletePublishedStore(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) GetPublishedStoreBackup(input *store.GetPublishedStoreBackupParams) (*platformclientmodels.StoreBackupInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Store.GetPublishedStoreBackup(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) RollbackPublishedStore(input *store.RollbackPublishedStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Store.RollbackPublishedStore(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
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
		return nil, notFound
	}
	if err != nil {
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

func (s *StoreService) DeleteStore(input *store.DeleteStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := s.Client.Store.DeleteStore(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *StoreService) CloneStore(input *store.CloneStoreParams) (*platformclientmodels.StoreInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := s.Client.Store.CloneStore(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) ExportStore(input *store.ExportStoreParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := s.Client.Store.ExportStore(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}
	return nil
}

func (s *StoreService) PublicListStores(input *store.PublicListStoresParams) ([]*platformclientmodels.StoreInfo, error) {
	ok, err := s.Client.Store.PublicListStores(input)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) ListStoresShort(input *store.ListStoresParams, authInfo runtime.ClientAuthInfoWriter) ([]*platformclientmodels.StoreInfo, error) {
	ok, err := s.Client.Store.ListStoresShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) CreateStoreShort(input *store.CreateStoreParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	created, err := s.Client.Store.CreateStoreShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (s *StoreService) ImportStoreShort(input *store.ImportStoreParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	ok, err := s.Client.Store.ImportStoreShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) GetPublishedStoreShort(input *store.GetPublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	ok, err := s.Client.Store.GetPublishedStoreShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) DeletePublishedStoreShort(input *store.DeletePublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	ok, err := s.Client.Store.DeletePublishedStoreShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) GetPublishedStoreBackupShort(input *store.GetPublishedStoreBackupParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreBackupInfo, error) {
	ok, err := s.Client.Store.GetPublishedStoreBackupShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) RollbackPublishedStoreShort(input *store.RollbackPublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	ok, err := s.Client.Store.RollbackPublishedStoreShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) GetStoreShort(input *store.GetStoreParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	ok, err := s.Client.Store.GetStoreShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) UpdateStoreShort(input *store.UpdateStoreParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	ok, err := s.Client.Store.UpdateStoreShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) DeleteStoreShort(input *store.DeleteStoreParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	ok, err := s.Client.Store.DeleteStoreShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) CloneStoreShort(input *store.CloneStoreParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	ok, err := s.Client.Store.CloneStoreShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *StoreService) ExportStoreShort(input *store.ExportStoreParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := s.Client.Store.ExportStoreShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (s *StoreService) PublicListStoresShort(input *store.PublicListStoresParams) ([]*platformclientmodels.StoreInfo, error) {
	ok, err := s.Client.Store.PublicListStoresShort(input)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

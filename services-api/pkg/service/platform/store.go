// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type StoreService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use ListStoresShort instead
func (s *StoreService) ListStores(input *store.ListStoresParams) ([]*platformclientmodels.StoreInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Store.ListStores(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateStoreShort instead
func (s *StoreService) CreateStore(input *store.CreateStoreParams) (*platformclientmodels.StoreInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, conflict, unprocessableEntity, err := s.Client.Store.CreateStore(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use ImportStoreShort instead
func (s *StoreService) ImportStore(input *store.ImportStoreParams) (*platformclientmodels.StoreInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := s.Client.Store.ImportStore(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetPublishedStoreShort instead
func (s *StoreService) GetPublishedStore(input *store.GetPublishedStoreParams) (*platformclientmodels.StoreInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Store.GetPublishedStore(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeletePublishedStoreShort instead
func (s *StoreService) DeletePublishedStore(input *store.DeletePublishedStoreParams) (*platformclientmodels.StoreInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Store.DeletePublishedStore(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetPublishedStoreBackupShort instead
func (s *StoreService) GetPublishedStoreBackup(input *store.GetPublishedStoreBackupParams) (*platformclientmodels.StoreBackupInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Store.GetPublishedStoreBackup(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RollbackPublishedStoreShort instead
func (s *StoreService) RollbackPublishedStore(input *store.RollbackPublishedStoreParams) (*platformclientmodels.StoreInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Store.RollbackPublishedStore(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetStoreShort instead
func (s *StoreService) GetStore(input *store.GetStoreParams) (*platformclientmodels.StoreInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Store.GetStore(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateStoreShort instead
func (s *StoreService) UpdateStore(input *store.UpdateStoreParams) (*platformclientmodels.StoreInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := s.Client.Store.UpdateStore(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteStoreShort instead
func (s *StoreService) DeleteStore(input *store.DeleteStoreParams) (*platformclientmodels.StoreInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := s.Client.Store.DeleteStore(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use CloneStoreShort instead
func (s *StoreService) CloneStore(input *store.CloneStoreParams) (*platformclientmodels.StoreInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := s.Client.Store.CloneStore(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use ExportStoreShort instead
func (s *StoreService) ExportStore(input *store.ExportStoreParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := s.Client.Store.ExportStore(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublicListStoresShort instead
func (s *StoreService) PublicListStores(input *store.PublicListStoresParams) ([]*platformclientmodels.StoreInfo, error) {
	ok, err := s.Client.Store.PublicListStores(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:STORE [READ]'], 'authorization': []}]
func (s *StoreService) ListStoresShort(input *store.ListStoresParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*platformclientmodels.StoreInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Store.ListStoresShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:STORE [CREATE]'], 'authorization': []}]
func (s *StoreService) CreateStoreShort(input *store.CreateStoreParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	created, err := s.Client.Store.CreateStoreShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:STORE [UPDATE]'], 'authorization': []}]
func (s *StoreService) ImportStoreShort(input *store.ImportStoreParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Store.ImportStoreShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:STORE [READ]'], 'authorization': []}]
func (s *StoreService) GetPublishedStoreShort(input *store.GetPublishedStoreParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Store.GetPublishedStoreShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:STORE [DELETE]'], 'authorization': []}]
func (s *StoreService) DeletePublishedStoreShort(input *store.DeletePublishedStoreParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Store.DeletePublishedStoreShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:STORE [READ]'], 'authorization': []}]
func (s *StoreService) GetPublishedStoreBackupShort(input *store.GetPublishedStoreBackupParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreBackupInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Store.GetPublishedStoreBackupShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:STORE [UPDATE]'], 'authorization': []}]
func (s *StoreService) RollbackPublishedStoreShort(input *store.RollbackPublishedStoreParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Store.RollbackPublishedStoreShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:STORE [READ]'], 'authorization': []}]
func (s *StoreService) GetStoreShort(input *store.GetStoreParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Store.GetStoreShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:STORE [UPDATE]'], 'authorization': []}]
func (s *StoreService) UpdateStoreShort(input *store.UpdateStoreParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Store.UpdateStoreShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:STORE [DELETE]'], 'authorization': []}]
func (s *StoreService) DeleteStoreShort(input *store.DeleteStoreParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Store.DeleteStoreShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:STORE [CREATE]'], 'authorization': []}]
func (s *StoreService) CloneStoreShort(input *store.CloneStoreParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.StoreInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Store.CloneStoreShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:STORE [READ]'], 'authorization': []}]
func (s *StoreService) ExportStoreShort(input *store.ExportStoreParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	_, err := s.Client.Store.ExportStoreShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// None
func (s *StoreService) PublicListStoresShort(input *store.PublicListStoresParams) ([]*platformclientmodels.StoreInfo, error) {
	ok, err := s.Client.Store.PublicListStoresShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

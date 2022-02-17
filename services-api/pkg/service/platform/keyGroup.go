// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/key_group"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type KeyGroupService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use QueryKeyGroupsShort instead
func (k *KeyGroupService) QueryKeyGroups(input *key_group.QueryKeyGroupsParams) (*platformclientmodels.KeyGroupPagingSlicedResult, error) {
	accessToken, err := k.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := k.Client.KeyGroup.QueryKeyGroups(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use CreateKeyGroupShort instead
func (k *KeyGroupService) CreateKeyGroup(input *key_group.CreateKeyGroupParams) (*platformclientmodels.KeyGroupInfo, error) {
	accessToken, err := k.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, conflict, unprocessableEntity, err := k.Client.KeyGroup.CreateKeyGroup(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetKeyGroupShort instead
func (k *KeyGroupService) GetKeyGroup(input *key_group.GetKeyGroupParams) (*platformclientmodels.KeyGroupInfo, error) {
	accessToken, err := k.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := k.Client.KeyGroup.GetKeyGroup(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateKeyGroupShort instead
func (k *KeyGroupService) UpdateKeyGroup(input *key_group.UpdateKeyGroupParams) (*platformclientmodels.KeyGroupInfo, error) {
	accessToken, err := k.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := k.Client.KeyGroup.UpdateKeyGroup(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetKeyGroupDynamicShort instead
func (k *KeyGroupService) GetKeyGroupDynamic(input *key_group.GetKeyGroupDynamicParams) (*platformclientmodels.KeyGroupDynamicInfo, error) {
	accessToken, err := k.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := k.Client.KeyGroup.GetKeyGroupDynamic(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use ListKeysShort instead
func (k *KeyGroupService) ListKeys(input *key_group.ListKeysParams) (*platformclientmodels.KeyPagingSliceResult, error) {
	accessToken, err := k.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := k.Client.KeyGroup.ListKeys(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UploadKeysShort instead
func (k *KeyGroupService) UploadKeys(input *key_group.UploadKeysParams) (*platformclientmodels.BulkOperationResult, error) {
	accessToken, err := k.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := k.Client.KeyGroup.UploadKeys(input, client.BearerToken(*accessToken.AccessToken))
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

func (k *KeyGroupService) QueryKeyGroupsShort(input *key_group.QueryKeyGroupsParams) (*platformclientmodels.KeyGroupPagingSlicedResult, error) {
	accessToken, err := k.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := k.Client.KeyGroup.QueryKeyGroupsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (k *KeyGroupService) CreateKeyGroupShort(input *key_group.CreateKeyGroupParams) (*platformclientmodels.KeyGroupInfo, error) {
	accessToken, err := k.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := k.Client.KeyGroup.CreateKeyGroupShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (k *KeyGroupService) GetKeyGroupShort(input *key_group.GetKeyGroupParams) (*platformclientmodels.KeyGroupInfo, error) {
	accessToken, err := k.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := k.Client.KeyGroup.GetKeyGroupShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (k *KeyGroupService) UpdateKeyGroupShort(input *key_group.UpdateKeyGroupParams) (*platformclientmodels.KeyGroupInfo, error) {
	accessToken, err := k.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := k.Client.KeyGroup.UpdateKeyGroupShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (k *KeyGroupService) GetKeyGroupDynamicShort(input *key_group.GetKeyGroupDynamicParams) (*platformclientmodels.KeyGroupDynamicInfo, error) {
	accessToken, err := k.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := k.Client.KeyGroup.GetKeyGroupDynamicShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (k *KeyGroupService) ListKeysShort(input *key_group.ListKeysParams) (*platformclientmodels.KeyPagingSliceResult, error) {
	accessToken, err := k.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := k.Client.KeyGroup.ListKeysShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (k *KeyGroupService) UploadKeysShort(input *key_group.UploadKeysParams) (*platformclientmodels.BulkOperationResult, error) {
	accessToken, err := k.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := k.Client.KeyGroup.UploadKeysShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

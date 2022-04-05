// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_group"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime/client"
)

type PublicGroupService struct {
	Client          *ugcclient.JusticeUgcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetGroupsShort instead
func (p *PublicGroupService) GetGroups(input *public_group.GetGroupsParams) (*ugcclientmodels.ModelsPaginatedGroupResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicGroup.GetGroups(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateGroupShort instead
func (p *PublicGroupService) CreateGroup(input *public_group.CreateGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := p.Client.PublicGroup.CreateGroup(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use GetGroupShort instead
func (p *PublicGroupService) GetGroup(input *public_group.GetGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicGroup.GetGroup(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateGroupShort instead
func (p *PublicGroupService) UpdateGroup(input *public_group.UpdateGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := p.Client.PublicGroup.UpdateGroup(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteGroupShort instead
func (p *PublicGroupService) DeleteGroup(input *public_group.DeleteGroupParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := p.Client.PublicGroup.DeleteGroup(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetGroupContentShort instead
func (p *PublicGroupService) GetGroupContent(input *public_group.GetGroupContentParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicGroup.GetGroupContent(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicGroupService) GetGroupsShort(input *public_group.GetGroupsParams) (*ugcclientmodels.ModelsPaginatedGroupResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PublicGroup.GetGroupsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicGroupService) CreateGroupShort(input *public_group.CreateGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := p.Client.PublicGroup.CreateGroupShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (p *PublicGroupService) GetGroupShort(input *public_group.GetGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PublicGroup.GetGroupShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicGroupService) UpdateGroupShort(input *public_group.UpdateGroupParams) (*ugcclientmodels.ModelsCreateGroupResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PublicGroup.UpdateGroupShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicGroupService) DeleteGroupShort(input *public_group.DeleteGroupParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = p.Client.PublicGroup.DeleteGroupShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (p *PublicGroupService) GetGroupContentShort(input *public_group.GetGroupContentParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PublicGroup.GetGroupContentShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

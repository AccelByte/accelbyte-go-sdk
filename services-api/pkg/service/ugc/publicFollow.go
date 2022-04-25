// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_follow"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type PublicFollowService struct {
	Client          *ugcclient.JusticeUgcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetFollowedContentShort instead
func (p *PublicFollowService) GetFollowedContent(input *public_follow.GetFollowedContentParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicFollow.GetFollowedContent(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetFollowedUsersShort instead
func (p *PublicFollowService) GetFollowedUsers(input *public_follow.GetFollowedUsersParams) (*ugcclientmodels.ModelsPaginatedCreatorOverviewResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicFollow.GetFollowedUsers(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateUserFollowStatusShort instead
func (p *PublicFollowService) UpdateUserFollowStatus(input *public_follow.UpdateUserFollowStatusParams) (*ugcclientmodels.ModelsUserFollowResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := p.Client.PublicFollow.UpdateUserFollowStatus(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetPublicFollowersShort instead
func (p *PublicFollowService) GetPublicFollowers(input *public_follow.GetPublicFollowersParams) (*ugcclientmodels.ModelsPaginatedCreatorOverviewResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicFollow.GetPublicFollowers(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetPublicFollowingShort instead
func (p *PublicFollowService) GetPublicFollowing(input *public_follow.GetPublicFollowingParams) (*ugcclientmodels.ModelsPaginatedCreatorOverviewResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicFollow.GetPublicFollowing(input, client.BearerToken(*token.AccessToken))
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

func (p *PublicFollowService) GetFollowedContentShort(input *public_follow.GetFollowedContentParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PublicFollow.GetFollowedContentShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicFollowService) GetFollowedUsersShort(input *public_follow.GetFollowedUsersParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedCreatorOverviewResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PublicFollow.GetFollowedUsersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicFollowService) UpdateUserFollowStatusShort(input *public_follow.UpdateUserFollowStatusParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsUserFollowResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PublicFollow.UpdateUserFollowStatusShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicFollowService) GetPublicFollowersShort(input *public_follow.GetPublicFollowersParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedCreatorOverviewResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PublicFollow.GetPublicFollowersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicFollowService) GetPublicFollowingShort(input *public_follow.GetPublicFollowingParams, authInfoWriter runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedCreatorOverviewResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PublicFollow.GetPublicFollowingShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

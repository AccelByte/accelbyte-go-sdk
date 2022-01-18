// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package social

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/game_profile"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type GameProfileService struct {
	Client          *socialclient.JusticeSocialService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetUserProfilesShort instead
func (g *GameProfileService) GetUserProfiles(input *game_profile.GetUserProfilesParams) ([]*socialclientmodels.GameProfileHeader, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := g.Client.GameProfile.GetUserProfiles(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetProfileShort instead
func (g *GameProfileService) GetProfile(input *game_profile.GetProfileParams) (*socialclientmodels.GameProfileInfo, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := g.Client.GameProfile.GetProfile(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserGameProfilesShort instead
func (g *GameProfileService) PublicGetUserGameProfiles(input *game_profile.PublicGetUserGameProfilesParams) ([]*socialclientmodels.UserGameProfiles, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := g.Client.GameProfile.PublicGetUserGameProfiles(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserProfilesShort instead
func (g *GameProfileService) PublicGetUserProfiles(input *game_profile.PublicGetUserProfilesParams) ([]*socialclientmodels.GameProfileHeader, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := g.Client.GameProfile.PublicGetUserProfiles(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicCreateProfileShort instead
func (g *GameProfileService) PublicCreateProfile(input *game_profile.PublicCreateProfileParams) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unprocessableEntity, err := g.Client.GameProfile.PublicCreateProfile(input, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use PublicGetProfileShort instead
func (g *GameProfileService) PublicGetProfile(input *game_profile.PublicGetProfileParams) (*socialclientmodels.GameProfileInfo, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := g.Client.GameProfile.PublicGetProfile(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicUpdateProfileShort instead
func (g *GameProfileService) PublicUpdateProfile(input *game_profile.PublicUpdateProfileParams) (*socialclientmodels.GameProfileInfo, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, unprocessableEntity, err := g.Client.GameProfile.PublicUpdateProfile(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use PublicDeleteProfileShort instead
func (g *GameProfileService) PublicDeleteProfile(input *game_profile.PublicDeleteProfileParams) error {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := g.Client.GameProfile.PublicDeleteProfile(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use PublicGetProfileAttributeShort instead
func (g *GameProfileService) PublicGetProfileAttribute(input *game_profile.PublicGetProfileAttributeParams) (*socialclientmodels.Attribute, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := g.Client.GameProfile.PublicGetProfileAttribute(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicUpdateAttributeShort instead
func (g *GameProfileService) PublicUpdateAttribute(input *game_profile.PublicUpdateAttributeParams) (*socialclientmodels.GameProfileInfo, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := g.Client.GameProfile.PublicUpdateAttribute(input, client.BearerToken(*accessToken.AccessToken))
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

func (g *GameProfileService) GetUserProfilesShort(input *game_profile.GetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) ([]*socialclientmodels.GameProfileHeader, error) {
	ok, err := g.Client.GameProfile.GetUserProfilesShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameProfileService) GetProfileShort(input *game_profile.GetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*socialclientmodels.GameProfileInfo, error) {
	ok, err := g.Client.GameProfile.GetProfileShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameProfileService) PublicGetUserGameProfilesShort(input *game_profile.PublicGetUserGameProfilesParams, authInfo runtime.ClientAuthInfoWriter) ([]*socialclientmodels.UserGameProfiles, error) {
	ok, err := g.Client.GameProfile.PublicGetUserGameProfilesShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameProfileService) PublicGetUserProfilesShort(input *game_profile.PublicGetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) ([]*socialclientmodels.GameProfileHeader, error) {
	ok, err := g.Client.GameProfile.PublicGetUserProfilesShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameProfileService) PublicCreateProfileShort(input *game_profile.PublicCreateProfileParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := g.Client.GameProfile.PublicCreateProfileShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (g *GameProfileService) PublicGetProfileShort(input *game_profile.PublicGetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*socialclientmodels.GameProfileInfo, error) {
	ok, err := g.Client.GameProfile.PublicGetProfileShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameProfileService) PublicUpdateProfileShort(input *game_profile.PublicUpdateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*socialclientmodels.GameProfileInfo, error) {
	ok, err := g.Client.GameProfile.PublicUpdateProfileShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameProfileService) PublicDeleteProfileShort(input *game_profile.PublicDeleteProfileParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := g.Client.GameProfile.PublicDeleteProfileShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (g *GameProfileService) PublicGetProfileAttributeShort(input *game_profile.PublicGetProfileAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*socialclientmodels.Attribute, error) {
	ok, err := g.Client.GameProfile.PublicGetProfileAttributeShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameProfileService) PublicUpdateAttributeShort(input *game_profile.PublicUpdateAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*socialclientmodels.GameProfileInfo, error) {
	ok, err := g.Client.GameProfile.PublicUpdateAttributeShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

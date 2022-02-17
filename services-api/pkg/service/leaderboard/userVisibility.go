// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package leaderboard

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/user_visibility"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type UserVisibilityService struct {
	Client          *leaderboardclient.JusticeLeaderboardService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetHiddenUsersV2Short instead
func (u *UserVisibilityService) GetHiddenUsersV2(input *user_visibility.GetHiddenUsersV2Params) (*leaderboardclientmodels.ModelsGetHiddenUserResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UserVisibility.GetHiddenUsersV2(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
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

// Deprecated: Use GetUserVisibilityStatusV2Short instead
func (u *UserVisibilityService) GetUserVisibilityStatusV2(input *user_visibility.GetUserVisibilityStatusV2Params) (*leaderboardclientmodels.ModelsGetUserVisibilityResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UserVisibility.GetUserVisibilityStatusV2(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
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

// Deprecated: Use SetUserLeaderboardVisibilityStatusV2Short instead
func (u *UserVisibilityService) SetUserLeaderboardVisibilityStatusV2(input *user_visibility.SetUserLeaderboardVisibilityStatusV2Params) (*leaderboardclientmodels.ModelsGetUserVisibilityResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UserVisibility.SetUserLeaderboardVisibilityStatusV2(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
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

// Deprecated: Use SetUserVisibilityStatusV2Short instead
func (u *UserVisibilityService) SetUserVisibilityStatusV2(input *user_visibility.SetUserVisibilityStatusV2Params) (*leaderboardclientmodels.ModelsGetUserVisibilityResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UserVisibility.SetUserVisibilityStatusV2(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
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

func (u *UserVisibilityService) GetHiddenUsersV2Short(input *user_visibility.GetHiddenUsersV2Params) (*leaderboardclientmodels.ModelsGetHiddenUserResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UserVisibility.GetHiddenUsersV2Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserVisibilityService) GetUserVisibilityStatusV2Short(input *user_visibility.GetUserVisibilityStatusV2Params) (*leaderboardclientmodels.ModelsGetUserVisibilityResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UserVisibility.GetUserVisibilityStatusV2Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserVisibilityService) SetUserLeaderboardVisibilityStatusV2Short(input *user_visibility.SetUserLeaderboardVisibilityStatusV2Params) (*leaderboardclientmodels.ModelsGetUserVisibilityResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UserVisibility.SetUserLeaderboardVisibilityStatusV2Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserVisibilityService) SetUserVisibilityStatusV2Short(input *user_visibility.SetUserVisibilityStatusV2Params) (*leaderboardclientmodels.ModelsGetUserVisibilityResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UserVisibility.SetUserVisibilityStatusV2Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

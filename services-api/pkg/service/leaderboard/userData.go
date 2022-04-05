// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package leaderboard

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/user_data"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type UserDataService struct {
	Client          *leaderboardclient.JusticeLeaderboardService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetUserLeaderboardRankingsAdminV1Short instead
func (u *UserDataService) GetUserLeaderboardRankingsAdminV1(input *user_data.GetUserLeaderboardRankingsAdminV1Params) (*leaderboardclientmodels.ModelsGetAllUserLeaderboardsResp, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UserData.GetUserLeaderboardRankingsAdminV1(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserDataService) GetUserLeaderboardRankingsAdminV1Short(input *user_data.GetUserLeaderboardRankingsAdminV1Params) (*leaderboardclientmodels.ModelsGetAllUserLeaderboardsResp, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UserData.GetUserLeaderboardRankingsAdminV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

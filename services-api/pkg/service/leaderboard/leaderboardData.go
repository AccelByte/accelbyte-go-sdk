// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package leaderboard

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type LeaderboardDataService struct {
	Client          *leaderboardclient.JusticeLeaderboardService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminGetArchivedLeaderboardRankingDataV1HandlerShort instead
func (l *LeaderboardDataService) AdminGetArchivedLeaderboardRankingDataV1Handler(input *leaderboard_data.AdminGetArchivedLeaderboardRankingDataV1HandlerParams) ([]*leaderboardclientmodels.ModelsArchiveLeaderboardSignedURLResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.AdminGetArchivedLeaderboardRankingDataV1Handler(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use CreateArchivedLeaderboardRankingDataV1HandlerShort instead
func (l *LeaderboardDataService) CreateArchivedLeaderboardRankingDataV1Handler(input *leaderboard_data.CreateArchivedLeaderboardRankingDataV1HandlerParams) error {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.CreateArchivedLeaderboardRankingDataV1Handler(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
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

// Deprecated: Use GetAllTimeLeaderboardRankingAdminV1Short instead
func (l *LeaderboardDataService) GetAllTimeLeaderboardRankingAdminV1(input *leaderboard_data.GetAllTimeLeaderboardRankingAdminV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetAllTimeLeaderboardRankingAdminV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetCurrentMonthLeaderboardRankingAdminV1Short instead
func (l *LeaderboardDataService) GetCurrentMonthLeaderboardRankingAdminV1(input *leaderboard_data.GetCurrentMonthLeaderboardRankingAdminV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetCurrentMonthLeaderboardRankingAdminV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetCurrentSeasonLeaderboardRankingAdminV1Short instead
func (l *LeaderboardDataService) GetCurrentSeasonLeaderboardRankingAdminV1(input *leaderboard_data.GetCurrentSeasonLeaderboardRankingAdminV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetCurrentSeasonLeaderboardRankingAdminV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetTodayLeaderboardRankingAdminV1Short instead
func (l *LeaderboardDataService) GetTodayLeaderboardRankingAdminV1(input *leaderboard_data.GetTodayLeaderboardRankingAdminV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetTodayLeaderboardRankingAdminV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetUserRankingAdminV1Short instead
func (l *LeaderboardDataService) GetUserRankingAdminV1(input *leaderboard_data.GetUserRankingAdminV1Params) (*leaderboardclientmodels.ModelsUserRankingResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetUserRankingAdminV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use UpdateUserPointAdminV1Short instead
func (l *LeaderboardDataService) UpdateUserPointAdminV1(input *leaderboard_data.UpdateUserPointAdminV1Params) (*leaderboardclientmodels.ModelsUpdateUserPointAdminV1Response, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.UpdateUserPointAdminV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use DeleteUserRankingAdminV1Short instead
func (l *LeaderboardDataService) DeleteUserRankingAdminV1(input *leaderboard_data.DeleteUserRankingAdminV1Params) error {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.DeleteUserRankingAdminV1(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
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

// Deprecated: Use GetCurrentWeekLeaderboardRankingAdminV1Short instead
func (l *LeaderboardDataService) GetCurrentWeekLeaderboardRankingAdminV1(input *leaderboard_data.GetCurrentWeekLeaderboardRankingAdminV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetCurrentWeekLeaderboardRankingAdminV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use DeleteUserRankingsAdminV1Short instead
func (l *LeaderboardDataService) DeleteUserRankingsAdminV1(input *leaderboard_data.DeleteUserRankingsAdminV1Params) error {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.DeleteUserRankingsAdminV1(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
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

// Deprecated: Use GetAllTimeLeaderboardRankingPublicV1Short instead
func (l *LeaderboardDataService) GetAllTimeLeaderboardRankingPublicV1(input *leaderboard_data.GetAllTimeLeaderboardRankingPublicV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := l.Client.LeaderboardData.GetAllTimeLeaderboardRankingPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
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

// Deprecated: Use GetArchivedLeaderboardRankingDataV1HandlerShort instead
func (l *LeaderboardDataService) GetArchivedLeaderboardRankingDataV1Handler(input *leaderboard_data.GetArchivedLeaderboardRankingDataV1HandlerParams) ([]*leaderboardclientmodels.ModelsArchiveLeaderboardSignedURLResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetArchivedLeaderboardRankingDataV1Handler(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetCurrentMonthLeaderboardRankingPublicV1Short instead
func (l *LeaderboardDataService) GetCurrentMonthLeaderboardRankingPublicV1(input *leaderboard_data.GetCurrentMonthLeaderboardRankingPublicV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := l.Client.LeaderboardData.GetCurrentMonthLeaderboardRankingPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
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

// Deprecated: Use GetCurrentSeasonLeaderboardRankingPublicV1Short instead
func (l *LeaderboardDataService) GetCurrentSeasonLeaderboardRankingPublicV1(input *leaderboard_data.GetCurrentSeasonLeaderboardRankingPublicV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := l.Client.LeaderboardData.GetCurrentSeasonLeaderboardRankingPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
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

// Deprecated: Use GetTodayLeaderboardRankingPublicV1Short instead
func (l *LeaderboardDataService) GetTodayLeaderboardRankingPublicV1(input *leaderboard_data.GetTodayLeaderboardRankingPublicV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := l.Client.LeaderboardData.GetTodayLeaderboardRankingPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
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

// Deprecated: Use GetUserRankingPublicV1Short instead
func (l *LeaderboardDataService) GetUserRankingPublicV1(input *leaderboard_data.GetUserRankingPublicV1Params) (*leaderboardclientmodels.ModelsUserRankingResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetUserRankingPublicV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use DeleteUserRankingPublicV1Short instead
func (l *LeaderboardDataService) DeleteUserRankingPublicV1(input *leaderboard_data.DeleteUserRankingPublicV1Params) error {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.DeleteUserRankingPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
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

// Deprecated: Use GetCurrentWeekLeaderboardRankingPublicV1Short instead
func (l *LeaderboardDataService) GetCurrentWeekLeaderboardRankingPublicV1(input *leaderboard_data.GetCurrentWeekLeaderboardRankingPublicV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := l.Client.LeaderboardData.GetCurrentWeekLeaderboardRankingPublicV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
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

// Deprecated: Use GetAllTimeLeaderboardRankingPublicV2Short instead
func (l *LeaderboardDataService) GetAllTimeLeaderboardRankingPublicV2(input *leaderboard_data.GetAllTimeLeaderboardRankingPublicV2Params) (*leaderboardclientmodels.V2GetPublicLeaderboardRankingResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetAllTimeLeaderboardRankingPublicV2(input, client.BearerToken(*accessToken.AccessToken))
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

func (l *LeaderboardDataService) AdminGetArchivedLeaderboardRankingDataV1HandlerShort(input *leaderboard_data.AdminGetArchivedLeaderboardRankingDataV1HandlerParams) ([]*leaderboardclientmodels.ModelsArchiveLeaderboardSignedURLResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.AdminGetArchivedLeaderboardRankingDataV1HandlerShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) CreateArchivedLeaderboardRankingDataV1HandlerShort(input *leaderboard_data.CreateArchivedLeaderboardRankingDataV1HandlerParams) error {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = l.Client.LeaderboardData.CreateArchivedLeaderboardRankingDataV1HandlerShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (l *LeaderboardDataService) GetAllTimeLeaderboardRankingAdminV1Short(input *leaderboard_data.GetAllTimeLeaderboardRankingAdminV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.GetAllTimeLeaderboardRankingAdminV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetCurrentMonthLeaderboardRankingAdminV1Short(input *leaderboard_data.GetCurrentMonthLeaderboardRankingAdminV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.GetCurrentMonthLeaderboardRankingAdminV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetCurrentSeasonLeaderboardRankingAdminV1Short(input *leaderboard_data.GetCurrentSeasonLeaderboardRankingAdminV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.GetCurrentSeasonLeaderboardRankingAdminV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetTodayLeaderboardRankingAdminV1Short(input *leaderboard_data.GetTodayLeaderboardRankingAdminV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.GetTodayLeaderboardRankingAdminV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetUserRankingAdminV1Short(input *leaderboard_data.GetUserRankingAdminV1Params) (*leaderboardclientmodels.ModelsUserRankingResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.GetUserRankingAdminV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) UpdateUserPointAdminV1Short(input *leaderboard_data.UpdateUserPointAdminV1Params) (*leaderboardclientmodels.ModelsUpdateUserPointAdminV1Response, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.UpdateUserPointAdminV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) DeleteUserRankingAdminV1Short(input *leaderboard_data.DeleteUserRankingAdminV1Params) error {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = l.Client.LeaderboardData.DeleteUserRankingAdminV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (l *LeaderboardDataService) GetCurrentWeekLeaderboardRankingAdminV1Short(input *leaderboard_data.GetCurrentWeekLeaderboardRankingAdminV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.GetCurrentWeekLeaderboardRankingAdminV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) DeleteUserRankingsAdminV1Short(input *leaderboard_data.DeleteUserRankingsAdminV1Params) error {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = l.Client.LeaderboardData.DeleteUserRankingsAdminV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (l *LeaderboardDataService) GetAllTimeLeaderboardRankingPublicV1Short(input *leaderboard_data.GetAllTimeLeaderboardRankingPublicV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.GetAllTimeLeaderboardRankingPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetArchivedLeaderboardRankingDataV1HandlerShort(input *leaderboard_data.GetArchivedLeaderboardRankingDataV1HandlerParams) ([]*leaderboardclientmodels.ModelsArchiveLeaderboardSignedURLResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.GetArchivedLeaderboardRankingDataV1HandlerShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetCurrentMonthLeaderboardRankingPublicV1Short(input *leaderboard_data.GetCurrentMonthLeaderboardRankingPublicV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.GetCurrentMonthLeaderboardRankingPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetCurrentSeasonLeaderboardRankingPublicV1Short(input *leaderboard_data.GetCurrentSeasonLeaderboardRankingPublicV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.GetCurrentSeasonLeaderboardRankingPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetTodayLeaderboardRankingPublicV1Short(input *leaderboard_data.GetTodayLeaderboardRankingPublicV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.GetTodayLeaderboardRankingPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetUserRankingPublicV1Short(input *leaderboard_data.GetUserRankingPublicV1Params) (*leaderboardclientmodels.ModelsUserRankingResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.GetUserRankingPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) DeleteUserRankingPublicV1Short(input *leaderboard_data.DeleteUserRankingPublicV1Params) error {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = l.Client.LeaderboardData.DeleteUserRankingPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (l *LeaderboardDataService) GetCurrentWeekLeaderboardRankingPublicV1Short(input *leaderboard_data.GetCurrentWeekLeaderboardRankingPublicV1Params) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.GetCurrentWeekLeaderboardRankingPublicV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetAllTimeLeaderboardRankingPublicV2Short(input *leaderboard_data.GetAllTimeLeaderboardRankingPublicV2Params) (*leaderboardclientmodels.V2GetPublicLeaderboardRankingResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LeaderboardData.GetAllTimeLeaderboardRankingPublicV2Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

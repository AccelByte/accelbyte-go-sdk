// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type LeaderboardDataService struct {
	Client          *leaderboardclient.JusticeLeaderboardService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminGetArchivedLeaderboardRankingDataV1HandlerShort instead
func (l *LeaderboardDataService) AdminGetArchivedLeaderboardRankingDataV1Handler(input *leaderboard_data.AdminGetArchivedLeaderboardRankingDataV1HandlerParams) ([]*leaderboardclientmodels.ModelsArchiveLeaderboardSignedURLResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.AdminGetArchivedLeaderboardRankingDataV1Handler(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.CreateArchivedLeaderboardRankingDataV1Handler(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetAllTimeLeaderboardRankingAdminV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetCurrentMonthLeaderboardRankingAdminV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetCurrentSeasonLeaderboardRankingAdminV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetTodayLeaderboardRankingAdminV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetUserRankingAdminV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.UpdateUserPointAdminV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.DeleteUserRankingAdminV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetCurrentWeekLeaderboardRankingAdminV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.DeleteUserRankingsAdminV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := l.Client.LeaderboardData.GetAllTimeLeaderboardRankingPublicV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetArchivedLeaderboardRankingDataV1Handler(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := l.Client.LeaderboardData.GetCurrentMonthLeaderboardRankingPublicV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := l.Client.LeaderboardData.GetCurrentSeasonLeaderboardRankingPublicV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := l.Client.LeaderboardData.GetTodayLeaderboardRankingPublicV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetUserRankingPublicV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.DeleteUserRankingPublicV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := l.Client.LeaderboardData.GetCurrentWeekLeaderboardRankingPublicV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.Client.LeaderboardData.GetAllTimeLeaderboardRankingPublicV2(input, client.BearerToken(*token.AccessToken))
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

// [{'authorization': []}]
func (l *LeaderboardDataService) AdminGetArchivedLeaderboardRankingDataV1HandlerShort(input *leaderboard_data.AdminGetArchivedLeaderboardRankingDataV1HandlerParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*leaderboardclientmodels.ModelsArchiveLeaderboardSignedURLResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.AdminGetArchivedLeaderboardRankingDataV1HandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:LEADERBOARD [CREATE]'], 'authorization': []}]
func (l *LeaderboardDataService) CreateArchivedLeaderboardRankingDataV1HandlerShort(input *leaderboard_data.CreateArchivedLeaderboardRankingDataV1HandlerParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	_, err := l.Client.LeaderboardData.CreateArchivedLeaderboardRankingDataV1HandlerShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'], 'authorization': []}]
func (l *LeaderboardDataService) GetAllTimeLeaderboardRankingAdminV1Short(input *leaderboard_data.GetAllTimeLeaderboardRankingAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.GetAllTimeLeaderboardRankingAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'], 'authorization': []}]
func (l *LeaderboardDataService) GetCurrentMonthLeaderboardRankingAdminV1Short(input *leaderboard_data.GetCurrentMonthLeaderboardRankingAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.GetCurrentMonthLeaderboardRankingAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'], 'authorization': []}]
func (l *LeaderboardDataService) GetCurrentSeasonLeaderboardRankingAdminV1Short(input *leaderboard_data.GetCurrentSeasonLeaderboardRankingAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.GetCurrentSeasonLeaderboardRankingAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'], 'authorization': []}]
func (l *LeaderboardDataService) GetTodayLeaderboardRankingAdminV1Short(input *leaderboard_data.GetTodayLeaderboardRankingAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.GetTodayLeaderboardRankingAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'], 'authorization': []}]
func (l *LeaderboardDataService) GetUserRankingAdminV1Short(input *leaderboard_data.GetUserRankingAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*leaderboardclientmodels.ModelsUserRankingResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.GetUserRankingAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (l *LeaderboardDataService) UpdateUserPointAdminV1Short(input *leaderboard_data.UpdateUserPointAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*leaderboardclientmodels.ModelsUpdateUserPointAdminV1Response, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.UpdateUserPointAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:LEADERBOARD:USER [DELETE]'], 'authorization': []}]
func (l *LeaderboardDataService) DeleteUserRankingAdminV1Short(input *leaderboard_data.DeleteUserRankingAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	_, err := l.Client.LeaderboardData.DeleteUserRankingAdminV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'], 'authorization': []}]
func (l *LeaderboardDataService) GetCurrentWeekLeaderboardRankingAdminV1Short(input *leaderboard_data.GetCurrentWeekLeaderboardRankingAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.GetCurrentWeekLeaderboardRankingAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:LEADERBOARD:USER [DELETE]'], 'authorization': []}]
func (l *LeaderboardDataService) DeleteUserRankingsAdminV1Short(input *leaderboard_data.DeleteUserRankingsAdminV1Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	_, err := l.Client.LeaderboardData.DeleteUserRankingsAdminV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (l *LeaderboardDataService) GetAllTimeLeaderboardRankingPublicV1Short(input *leaderboard_data.GetAllTimeLeaderboardRankingPublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.GetAllTimeLeaderboardRankingPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (l *LeaderboardDataService) GetArchivedLeaderboardRankingDataV1HandlerShort(input *leaderboard_data.GetArchivedLeaderboardRankingDataV1HandlerParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*leaderboardclientmodels.ModelsArchiveLeaderboardSignedURLResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.GetArchivedLeaderboardRankingDataV1HandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (l *LeaderboardDataService) GetCurrentMonthLeaderboardRankingPublicV1Short(input *leaderboard_data.GetCurrentMonthLeaderboardRankingPublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.GetCurrentMonthLeaderboardRankingPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (l *LeaderboardDataService) GetCurrentSeasonLeaderboardRankingPublicV1Short(input *leaderboard_data.GetCurrentSeasonLeaderboardRankingPublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.GetCurrentSeasonLeaderboardRankingPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (l *LeaderboardDataService) GetTodayLeaderboardRankingPublicV1Short(input *leaderboard_data.GetTodayLeaderboardRankingPublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.GetTodayLeaderboardRankingPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (l *LeaderboardDataService) GetUserRankingPublicV1Short(input *leaderboard_data.GetUserRankingPublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*leaderboardclientmodels.ModelsUserRankingResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.GetUserRankingPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['NAMESPACE:{namespace}:LEADERBOARD:USER:{userId} [DELETE]'], 'authorization': []}]
func (l *LeaderboardDataService) DeleteUserRankingPublicV1Short(input *leaderboard_data.DeleteUserRankingPublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	_, err := l.Client.LeaderboardData.DeleteUserRankingPublicV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (l *LeaderboardDataService) GetCurrentWeekLeaderboardRankingPublicV1Short(input *leaderboard_data.GetCurrentWeekLeaderboardRankingPublicV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.GetCurrentWeekLeaderboardRankingPublicV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (l *LeaderboardDataService) GetAllTimeLeaderboardRankingPublicV2Short(input *leaderboard_data.GetAllTimeLeaderboardRankingPublicV2Params, authInfoWriter runtime.ClientAuthInfoWriter) (*leaderboardclientmodels.V2GetPublicLeaderboardRankingResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LeaderboardData.GetAllTimeLeaderboardRankingPublicV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

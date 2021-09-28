package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type LeaderboardDataService struct {
	LeaderboardDataServiceClient *leaderboardclient.JusticeLeaderboardService
	TokenRepository              repository.TokenRepository
}

func (l *LeaderboardDataService) AdminGetArchivedLeaderboardRankingDataV1Handler(leaderboardCodes, namespace string, slug *string) ([]*leaderboardclientmodels.ModelsArchiveLeaderboardSignedURLResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.AdminGetArchivedLeaderboardRankingDataV1HandlerParams{
		LeaderboardCodes: leaderboardCodes,
		Namespace:        namespace,
		Slug:             slug,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.AdminGetArchivedLeaderboardRankingDataV1Handler(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) CreateArchivedLeaderboardRankingDataV1Handler(body *leaderboardclientmodels.ModelsArchiveLeaderboardReq, namespace string) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &leaderboard_data.CreateArchivedLeaderboardRankingDataV1HandlerParams{
		Body:      body,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.CreateArchivedLeaderboardRankingDataV1Handler(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (l *LeaderboardDataService) GetAllTimeLeaderboardRankingAdminV1(leaderboardCode string, limit *int64, namespace string, offset *int64) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.GetAllTimeLeaderboardRankingAdminV1Params{
		LeaderboardCode: leaderboardCode,
		Limit:           limit,
		Namespace:       namespace,
		Offset:          offset,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.GetAllTimeLeaderboardRankingAdminV1(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetAllTimeLeaderboardRankingPublicV1(leaderboardCode string, limit *int64, namespace string, offset *int64) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.GetAllTimeLeaderboardRankingPublicV1Params{
		LeaderboardCode: leaderboardCode,
		Limit:           limit,
		Namespace:       namespace,
		Offset:          offset,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.GetAllTimeLeaderboardRankingPublicV1(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetAllTimeLeaderboardRankingPublicV2(leaderboardCode string, limit *int64, namespace string, offset *int64) (*leaderboardclientmodels.V2GetPublicLeaderboardRankingResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.GetAllTimeLeaderboardRankingPublicV2Params{
		LeaderboardCode: leaderboardCode,
		Limit:           limit,
		Namespace:       namespace,
		Offset:          offset,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.GetAllTimeLeaderboardRankingPublicV2(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetArchivedLeaderboardRankingDataV1Handler(leaderboardCode, leaderboardCodes, namespace string, slug *string) ([]*leaderboardclientmodels.ModelsArchiveLeaderboardSignedURLResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.GetArchivedLeaderboardRankingDataV1HandlerParams{
		LeaderboardCode:  leaderboardCode,
		LeaderboardCodes: leaderboardCodes,
		Namespace:        namespace,
		Slug:             slug,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.GetArchivedLeaderboardRankingDataV1Handler(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetCurrentMonthLeaderboardRankingAdminV1(leaderboardCode string, limit *int64, namespace string, offset *int64) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.GetCurrentMonthLeaderboardRankingAdminV1Params{
		LeaderboardCode: leaderboardCode,
		Limit:           limit,
		Namespace:       namespace,
		Offset:          offset,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.GetCurrentMonthLeaderboardRankingAdminV1(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetCurrentMonthLeaderboardRankingPublicV1(leaderboardCode string, limit *int64, namespace string, offset *int64) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.GetCurrentMonthLeaderboardRankingPublicV1Params{
		LeaderboardCode: leaderboardCode,
		Limit:           limit,
		Namespace:       namespace,
		Offset:          offset,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.GetCurrentMonthLeaderboardRankingPublicV1(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetCurrentSeasonLeaderboardRankingAdminV1(leaderboardCode string, limit *int64, namespace string, offset *int64) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.GetCurrentSeasonLeaderboardRankingAdminV1Params{
		LeaderboardCode: leaderboardCode,
		Limit:           limit,
		Namespace:       namespace,
		Offset:          offset,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.GetCurrentSeasonLeaderboardRankingAdminV1(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetCurrentSeasonLeaderboardRankingPublicV1(leaderboardCode string, limit *int64, namespace string, offset *int64) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.GetCurrentSeasonLeaderboardRankingPublicV1Params{
		LeaderboardCode: leaderboardCode,
		Limit:           limit,
		Namespace:       namespace,
		Offset:          offset,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.GetCurrentSeasonLeaderboardRankingPublicV1(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetCurrentWeekLeaderboardRankingAdminV1(leaderboardCode string, limit *int64, namespace string, offset *int64) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.GetCurrentWeekLeaderboardRankingAdminV1Params{
		LeaderboardCode: leaderboardCode,
		Limit:           limit,
		Namespace:       namespace,
		Offset:          offset,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.GetCurrentWeekLeaderboardRankingAdminV1(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetCurrentWeekLeaderboardRankingPublicV1(leaderboardCode string, limit *int64, namespace string, offset *int64) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.GetCurrentWeekLeaderboardRankingPublicV1Params{
		LeaderboardCode: leaderboardCode,
		Limit:           limit,
		Namespace:       namespace,
		Offset:          offset,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.GetCurrentWeekLeaderboardRankingPublicV1(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetTodayLeaderboardRankingAdminV1(leaderboardCode string, limit *int64, namespace string, offset *int64) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.GetTodayLeaderboardRankingAdminV1Params{
		LeaderboardCode: leaderboardCode,
		Limit:           limit,
		Namespace:       namespace,
		Offset:          offset,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.GetTodayLeaderboardRankingAdminV1(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetTodayLeaderboardRankingPublicV1(leaderboardCode string, limit *int64, namespace string, offset *int64) (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.GetTodayLeaderboardRankingPublicV1Params{
		LeaderboardCode: leaderboardCode,
		Limit:           limit,
		Namespace:       namespace,
		Offset:          offset,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.GetTodayLeaderboardRankingPublicV1(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) DeleteUserRankingAdminV1(leaderboardCode, namespace, userID string) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &leaderboard_data.DeleteUserRankingAdminV1Params{
		LeaderboardCode: leaderboardCode,
		Namespace:       namespace,
		UserID:          userID,
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.DeleteUserRankingAdminV1(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (l *LeaderboardDataService) DeleteUserRankingPublicV1(leaderboardCode, namespace, userID string) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &leaderboard_data.DeleteUserRankingPublicV1Params{
		LeaderboardCode: leaderboardCode,
		Namespace:       namespace,
		UserID:          userID,
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.DeleteUserRankingPublicV1(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (l *LeaderboardDataService) DeleteUserRankingsAdminV1(leaderboardCode []string, namespace, userID string) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &leaderboard_data.DeleteUserRankingsAdminV1Params{
		LeaderboardCode: leaderboardCode,
		Namespace:       namespace,
		UserID:          userID,
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.DeleteUserRankingsAdminV1(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (l *LeaderboardDataService) GetUserRankingAdminV1(leaderboardCode, namespace, userID string) (*leaderboardclientmodels.ModelsUserRankingResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.GetUserRankingAdminV1Params{
		LeaderboardCode: leaderboardCode,
		Namespace:       namespace,
		UserID:          userID,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.GetUserRankingAdminV1(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) GetUserRankingPublicV1(leaderboardCode, namespace, userID string) (*leaderboardclientmodels.ModelsUserRankingResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.GetUserRankingPublicV1Params{
		LeaderboardCode: leaderboardCode,
		Namespace:       namespace,
		UserID:          userID,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.GetUserRankingPublicV1(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LeaderboardDataService) UpdateUserPointAdminV1(body *leaderboardclientmodels.ModelsUpdateUserPointAdminV1Request, leaderboardCode, namespace, userID string) (*leaderboardclientmodels.ModelsUpdateUserPointAdminV1Response, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_data.UpdateUserPointAdminV1Params{
		Body:            body,
		LeaderboardCode: leaderboardCode,
		Namespace:       namespace,
		UserID:          userID,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardDataServiceClient.LeaderboardData.UpdateUserPointAdminV1(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

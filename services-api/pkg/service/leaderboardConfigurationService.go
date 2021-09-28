package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type LeaderboardConfigurationService struct {
	LeaderboardConfigurationServiceClient *leaderboardclient.JusticeLeaderboardService
	TokenRepository                       repository.TokenRepository
}

func (l *LeaderboardConfigurationService) GetLeaderboardConfigurationsPublicV2(limit *int64, namespace string, offset *int64) (*leaderboardclientmodels.V2GetAllLeaderboardConfigsPublicResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_configuration.GetLeaderboardConfigurationsPublicV2Params{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := l.LeaderboardConfigurationServiceClient.LeaderboardConfiguration.GetLeaderboardConfigurationsPublicV2(params, client.BearerToken(*token.AccessToken))
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

func (l *LeaderboardConfigurationService) CreateLeaderboardConfigurationAdminV1(body *leaderboardclientmodels.ModelsLeaderboardConfigReq, namespace string) (*leaderboardclientmodels.ModelsLeaderboardConfigReq, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_configuration.CreateLeaderboardConfigurationAdminV1Params{
		Body:      body,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, conflict, internalServerError, err := l.LeaderboardConfigurationServiceClient.LeaderboardConfiguration.CreateLeaderboardConfigurationAdminV1(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
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

func (l *LeaderboardConfigurationService) CreateLeaderboardConfigurationPublicV1(body *leaderboardclientmodels.ModelsLeaderboardConfigReq, namespace string) (*leaderboardclientmodels.ModelsLeaderboardConfigReq, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_configuration.CreateLeaderboardConfigurationPublicV1Params{
		Body:      body,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, conflict, internalServerError, err := l.LeaderboardConfigurationServiceClient.LeaderboardConfiguration.CreateLeaderboardConfigurationPublicV1(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
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

func (l *LeaderboardConfigurationService) DeleteBulkLeaderboardsV1(body *leaderboardclientmodels.ModelsDeleteBulkLeaderboardsReq, namespace string) (*leaderboardclientmodels.ModelsDeleteBulkLeaderboardsResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_configuration.DeleteBulkLeaderboardsV1Params{
		Body:      body,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := l.LeaderboardConfigurationServiceClient.LeaderboardConfiguration.DeleteBulkLeaderboardsV1(params, client.BearerToken(*token.AccessToken))
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

func (l *LeaderboardConfigurationService) DeleteLeaderboardConfigurationAdminV1(leaderboardCode, namespace string) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &leaderboard_configuration.DeleteLeaderboardConfigurationAdminV1Params{
		LeaderboardCode: leaderboardCode,
		Namespace:       namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardConfigurationServiceClient.LeaderboardConfiguration.DeleteLeaderboardConfigurationAdminV1(params, client.BearerToken(*token.AccessToken))
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

func (l *LeaderboardConfigurationService) GetLeaderboardConfigurationAdminV1(leaderboardCode, namespace string) (*leaderboardclientmodels.ModelsGetLeaderboardConfigResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_configuration.GetLeaderboardConfigurationAdminV1Params{
		LeaderboardCode: leaderboardCode,
		Namespace:       namespace,
	}
	ok, badRequest, unauthorized, forbidden, conflict, internalServerError, err := l.LeaderboardConfigurationServiceClient.LeaderboardConfiguration.GetLeaderboardConfigurationAdminV1(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
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

func (l *LeaderboardConfigurationService) GetLeaderboardConfigurationsAdminV1(isArchived, isDeleted *bool, limit *int64, namespace string, offset *int64) (*leaderboardclientmodels.ModelsGetAllLeaderboardConfigsResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_configuration.GetLeaderboardConfigurationsAdminV1Params{
		IsArchived: isArchived,
		IsDeleted:  isDeleted,
		Limit:      limit,
		Namespace:  namespace,
		Offset:     offset,
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := l.LeaderboardConfigurationServiceClient.LeaderboardConfiguration.GetLeaderboardConfigurationsAdminV1(params, client.BearerToken(*token.AccessToken))
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

func (l *LeaderboardConfigurationService) GetLeaderboardConfigurationsPublicV1(isArchived, isDeleted *bool, limit *int64, namespace string, offset *int64) (*leaderboardclientmodels.ModelsGetAllLeaderboardConfigsPublicResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_configuration.GetLeaderboardConfigurationsPublicV1Params{
		IsArchived: isArchived,
		IsDeleted:  isDeleted,
		Limit:      limit,
		Namespace:  namespace,
		Offset:     offset,
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := l.LeaderboardConfigurationServiceClient.LeaderboardConfiguration.GetLeaderboardConfigurationsPublicV1(params, client.BearerToken(*token.AccessToken))
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

func (l *LeaderboardConfigurationService) UpdateLeaderboardConfigurationAdminV1(body *leaderboardclientmodels.ModelsUpdateLeaderboardConfigReq, leaderboardCode, namespace string) (*leaderboardclientmodels.ModelsGetLeaderboardConfigResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &leaderboard_configuration.UpdateLeaderboardConfigurationAdminV1Params{
		Body:            body,
		LeaderboardCode: leaderboardCode,
		Namespace:       namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardConfigurationServiceClient.LeaderboardConfiguration.UpdateLeaderboardConfigurationAdminV1(params, client.BearerToken(*token.AccessToken))
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

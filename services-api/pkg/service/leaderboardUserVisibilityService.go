package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/user_visibility"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type LeaderboardUserVisibilityService struct {
	LeaderboardUserVisibilityServiceClient *leaderboardclient.JusticeLeaderboardService
	TokenRepository                        repository.TokenRepository
}

func (l *LeaderboardUserVisibilityService) GetHiddenUsersV2(leaderboardCode string, limit *int64, namespace string, offset *int64) (*leaderboardclientmodels.ModelsGetHiddenUserResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &user_visibility.GetHiddenUsersV2Params{
		LeaderboardCode: leaderboardCode,
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardUserVisibilityServiceClient.UserVisibility.GetHiddenUsersV2(params, client.BearerToken(*token.AccessToken))
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


func (l *LeaderboardUserVisibilityService) GetUserVisibilityStatusV2(leaderboardCode, namespace, userID string) (*leaderboardclientmodels.ModelsGetUserVisibilityResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &user_visibility.GetUserVisibilityStatusV2Params{
		LeaderboardCode: leaderboardCode,
		Namespace: namespace,
		UserID: userID,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardUserVisibilityServiceClient.UserVisibility.GetUserVisibilityStatusV2(params, client.BearerToken(*token.AccessToken))
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


func (l *LeaderboardUserVisibilityService) SetUserLeaderboardVisibilityStatusV2(body *leaderboardclientmodels.ModelsSetUserVisibilityRequest, leaderboardCode, namespace, userID string) (*leaderboardclientmodels.ModelsGetUserVisibilityResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &user_visibility.SetUserLeaderboardVisibilityStatusV2Params{
		Body: body,
		LeaderboardCode: leaderboardCode,
		Namespace: namespace,
		UserID: userID,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardUserVisibilityServiceClient.UserVisibility.SetUserLeaderboardVisibilityStatusV2(params, client.BearerToken(*token.AccessToken))
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


func (l *LeaderboardUserVisibilityService) SetUserVisibilityStatusV2(body *leaderboardclientmodels.ModelsSetUserVisibilityRequest, namespace, userID string) (*leaderboardclientmodels.ModelsGetUserVisibilityResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &user_visibility.SetUserVisibilityStatusV2Params{
		Body: body,
		Namespace: namespace,
		UserID: userID,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardUserVisibilityServiceClient.UserVisibility.SetUserVisibilityStatusV2(params, client.BearerToken(*token.AccessToken))
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
package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/user_data"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type LeaderboardUserDataService struct {
	LeaderboardUserDataServiceClient *leaderboardclient.JusticeLeaderboardService
	TokenRepository                  repository.TokenRepository
}

func (l *LeaderboardUserDataService) GetUserLeaderboardRankingsAdminV1(limit *int64, namespace string, offset *int64, userID string) (*leaderboardclientmodels.ModelsGetAllUserLeaderboardsResp, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &user_data.GetUserLeaderboardRankingsAdminV1Params{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		UserID:    userID,
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := l.LeaderboardUserDataServiceClient.UserData.GetUserLeaderboardRankingsAdminV1(params, client.BearerToken(*token.AccessToken))
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

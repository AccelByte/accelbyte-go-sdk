package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type MatchmakingOperationService struct {
	MatchmakingOperationServiceClient *matchmakingclient.JusticeMatchmakingService
	TokenRepository                   repository.TokenRepository
}

func (m *MatchmakingOperationService) Healthz() error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &operations.HealthzParams{}
	_, err = m.MatchmakingOperationServiceClient.Operations.Healthz(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (m *MatchmakingOperationService) MatchmakingHealthz() error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &operations.MatchmakingHealthzParams{}
	_, err = m.MatchmakingOperationServiceClient.Operations.MatchmakingHealthz(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (m *MatchmakingOperationService) PublicGetMessages() ([]*matchmakingclientmodels.LogAppMessageDeclaration, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &operations.PublicGetMessagesParams{}
	ok, internalServerError, err := m.MatchmakingOperationServiceClient.Operations.PublicGetMessages(params, client.BearerToken(*token.AccessToken))
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

func (m *MatchmakingOperationService) VersionCheckHandler() error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &operations.VersionCheckHandlerParams{}
	_, err = m.MatchmakingOperationServiceClient.Operations.VersionCheckHandler(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

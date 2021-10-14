package matchmaking

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type OperationsService struct {
	Client          *matchmakingclient.JusticeMatchmakingService
	TokenRepository repository.TokenRepository
}

func (m *OperationsService) Healthz() error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &operations.HealthzParams{}
	_, err = m.Client.Operations.Healthz(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (m *OperationsService) MatchmakingHealthz() error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &operations.MatchmakingHealthzParams{}
	_, err = m.Client.Operations.MatchmakingHealthz(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (m *OperationsService) PublicGetMessages() ([]*matchmakingclientmodels.LogAppMessageDeclaration, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &operations.PublicGetMessagesParams{}
	ok, internalServerError, err := m.Client.Operations.PublicGetMessages(params, client.BearerToken(*token.AccessToken))
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

func (m *OperationsService) VersionCheckHandler() error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &operations.VersionCheckHandlerParams{}
	_, err = m.Client.Operations.VersionCheckHandler(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

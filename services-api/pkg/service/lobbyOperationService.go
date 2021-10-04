package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)


type LobbyOperationService struct {
	LobbyClient     *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

func (l *LobbyOperationService) PublicGetMessages() ([]*lobbyclientmodels.LogAppMessageDeclaration, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &operations.PublicGetMessagesParams{}
	ok, internalServerError, err := l.LobbyClient.Operations.PublicGetMessages(params, client.BearerToken(*token.AccessToken))
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

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	operations2 "github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type DSMCOperation struct {
	DSMCClient      *dsmcclient.JusticeDsmcService
	TokenRepository repository.TokenRepository
}

func (g *DSMCOperation) PublicGetMessages() ([]*dsmcclientmodels.LogAppMessageDeclaration, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &operations2.PublicGetMessagesParams{}
	ok, internalServerError, err := g.DSMCClient.Operations.PublicGetMessages(params, client.BearerToken(*token.AccessToken))
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

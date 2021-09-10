package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/session"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type GameSessionService struct {
	DSMCClient      *dsmcclient.JusticeDsmcService
	TokenRepository repository.TokenRepository
}

func (g *GameSessionService) ClaimServer(namespace string, content *dsmcclientmodels.ModelsClaimSessionRequest) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &session.ClaimServerParams{
		Namespace: namespace,
		Body:      content,
	}
	_, unauthorized, notFound, conflict, status425, internalServer, serviceUnavailable, err := g.DSMCClient.Session.ClaimServer(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if status425 != nil {
		errorMsg, _ := json.Marshal(*status425.GetPayload())
		logrus.Error(string(errorMsg))
		return status425
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if serviceUnavailable != nil {
		errorMsg, _ := json.Marshal(*serviceUnavailable.GetPayload())
		logrus.Error(string(errorMsg))
		return serviceUnavailable
	}
	if err != nil {
		return err
	}
	logrus.Info("Claim Server Success")
	return nil
}

func (g *GameSessionService) CreateSession(namespace string, content *dsmcclientmodels.ModelsCreateSessionRequest) (*dsmcclientmodels.ModelsSessionResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &session.CreateSessionParams{
		Namespace: namespace,
		Body:      content,
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServer, serviceUnavailable, err := g.DSMCClient.Session.CreateSession(params, client.BearerToken(*token.AccessToken))
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
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if serviceUnavailable != nil {
		errorMsg, _ := json.Marshal(*serviceUnavailable.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, serviceUnavailable
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GameSessionService) GetSession(namespace, sessionID string) (*dsmcclientmodels.ModelsSessionResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &session.GetSessionParams{
		Namespace: namespace,
		SessionID: sessionID,
	}
	ok, unauthorized, notFound, internalServer, err := g.DSMCClient.Session.GetSession(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
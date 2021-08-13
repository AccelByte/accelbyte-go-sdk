package service

import (
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
	_, err = g.DSMCClient.Session.ClaimServer(params, client.BearerToken(*token.AccessToken))
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
	ok, err := g.DSMCClient.Session.CreateSession(params, client.BearerToken(*token.AccessToken))
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
	ok, err := g.DSMCClient.Session.GetSession(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

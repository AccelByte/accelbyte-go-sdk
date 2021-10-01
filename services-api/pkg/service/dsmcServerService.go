package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/server"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type DSMCServer struct {
	DSMCClient      *dsmcclient.JusticeDsmcService
	TokenRepository repository.TokenRepository
}

func (g *DSMCImageConfig) DeregisterLocalServer(body *dsmcclientmodels.ModelsDeregisterLocalServerRequest, namespace string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &server.DeregisterLocalServerParams{
		Body:      body,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, internalServerError, err := g.DSMCClient.Server.DeregisterLocalServer(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (g *DSMCPodConfig) GetServerSession(namespace, podName string) (*dsmcclientmodels.ModelsServerSessionResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &server.GetServerSessionParams{
		Namespace: namespace,
		PodName:   podName,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := g.DSMCClient.Server.GetServerSession(params, client.BearerToken(*token.AccessToken))
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

func (g *DSMCPodConfig) RegisterLocalServer(body *dsmcclientmodels.ModelsRegisterLocalServerRequest, namespace string) (*dsmcclientmodels.ModelsServer, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &server.RegisterLocalServerParams{
		Body:      body,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := g.DSMCClient.Server.RegisterLocalServer(params, client.BearerToken(*token.AccessToken))
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

func (g *DSMCPodConfig) RegisterServer(body *dsmcclientmodels.ModelsRegisterServerRequest, namespace string) (*dsmcclientmodels.ModelsServer, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &server.RegisterServerParams{
		Body:      body,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := g.DSMCClient.Server.RegisterServer(params, client.BearerToken(*token.AccessToken))
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

func (g *DSMCPodConfig) ShutdownServer(body *dsmcclientmodels.ModelsShutdownServerRequest, namespace string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &server.ShutdownServerParams{
		Body:      body,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, notFound, internalServerError, err := g.DSMCClient.Server.ShutdownServer(params, client.BearerToken(*token.AccessToken))
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
		return err
	}
	return nil
}

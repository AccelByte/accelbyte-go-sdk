package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type DSMCAdmin struct {
	DSMCClient      *dsmcclient.JusticeDsmcService
	TokenRepository repository.TokenRepository
}

func (g *DSMCAdmin) CountServer(namespace string) (*dsmcclientmodels.ModelsCountServerResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &admin.CountServerParams{
		Namespace: namespace,
	}
	ok, unauthorized, internalServerError, err := g.DSMCClient.Admin.CountServer(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
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

func (g *DSMCAdmin) CountServerDetailed(namespace string, region *string) (*dsmcclientmodels.ModelsDetailedCountServerResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &admin.CountServerDetailedParams{
		Namespace: namespace,
		Region:    region,
	}
	ok, unauthorized, internalServerError, err := g.DSMCClient.Admin.CountServerDetailed(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
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

func (g *DSMCAdmin) CountSession(namespace string, region *string) (*dsmcclientmodels.ModelsCountSessionResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &admin.CountSessionParams{
		Namespace: namespace,
		Region:    region,
	}
	ok, unauthorized, internalServerError, err := g.DSMCClient.Admin.CountSession(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	logrus.Info("Claim Server Success")
	return ok.GetPayload(), nil
}

func (g *DSMCAdmin) DeleteLocalServer(name, namespace string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &admin.DeleteLocalServerParams{
		Name:      name,
		Namespace: namespace,
	}
	_, unauthorized, internalServerError, err := g.DSMCClient.Admin.DeleteLocalServer(params, client.BearerToken(*token.AccessToken))
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

func (g *DSMCAdmin) DeleteServer(namespace, podName string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &admin.DeleteServerParams{
		Namespace: namespace,
		PodName:   podName,
	}
	_, unauthorized, notFound, internalServerError, err := g.DSMCClient.Admin.DeleteServer(params, client.BearerToken(*token.AccessToken))
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

func (g *DSMCAdmin) DeleteSession(namespace, sessionID string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &admin.DeleteSessionParams{
		Namespace: namespace,
		SessionID: sessionID,
	}
	_, unauthorized, internalServerError, err := g.DSMCClient.Admin.DeleteSession(params, client.BearerToken(*token.AccessToken))
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

func (g *DSMCAdmin) GetServer(namespace, podName string) (*dsmcclientmodels.ModelsServer, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &admin.GetServerParams{
		Namespace: namespace,
		PodName:   podName,
	}
	ok, unauthorized, notFound, internalServerError, err := g.DSMCClient.Admin.GetServer(params, client.BearerToken(*token.AccessToken))
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
	logrus.Info("Claim Server Success")
	return ok.GetPayload(), nil
}

func (g *DSMCAdmin) ListLocalServer(namespace string) (*dsmcclientmodels.ModelsListServerResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &admin.ListLocalServerParams{
		Namespace: namespace,
	}
	ok, unauthorized, internalServerError, err := g.DSMCClient.Admin.ListLocalServer(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	logrus.Info("Claim Server Success")
	return ok.GetPayload(), nil
}

func (g *DSMCAdmin) ListServer(count *int64, namespace string, offset *int64, region *string) (*dsmcclientmodels.ModelsListServerResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &admin.ListServerParams{
		Count:     count,
		Namespace: namespace,
		Offset:    offset,
		Region:    region,
	}
	ok, unauthorized, internalServerError, err := g.DSMCClient.Admin.ListServer(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	logrus.Info("Claim Server Success")
	return ok.GetPayload(), nil
}

func (g *DSMCAdmin) ListSession(count *int64, namespace string, offset *int64, region *string, withServer *bool) (*dsmcclientmodels.ModelsListSessionResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &admin.ListSessionParams{
		Count:      count,
		Namespace:  namespace,
		Offset:     offset,
		Region:     region,
		WithServer: withServer,
	}
	ok, unauthorized, internalServerError, err := g.DSMCClient.Admin.ListSession(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	logrus.Info("Claim Server Success")
	return ok.GetPayload(), nil
}

func (g *DSMCAdmin) GetServerLogs(namespace, podName string) (*dsmcclientmodels.ModelsServerLogs, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &admin.GetServerLogsParams{
		Namespace: namespace,
		PodName:   podName,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := g.DSMCClient.Admin.GetServerLogs(params, client.BearerToken(*token.AccessToken))
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
	logrus.Info("Claim Server Success")
	return ok.GetPayload(), nil
}


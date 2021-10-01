package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/deployment_config"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type DSMCDeploymentConfig struct {
	DSMCClient      *dsmcclient.JusticeDsmcService
	TokenRepository repository.TokenRepository
}

func (g *DSMCDeploymentConfig) CreateDeployment(body *dsmcclientmodels.ModelsCreateDeploymentRequest, deployment, namespace string) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &deployment_config.CreateDeploymentParams{
		Body:       body,
		Deployment: deployment,
		Namespace:  namespace,
	}
	created, badRequest, unauthorized, conflict, internalServerError, err := g.DSMCClient.DeploymentConfig.CreateDeployment(params, client.BearerToken(*token.AccessToken))
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (g *DSMCDeploymentConfig) CreateDeploymentOverride(body *dsmcclientmodels.ModelsCreateDeploymentOverrideRequest, deployment, namespace, version string) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &deployment_config.CreateDeploymentOverrideParams{
		Body:       body,
		Deployment: deployment,
		Namespace:  namespace,
		Version:    version,
	}
	created, badRequest, unauthorized, notFound, conflict, internalServerError, err := g.DSMCClient.DeploymentConfig.CreateDeploymentOverride(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (g *DSMCDeploymentConfig) CreateOverrideRegionOverride(body *dsmcclientmodels.ModelsCreateRegionOverrideRequest, deployment, namespace, region, version string) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &deployment_config.CreateOverrideRegionOverrideParams{
		Body:       body,
		Deployment: deployment,
		Namespace:  namespace,
		Region:     region,
		Version:    version,
	}
	created, badRequest, unauthorized, notFound, conflict, internalServerError, err := g.DSMCClient.DeploymentConfig.CreateOverrideRegionOverride(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (g *DSMCDeploymentConfig) CreateRootRegionOverride(body *dsmcclientmodels.ModelsCreateRegionOverrideRequest, deployment, namespace, region string) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &deployment_config.CreateRootRegionOverrideParams{
		Body:       body,
		Deployment: deployment,
		Namespace:  namespace,
		Region:     region,
	}
	created, badRequest, unauthorized, notFound, conflict, internalServerError, err := g.DSMCClient.DeploymentConfig.CreateRootRegionOverride(params, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (g *DSMCConfig) DeleteDeployment(deployment, namespace string) error {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &deployment_config.DeleteDeploymentParams{
		Deployment: deployment,
		Namespace:  namespace,
	}
	_, badRequest, unauthorized, notFound, internalServerError, err := g.DSMCClient.DeploymentConfig.DeleteDeployment(params, client.BearerToken(*token.AccessToken))
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

func (g *DSMCConfig) DeleteDeploymentOverride(deployment, namespace, version string) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &deployment_config.DeleteDeploymentOverrideParams{
		Deployment: deployment,
		Namespace:  namespace,
		Version:    version,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := g.DSMCClient.DeploymentConfig.DeleteDeploymentOverride(params, client.BearerToken(*token.AccessToken))
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

func (g *DSMCConfig) DeleteOverrideRegionOverride(deployment, namespace, region, version string) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &deployment_config.DeleteOverrideRegionOverrideParams{
		Deployment: deployment,
		Namespace:  namespace,
		Region:     region,
		Version:    version,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := g.DSMCClient.DeploymentConfig.DeleteOverrideRegionOverride(params, client.BearerToken(*token.AccessToken))
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

func (g *DSMCConfig) DeleteRootRegionOverride(deployment, namespace, region string) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &deployment_config.DeleteRootRegionOverrideParams{
		Deployment: deployment,
		Namespace:  namespace,
		Region:     region,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := g.DSMCClient.DeploymentConfig.DeleteRootRegionOverride(params, client.BearerToken(*token.AccessToken))
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

func (g *DSMCConfig) GetAllDeployment(count *int64, namespace string, offset *int64) (*dsmcclientmodels.ModelsListDeploymentResponse, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &deployment_config.GetAllDeploymentParams{
		Count:     count,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, badRequest, unauthorized, internalServerError, err := g.DSMCClient.DeploymentConfig.GetAllDeployment(params, client.BearerToken(*token.AccessToken))
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

func (g *DSMCConfig) GetDeployment(deployment, namespace string) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &deployment_config.GetDeploymentParams{
		Deployment: deployment,
		Namespace:  namespace,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := g.DSMCClient.DeploymentConfig.GetDeployment(params, client.BearerToken(*token.AccessToken))
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

func (g *DSMCConfig) UpdateDeployment(body *dsmcclientmodels.ModelsUpdateDeploymentRequest, deployment, namespace string) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &deployment_config.UpdateDeploymentParams{
		Body:       body,
		Deployment: deployment,
		Namespace:  namespace,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := g.DSMCClient.DeploymentConfig.UpdateDeployment(params, client.BearerToken(*token.AccessToken))
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

func (g *DSMCConfig) UpdateDeploymentOverride(body *dsmcclientmodels.ModelsUpdateDeploymentOverrideRequest, deployment, namespace, version string) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &deployment_config.UpdateDeploymentOverrideParams{
		Body:       body,
		Deployment: deployment,
		Namespace:  namespace,
		Version:    version,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := g.DSMCClient.DeploymentConfig.UpdateDeploymentOverride(params, client.BearerToken(*token.AccessToken))
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

func (g *DSMCConfig) UpdateOverrideRegionOverride(body *dsmcclientmodels.ModelsUpdateRegionOverrideRequest, deployment, namespace, region, version string) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &deployment_config.UpdateOverrideRegionOverrideParams{
		Body:       body,
		Deployment: deployment,
		Namespace:  namespace,
		Region:     region,
		Version:    version,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := g.DSMCClient.DeploymentConfig.UpdateOverrideRegionOverride(params, client.BearerToken(*token.AccessToken))
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

func (g *DSMCConfig) UpdateRootRegionOverride(body *dsmcclientmodels.ModelsUpdateRegionOverrideRequest, deployment, namespace, region string) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &deployment_config.UpdateRootRegionOverrideParams{
		Body:       body,
		Deployment: deployment,
		Namespace:  namespace,
		Region:     region,
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := g.DSMCClient.DeploymentConfig.UpdateRootRegionOverride(params, client.BearerToken(*token.AccessToken))
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

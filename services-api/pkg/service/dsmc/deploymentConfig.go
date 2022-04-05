// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dsmc

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/deployment_config"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type DeploymentConfigService struct {
	Client          *dsmcclient.JusticeDsmcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetAllDeploymentShort instead
func (d *DeploymentConfigService) GetAllDeployment(input *deployment_config.GetAllDeploymentParams) (*dsmcclientmodels.ModelsListDeploymentResponse, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := d.Client.DeploymentConfig.GetAllDeployment(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetDeploymentShort instead
func (d *DeploymentConfigService) GetDeployment(input *deployment_config.GetDeploymentParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := d.Client.DeploymentConfig.GetDeployment(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateDeploymentShort instead
func (d *DeploymentConfigService) CreateDeployment(input *deployment_config.CreateDeploymentParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, conflict, internalServerError, err := d.Client.DeploymentConfig.CreateDeployment(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use DeleteDeploymentShort instead
func (d *DeploymentConfigService) DeleteDeployment(input *deployment_config.DeleteDeploymentParams) error {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, internalServerError, err := d.Client.DeploymentConfig.DeleteDeployment(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use UpdateDeploymentShort instead
func (d *DeploymentConfigService) UpdateDeployment(input *deployment_config.UpdateDeploymentParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := d.Client.DeploymentConfig.UpdateDeployment(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateRootRegionOverrideShort instead
func (d *DeploymentConfigService) CreateRootRegionOverride(input *deployment_config.CreateRootRegionOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, notFound, conflict, internalServerError, err := d.Client.DeploymentConfig.CreateRootRegionOverride(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use DeleteRootRegionOverrideShort instead
func (d *DeploymentConfigService) DeleteRootRegionOverride(input *deployment_config.DeleteRootRegionOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := d.Client.DeploymentConfig.DeleteRootRegionOverride(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateRootRegionOverrideShort instead
func (d *DeploymentConfigService) UpdateRootRegionOverride(input *deployment_config.UpdateRootRegionOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := d.Client.DeploymentConfig.UpdateRootRegionOverride(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateDeploymentOverrideShort instead
func (d *DeploymentConfigService) CreateDeploymentOverride(input *deployment_config.CreateDeploymentOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, notFound, conflict, internalServerError, err := d.Client.DeploymentConfig.CreateDeploymentOverride(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use DeleteDeploymentOverrideShort instead
func (d *DeploymentConfigService) DeleteDeploymentOverride(input *deployment_config.DeleteDeploymentOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := d.Client.DeploymentConfig.DeleteDeploymentOverride(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateDeploymentOverrideShort instead
func (d *DeploymentConfigService) UpdateDeploymentOverride(input *deployment_config.UpdateDeploymentOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := d.Client.DeploymentConfig.UpdateDeploymentOverride(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateOverrideRegionOverrideShort instead
func (d *DeploymentConfigService) CreateOverrideRegionOverride(input *deployment_config.CreateOverrideRegionOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, notFound, conflict, internalServerError, err := d.Client.DeploymentConfig.CreateOverrideRegionOverride(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use DeleteOverrideRegionOverrideShort instead
func (d *DeploymentConfigService) DeleteOverrideRegionOverride(input *deployment_config.DeleteOverrideRegionOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := d.Client.DeploymentConfig.DeleteOverrideRegionOverride(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateOverrideRegionOverrideShort instead
func (d *DeploymentConfigService) UpdateOverrideRegionOverride(input *deployment_config.UpdateOverrideRegionOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := d.Client.DeploymentConfig.UpdateOverrideRegionOverride(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DeploymentConfigService) GetAllDeploymentShort(input *deployment_config.GetAllDeploymentParams) (*dsmcclientmodels.ModelsListDeploymentResponse, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := d.Client.DeploymentConfig.GetAllDeploymentShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DeploymentConfigService) GetDeploymentShort(input *deployment_config.GetDeploymentParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := d.Client.DeploymentConfig.GetDeploymentShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DeploymentConfigService) CreateDeploymentShort(input *deployment_config.CreateDeploymentParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := d.Client.DeploymentConfig.CreateDeploymentShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (d *DeploymentConfigService) DeleteDeploymentShort(input *deployment_config.DeleteDeploymentParams) error {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = d.Client.DeploymentConfig.DeleteDeploymentShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (d *DeploymentConfigService) UpdateDeploymentShort(input *deployment_config.UpdateDeploymentParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := d.Client.DeploymentConfig.UpdateDeploymentShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DeploymentConfigService) CreateRootRegionOverrideShort(input *deployment_config.CreateRootRegionOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := d.Client.DeploymentConfig.CreateRootRegionOverrideShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (d *DeploymentConfigService) DeleteRootRegionOverrideShort(input *deployment_config.DeleteRootRegionOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := d.Client.DeploymentConfig.DeleteRootRegionOverrideShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DeploymentConfigService) UpdateRootRegionOverrideShort(input *deployment_config.UpdateRootRegionOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := d.Client.DeploymentConfig.UpdateRootRegionOverrideShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DeploymentConfigService) CreateDeploymentOverrideShort(input *deployment_config.CreateDeploymentOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := d.Client.DeploymentConfig.CreateDeploymentOverrideShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (d *DeploymentConfigService) DeleteDeploymentOverrideShort(input *deployment_config.DeleteDeploymentOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := d.Client.DeploymentConfig.DeleteDeploymentOverrideShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DeploymentConfigService) UpdateDeploymentOverrideShort(input *deployment_config.UpdateDeploymentOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := d.Client.DeploymentConfig.UpdateDeploymentOverrideShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DeploymentConfigService) CreateOverrideRegionOverrideShort(input *deployment_config.CreateOverrideRegionOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := d.Client.DeploymentConfig.CreateOverrideRegionOverrideShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (d *DeploymentConfigService) DeleteOverrideRegionOverrideShort(input *deployment_config.DeleteOverrideRegionOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := d.Client.DeploymentConfig.DeleteOverrideRegionOverrideShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (d *DeploymentConfigService) UpdateOverrideRegionOverrideShort(input *deployment_config.UpdateOverrideRegionOverrideParams) (*dsmcclientmodels.ModelsDeploymentWithOverride, error) {
	accessToken, err := d.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := d.Client.DeploymentConfig.UpdateOverrideRegionOverrideShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

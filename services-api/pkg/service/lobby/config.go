// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type ConfigService struct {
	Client          *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

func (c *ConfigService) AdminGetAllConfigV1(input *config.AdminGetAllConfigV1Params) (*lobbyclientmodels.ModelsConfigList, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Config.AdminGetAllConfigV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
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

func (c *ConfigService) AdminGetConfigV1(input *config.AdminGetConfigV1Params) (*lobbyclientmodels.ModelsConfigReq, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Config.AdminGetConfigV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
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

func (c *ConfigService) AdminUpdateConfigV1(input *config.AdminUpdateConfigV1Params) (*lobbyclientmodels.ModelsConfigReq, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, preconditionFailed, internalServerError, err := c.Client.Config.AdminUpdateConfigV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if preconditionFailed != nil {
		return nil, preconditionFailed
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigService) ExportConfig(input *config.ExportConfigParams) ([]*lobbyclientmodels.ModelsConfigExport, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := c.Client.Config.ExportConfig(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigService) ImportConfig(input *config.ImportConfigParams) (*lobbyclientmodels.ModelsImportConfigResponse, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := c.Client.Config.ImportConfig(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigService) AdminGetAllConfigV1Short(input *config.AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsConfigList, error) {
	ok, err := c.Client.Config.AdminGetAllConfigV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigService) AdminGetConfigV1Short(input *config.AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsConfigReq, error) {
	ok, err := c.Client.Config.AdminGetConfigV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigService) AdminUpdateConfigV1Short(input *config.AdminUpdateConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsConfigReq, error) {
	ok, err := c.Client.Config.AdminUpdateConfigV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigService) ExportConfigShort(input *config.ExportConfigParams, authInfo runtime.ClientAuthInfoWriter) ([]*lobbyclientmodels.ModelsConfigExport, error) {
	ok, err := c.Client.Config.ExportConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigService) ImportConfigShort(input *config.ImportConfigParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsImportConfigResponse, error) {
	ok, err := c.Client.Config.ImportConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

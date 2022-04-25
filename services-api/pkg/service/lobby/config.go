// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type ConfigService struct {
	Client          *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminGetAllConfigV1Short instead
func (c *ConfigService) AdminGetAllConfigV1(input *config.AdminGetAllConfigV1Params) (*lobbyclientmodels.ModelsConfigList, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Config.AdminGetAllConfigV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminGetConfigV1Short instead
func (c *ConfigService) AdminGetConfigV1(input *config.AdminGetConfigV1Params) (*lobbyclientmodels.ModelsConfigReq, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Config.AdminGetConfigV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminUpdateConfigV1Short instead
func (c *ConfigService) AdminUpdateConfigV1(input *config.AdminUpdateConfigV1Params) (*lobbyclientmodels.ModelsConfigReq, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, preconditionFailed, internalServerError, err := c.Client.Config.AdminUpdateConfigV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminExportConfigV1Short instead
func (c *ConfigService) AdminExportConfigV1(input *config.AdminExportConfigV1Params) (*lobbyclientmodels.ModelsConfigExport, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := c.Client.Config.AdminExportConfigV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminImportConfigV1Short instead
func (c *ConfigService) AdminImportConfigV1(input *config.AdminImportConfigV1Params) (*lobbyclientmodels.ModelsImportConfigResponse, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := c.Client.Config.AdminImportConfigV1(input, client.BearerToken(*token.AccessToken))
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

func (c *ConfigService) AdminGetAllConfigV1Short(input *config.AdminGetAllConfigV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsConfigList, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Config.AdminGetAllConfigV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *ConfigService) AdminGetConfigV1Short(input *config.AdminGetConfigV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsConfigReq, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Config.AdminGetConfigV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *ConfigService) AdminUpdateConfigV1Short(input *config.AdminUpdateConfigV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsConfigReq, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Config.AdminUpdateConfigV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *ConfigService) AdminExportConfigV1Short(input *config.AdminExportConfigV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsConfigExport, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Config.AdminExportConfigV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *ConfigService) AdminImportConfigV1Short(input *config.AdminImportConfigV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsImportConfigResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Config.AdminImportConfigV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

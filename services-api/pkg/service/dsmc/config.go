// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dsmc

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type ConfigService struct {
	Client          *dsmcclient.JusticeDsmcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use ListConfigShort instead
func (c *ConfigService) ListConfig(input *config.ListConfigParams) (*dsmcclientmodels.ModelsListConfigResponse, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := c.Client.Config.ListConfig(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use SaveConfigShort instead
func (c *ConfigService) SaveConfig(input *config.SaveConfigParams) error {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := c.Client.Config.SaveConfig(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use GetConfigShort instead
func (c *ConfigService) GetConfig(input *config.GetConfigParams) (*dsmcclientmodels.ModelsDSMConfigRecord, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := c.Client.Config.GetConfig(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use CreateConfigShort instead
func (c *ConfigService) CreateConfig(input *config.CreateConfigParams) (*dsmcclientmodels.ModelsDSMConfigRecord, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, conflict, internalServerError, err := c.Client.Config.CreateConfig(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use DeleteConfigShort instead
func (c *ConfigService) DeleteConfig(input *config.DeleteConfigParams) error {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, internalServerError, err := c.Client.Config.DeleteConfig(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use UpdateConfigShort instead
func (c *ConfigService) UpdateConfig(input *config.UpdateConfigParams) (*dsmcclientmodels.ModelsDSMConfigRecord, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := c.Client.Config.UpdateConfig(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use ClearCacheShort instead
func (c *ConfigService) ClearCache(input *config.ClearCacheParams) error {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, internalServerError, err := c.Client.Config.ClearCache(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AddPortShort instead
func (c *ConfigService) AddPort(input *config.AddPortParams) (*dsmcclientmodels.ModelsDSMConfigRecord, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, notFound, conflict, internalServerError, err := c.Client.Config.AddPort(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use DeletePortShort instead
func (c *ConfigService) DeletePort(input *config.DeletePortParams) (*dsmcclientmodels.ModelsDSMConfigRecord, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := c.Client.Config.DeletePort(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use UpdatePortShort instead
func (c *ConfigService) UpdatePort(input *config.UpdatePortParams) (*dsmcclientmodels.ModelsDSMConfigRecord, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := c.Client.Config.UpdatePort(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use ExportConfigV1Short instead
func (c *ConfigService) ExportConfigV1(input *config.ExportConfigV1Params) (*dsmcclientmodels.ModelsDSMConfigExport, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Config.ExportConfigV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use ImportConfigV1Short instead
func (c *ConfigService) ImportConfigV1(input *config.ImportConfigV1Params) (*dsmcclientmodels.ModelsImportResponse, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Config.ImportConfigV1(input, client.BearerToken(*accessToken.AccessToken))
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

func (c *ConfigService) ListConfigShort(input *config.ListConfigParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsListConfigResponse, error) {
	ok, err := c.Client.Config.ListConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigService) SaveConfigShort(input *config.SaveConfigParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := c.Client.Config.SaveConfigShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (c *ConfigService) GetConfigShort(input *config.GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsDSMConfigRecord, error) {
	ok, err := c.Client.Config.GetConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigService) CreateConfigShort(input *config.CreateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsDSMConfigRecord, error) {
	created, err := c.Client.Config.CreateConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (c *ConfigService) DeleteConfigShort(input *config.DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := c.Client.Config.DeleteConfigShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (c *ConfigService) UpdateConfigShort(input *config.UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsDSMConfigRecord, error) {
	ok, err := c.Client.Config.UpdateConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigService) ClearCacheShort(input *config.ClearCacheParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := c.Client.Config.ClearCacheShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (c *ConfigService) AddPortShort(input *config.AddPortParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsDSMConfigRecord, error) {
	created, err := c.Client.Config.AddPortShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (c *ConfigService) DeletePortShort(input *config.DeletePortParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsDSMConfigRecord, error) {
	ok, err := c.Client.Config.DeletePortShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigService) UpdatePortShort(input *config.UpdatePortParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsDSMConfigRecord, error) {
	ok, err := c.Client.Config.UpdatePortShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigService) ExportConfigV1Short(input *config.ExportConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsDSMConfigExport, error) {
	ok, err := c.Client.Config.ExportConfigV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigService) ImportConfigV1Short(input *config.ImportConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsImportResponse, error) {
	ok, err := c.Client.Config.ImportConfigV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

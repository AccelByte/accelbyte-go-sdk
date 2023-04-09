// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/service_plugin_config"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type ServicePluginConfigService struct {
	Client                 *platformclient.JusticePlatformService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *ServicePluginConfigService) GetAuthSession() auth.Session {
	if aaa.RefreshTokenRepository != nil {
		return auth.Session{
			aaa.TokenRepository,
			aaa.ConfigRepository,
			aaa.RefreshTokenRepository,
		}
	}

	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: 2022-01-10 - please use GetServicePluginConfigShort instead.
func (aaa *ServicePluginConfigService) GetServicePluginConfig(input *service_plugin_config.GetServicePluginConfigParams) (*platformclientmodels.ServicePluginConfigInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.ServicePluginConfig.GetServicePluginConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use UpdateServicePluginConfigShort instead.
func (aaa *ServicePluginConfigService) UpdateServicePluginConfig(input *service_plugin_config.UpdateServicePluginConfigParams) (*platformclientmodels.ServicePluginConfigInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.ServicePluginConfig.UpdateServicePluginConfig(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use DeleteServicePluginConfigShort instead.
func (aaa *ServicePluginConfigService) DeleteServicePluginConfig(input *service_plugin_config.DeleteServicePluginConfigParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.ServicePluginConfig.DeleteServicePluginConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ServicePluginConfigService) GetServicePluginConfigShort(input *service_plugin_config.GetServicePluginConfigParams) (*platformclientmodels.ServicePluginConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.ServicePluginConfig.GetServicePluginConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ServicePluginConfigService) UpdateServicePluginConfigShort(input *service_plugin_config.UpdateServicePluginConfigParams) (*platformclientmodels.ServicePluginConfigInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.ServicePluginConfig.UpdateServicePluginConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ServicePluginConfigService) DeleteServicePluginConfigShort(input *service_plugin_config.DeleteServicePluginConfigParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.ServicePluginConfig.DeleteServicePluginConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/d_s_m_c_default_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/go-openapi/runtime/client"
)

type DSMCDefaultConfigurationService struct {
	Client                 *sessionclient.JusticeSessionService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *DSMCDefaultConfigurationService) GetAuthSession() auth.Session {
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

// Deprecated: 2022-01-10 - please use AdminGetDSMCConfigurationDefaultShort instead.
func (aaa *DSMCDefaultConfigurationService) AdminGetDSMCConfigurationDefault(input *d_s_m_c_default_configuration.AdminGetDSMCConfigurationDefaultParams) (*sessionclientmodels.ModelsDefaultDSMCConfig, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.DsmcDefaultConfiguration.AdminGetDSMCConfigurationDefault(input, client.BearerToken(*token.AccessToken))
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

func (aaa *DSMCDefaultConfigurationService) AdminGetDSMCConfigurationDefaultShort(input *d_s_m_c_default_configuration.AdminGetDSMCConfigurationDefaultParams) (*sessionclientmodels.ModelsDefaultDSMCConfig, error) {
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

	ok, err := aaa.Client.DsmcDefaultConfiguration.AdminGetDSMCConfigurationDefaultShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

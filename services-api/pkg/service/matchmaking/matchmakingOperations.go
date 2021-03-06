// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmaking

import (
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking_operations"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type MatchmakingOperationsService struct {
	Client                 *matchmakingclient.JusticeMatchmakingService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (m *MatchmakingOperationsService) GetAuthSession() auth.Session {
	if m.RefreshTokenRepository != nil {
		return auth.Session{
			m.TokenRepository,
			m.ConfigRepository,
			m.RefreshTokenRepository,
		}
	}

	return auth.Session{
		m.TokenRepository,
		m.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use GetHealthcheckInfoShort instead
func (m *MatchmakingOperationsService) GetHealthcheckInfo(input *matchmaking_operations.GetHealthcheckInfoParams) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = m.Client.MatchmakingOperations.GetHealthcheckInfo(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use HandlerV3HealthzShort instead
func (m *MatchmakingOperationsService) HandlerV3Healthz(input *matchmaking_operations.HandlerV3HealthzParams) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = m.Client.MatchmakingOperations.HandlerV3Healthz(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublicGetMessagesShort instead
func (m *MatchmakingOperationsService) PublicGetMessages(input *matchmaking_operations.PublicGetMessagesParams) ([]*matchmakingclientmodels.LogAppMessageDeclaration, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, internalServerError, err := m.Client.MatchmakingOperations.PublicGetMessages(input, client.BearerToken(*token.AccessToken))
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use VersionCheckHandlerShort instead
func (m *MatchmakingOperationsService) VersionCheckHandler(input *matchmaking_operations.VersionCheckHandlerParams) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = m.Client.MatchmakingOperations.VersionCheckHandler(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (m *MatchmakingOperationsService) GetHealthcheckInfoShort(input *matchmaking_operations.GetHealthcheckInfoParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := m.Client.MatchmakingOperations.GetHealthcheckInfoShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (m *MatchmakingOperationsService) HandlerV3HealthzShort(input *matchmaking_operations.HandlerV3HealthzParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := m.Client.MatchmakingOperations.HandlerV3HealthzShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (m *MatchmakingOperationsService) PublicGetMessagesShort(input *matchmaking_operations.PublicGetMessagesParams) ([]*matchmakingclientmodels.LogAppMessageDeclaration, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.MatchmakingOperations.PublicGetMessagesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingOperationsService) VersionCheckHandlerShort(input *matchmaking_operations.VersionCheckHandlerParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := m.Client.MatchmakingOperations.VersionCheckHandlerShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

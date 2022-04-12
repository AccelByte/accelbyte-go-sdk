// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package matchmaking

import (
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking_operations"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type MatchmakingOperationsService struct {
	Client          *matchmakingclient.JusticeMatchmakingService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetHealthcheckInfoShort instead
func (m *MatchmakingOperationsService) GetHealthcheckInfo(input *matchmaking_operations.GetHealthcheckInfoParams) error {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = m.Client.MatchmakingOperations.GetHealthcheckInfo(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use HandlerV3HealthzShort instead
func (m *MatchmakingOperationsService) HandlerV3Healthz(input *matchmaking_operations.HandlerV3HealthzParams) error {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = m.Client.MatchmakingOperations.HandlerV3Healthz(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublicGetMessagesShort instead
func (m *MatchmakingOperationsService) PublicGetMessages(input *matchmaking_operations.PublicGetMessagesParams) ([]*matchmakingclientmodels.LogAppMessageDeclaration, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, internalServerError, err := m.Client.MatchmakingOperations.PublicGetMessages(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = m.Client.MatchmakingOperations.VersionCheckHandler(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (m *MatchmakingOperationsService) GetHealthcheckInfoShort(input *matchmaking_operations.GetHealthcheckInfoParams) error {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = m.Client.MatchmakingOperations.GetHealthcheckInfoShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (m *MatchmakingOperationsService) HandlerV3HealthzShort(input *matchmaking_operations.HandlerV3HealthzParams) error {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = m.Client.MatchmakingOperations.HandlerV3HealthzShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (m *MatchmakingOperationsService) PublicGetMessagesShort(input *matchmaking_operations.PublicGetMessagesParams) ([]*matchmakingclientmodels.LogAppMessageDeclaration, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := m.Client.MatchmakingOperations.PublicGetMessagesShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingOperationsService) VersionCheckHandlerShort(input *matchmaking_operations.VersionCheckHandlerParams) error {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = m.Client.MatchmakingOperations.VersionCheckHandlerShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

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
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type MatchmakingOperationsService struct {
	Client          *matchmakingclient.JusticeMatchmakingService
	TokenRepository repository.TokenRepository
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

// [{'authorization': []}]
func (m *MatchmakingOperationsService) GetHealthcheckInfoShort(input *matchmaking_operations.GetHealthcheckInfoParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	_, err := m.Client.MatchmakingOperations.GetHealthcheckInfoShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (m *MatchmakingOperationsService) HandlerV3HealthzShort(input *matchmaking_operations.HandlerV3HealthzParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	_, err := m.Client.MatchmakingOperations.HandlerV3HealthzShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (m *MatchmakingOperationsService) PublicGetMessagesShort(input *matchmaking_operations.PublicGetMessagesParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*matchmakingclientmodels.LogAppMessageDeclaration, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	ok, err := m.Client.MatchmakingOperations.PublicGetMessagesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (m *MatchmakingOperationsService) VersionCheckHandlerShort(input *matchmaking_operations.VersionCheckHandlerParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	_, err := m.Client.MatchmakingOperations.VersionCheckHandlerShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

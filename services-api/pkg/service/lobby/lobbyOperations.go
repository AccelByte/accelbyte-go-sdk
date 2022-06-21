// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/lobby_operations"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type LobbyOperationsService struct {
	Client                 *lobbyclient.JusticeLobbyService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (l *LobbyOperationsService) GetAuthSession() auth.Session {
	if l.RefreshTokenRepository != nil {
		return auth.Session{
			l.TokenRepository,
			l.ConfigRepository,
			l.RefreshTokenRepository,
		}
	}

	return auth.Session{
		l.TokenRepository,
		l.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use AdminUpdatePartyAttributesV1Short instead
func (l *LobbyOperationsService) AdminUpdatePartyAttributesV1(input *lobby_operations.AdminUpdatePartyAttributesV1Params) (*lobbyclientmodels.ModelsPartyData, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, preconditionFailed, internalServerError, err := l.Client.LobbyOperations.AdminUpdatePartyAttributesV1(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AdminJoinPartyV1Short instead
func (l *LobbyOperationsService) AdminJoinPartyV1(input *lobby_operations.AdminJoinPartyV1Params) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, preconditionFailed, internalServerError, err := l.Client.LobbyOperations.AdminJoinPartyV1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if preconditionFailed != nil {
		return preconditionFailed
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublicGetMessagesShort instead
func (l *LobbyOperationsService) PublicGetMessages(input *lobby_operations.PublicGetMessagesParams) ([]*lobbyclientmodels.LogAppMessageDeclaration, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, internalServerError, err := l.Client.LobbyOperations.PublicGetMessages(input, client.BearerToken(*token.AccessToken))
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (l *LobbyOperationsService) AdminUpdatePartyAttributesV1Short(input *lobby_operations.AdminUpdatePartyAttributesV1Params) (*lobbyclientmodels.ModelsPartyData, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  l.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := l.Client.LobbyOperations.AdminUpdatePartyAttributesV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (l *LobbyOperationsService) AdminJoinPartyV1Short(input *lobby_operations.AdminJoinPartyV1Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  l.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := l.Client.LobbyOperations.AdminJoinPartyV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (l *LobbyOperationsService) PublicGetMessagesShort(input *lobby_operations.PublicGetMessagesParams) ([]*lobbyclientmodels.LogAppMessageDeclaration, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  l.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := l.Client.LobbyOperations.PublicGetMessagesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

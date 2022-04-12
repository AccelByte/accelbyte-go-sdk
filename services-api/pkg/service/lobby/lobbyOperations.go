// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/lobby_operations"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type LobbyOperationsService struct {
	Client          *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminUpdatePartyAttributesV1Short instead
func (l *LobbyOperationsService) AdminUpdatePartyAttributesV1(input *lobby_operations.AdminUpdatePartyAttributesV1Params) (*lobbyclientmodels.ModelsPartyData, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, preconditionFailed, internalServerError, err := l.Client.LobbyOperations.AdminUpdatePartyAttributesV1(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, preconditionFailed, internalServerError, err := l.Client.LobbyOperations.AdminJoinPartyV1(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, internalServerError, err := l.Client.LobbyOperations.PublicGetMessages(input, client.BearerToken(*accessToken.AccessToken))
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (l *LobbyOperationsService) AdminUpdatePartyAttributesV1Short(input *lobby_operations.AdminUpdatePartyAttributesV1Params) (*lobbyclientmodels.ModelsPartyData, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LobbyOperations.AdminUpdatePartyAttributesV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (l *LobbyOperationsService) AdminJoinPartyV1Short(input *lobby_operations.AdminJoinPartyV1Params) error {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = l.Client.LobbyOperations.AdminJoinPartyV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (l *LobbyOperationsService) PublicGetMessagesShort(input *lobby_operations.PublicGetMessagesParams) ([]*lobbyclientmodels.LogAppMessageDeclaration, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LobbyOperations.PublicGetMessagesShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

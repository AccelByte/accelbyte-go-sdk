// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/presence"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type PresenceService struct {
	Client          *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use UsersPresenceHandlerV1Short instead
func (p *PresenceService) UsersPresenceHandlerV1(input *presence.UsersPresenceHandlerV1Params) (*lobbyclientmodels.HandlersGetUsersPresenceResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := p.Client.Presence.UsersPresenceHandlerV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
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

func (p *PresenceService) UsersPresenceHandlerV1Short(input *presence.UsersPresenceHandlerV1Params) (*lobbyclientmodels.HandlersGetUsersPresenceResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.Presence.UsersPresenceHandlerV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

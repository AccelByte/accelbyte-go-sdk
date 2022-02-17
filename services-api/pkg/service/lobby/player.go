// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/player"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type PlayerService struct {
	Client          *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminGetLobbyCCUShort instead
func (p *PlayerService) AdminGetLobbyCCU(input *player.AdminGetLobbyCCUParams) (*lobbyclientmodels.ModelsGetLobbyCcuResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.AdminGetLobbyCCU(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminGetAllPlayerSessionAttributeShort instead
func (p *PlayerService) AdminGetAllPlayerSessionAttribute(input *player.AdminGetAllPlayerSessionAttributeParams) (*lobbyclientmodels.ModelsGetAllPlayerSessionAttributeResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.AdminGetAllPlayerSessionAttribute(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminSetPlayerSessionAttributeShort instead
func (p *PlayerService) AdminSetPlayerSessionAttribute(input *player.AdminSetPlayerSessionAttributeParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.AdminSetPlayerSessionAttribute(input, client.BearerToken(*accessToken.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AdminGetPlayerSessionAttributeShort instead
func (p *PlayerService) AdminGetPlayerSessionAttribute(input *player.AdminGetPlayerSessionAttributeParams) (*lobbyclientmodels.ModelsGetPlayerSessionAttributeResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.AdminGetPlayerSessionAttribute(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminGetPlayerBlockedPlayersV1Short instead
func (p *PlayerService) AdminGetPlayerBlockedPlayersV1(input *player.AdminGetPlayerBlockedPlayersV1Params) (*lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.AdminGetPlayerBlockedPlayersV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminGetPlayerBlockedByPlayersV1Short instead
func (p *PlayerService) AdminGetPlayerBlockedByPlayersV1(input *player.AdminGetPlayerBlockedByPlayersV1Params) (*lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.AdminGetPlayerBlockedByPlayersV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminBulkBlockPlayersV1Short instead
func (p *PlayerService) AdminBulkBlockPlayersV1(input *player.AdminBulkBlockPlayersV1Params) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, internalServerError, err := p.Client.Player.AdminBulkBlockPlayersV1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use PublicGetPlayerBlockedPlayersV1Short instead
func (p *PlayerService) PublicGetPlayerBlockedPlayersV1(input *player.PublicGetPlayerBlockedPlayersV1Params) (*lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.PublicGetPlayerBlockedPlayersV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use PublicGetPlayerBlockedByPlayersV1Short instead
func (p *PlayerService) PublicGetPlayerBlockedByPlayersV1(input *player.PublicGetPlayerBlockedByPlayersV1Params) (*lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.PublicGetPlayerBlockedByPlayersV1(input, client.BearerToken(*accessToken.AccessToken))
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

func (p *PlayerService) AdminGetLobbyCCUShort(input *player.AdminGetLobbyCCUParams) (*lobbyclientmodels.ModelsGetLobbyCcuResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.Player.AdminGetLobbyCCUShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PlayerService) AdminGetAllPlayerSessionAttributeShort(input *player.AdminGetAllPlayerSessionAttributeParams) (*lobbyclientmodels.ModelsGetAllPlayerSessionAttributeResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.Player.AdminGetAllPlayerSessionAttributeShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PlayerService) AdminSetPlayerSessionAttributeShort(input *player.AdminSetPlayerSessionAttributeParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = p.Client.Player.AdminSetPlayerSessionAttributeShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (p *PlayerService) AdminGetPlayerSessionAttributeShort(input *player.AdminGetPlayerSessionAttributeParams) (*lobbyclientmodels.ModelsGetPlayerSessionAttributeResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.Player.AdminGetPlayerSessionAttributeShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PlayerService) AdminGetPlayerBlockedPlayersV1Short(input *player.AdminGetPlayerBlockedPlayersV1Params) (*lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.Player.AdminGetPlayerBlockedPlayersV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PlayerService) AdminGetPlayerBlockedByPlayersV1Short(input *player.AdminGetPlayerBlockedByPlayersV1Params) (*lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.Player.AdminGetPlayerBlockedByPlayersV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PlayerService) AdminBulkBlockPlayersV1Short(input *player.AdminBulkBlockPlayersV1Params) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = p.Client.Player.AdminBulkBlockPlayersV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (p *PlayerService) PublicGetPlayerBlockedPlayersV1Short(input *player.PublicGetPlayerBlockedPlayersV1Params) (*lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.Player.PublicGetPlayerBlockedPlayersV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PlayerService) PublicGetPlayerBlockedByPlayersV1Short(input *player.PublicGetPlayerBlockedByPlayersV1Params) (*lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.Player.PublicGetPlayerBlockedByPlayersV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

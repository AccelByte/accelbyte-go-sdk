// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/player"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type PlayerService struct {
	Client          *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminGetLobbyCCUShort instead
func (p *PlayerService) AdminGetLobbyCCU(input *player.AdminGetLobbyCCUParams) (*lobbyclientmodels.ModelsGetLobbyCcuResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.AdminGetLobbyCCU(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.AdminGetAllPlayerSessionAttribute(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.AdminSetPlayerSessionAttribute(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.AdminGetPlayerSessionAttribute(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.AdminGetPlayerBlockedPlayersV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.AdminGetPlayerBlockedByPlayersV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, internalServerError, err := p.Client.Player.AdminBulkBlockPlayersV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.PublicGetPlayerBlockedPlayersV1(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := p.Client.Player.PublicGetPlayerBlockedByPlayersV1(input, client.BearerToken(*token.AccessToken))
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

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:LOBBY:CCU [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (p *PlayerService) AdminGetLobbyCCUShort(input *player.AdminGetLobbyCCUParams, authInfoWriter runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsGetLobbyCcuResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Player.AdminGetLobbyCCUShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:ATTRIBUTES [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (p *PlayerService) AdminGetAllPlayerSessionAttributeShort(input *player.AdminGetAllPlayerSessionAttributeParams, authInfoWriter runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsGetAllPlayerSessionAttributeResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Player.AdminGetAllPlayerSessionAttributeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:ATTRIBUTES [UPDATE]'], 'HasScope': ['social'], 'authorization': []}]
func (p *PlayerService) AdminSetPlayerSessionAttributeShort(input *player.AdminSetPlayerSessionAttributeParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	_, err := p.Client.Player.AdminSetPlayerSessionAttributeShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:ATTRIBUTES [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (p *PlayerService) AdminGetPlayerSessionAttributeShort(input *player.AdminGetPlayerSessionAttributeParams, authInfoWriter runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsGetPlayerSessionAttributeResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Player.AdminGetPlayerSessionAttributeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:BLOCK [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (p *PlayerService) AdminGetPlayerBlockedPlayersV1Short(input *player.AdminGetPlayerBlockedPlayersV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Player.AdminGetPlayerBlockedPlayersV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:BLOCK [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (p *PlayerService) AdminGetPlayerBlockedByPlayersV1Short(input *player.AdminGetPlayerBlockedByPlayersV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Player.AdminGetPlayerBlockedByPlayersV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId}:PLAYER:BLOCK [CREATE]'], 'HasScope': ['social'], 'authorization': []}]
func (p *PlayerService) AdminBulkBlockPlayersV1Short(input *player.AdminBulkBlockPlayersV1Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	_, err := p.Client.Player.AdminBulkBlockPlayersV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (p *PlayerService) PublicGetPlayerBlockedPlayersV1Short(input *player.PublicGetPlayerBlockedPlayersV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Player.PublicGetPlayerBlockedPlayersV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (p *PlayerService) PublicGetPlayerBlockedByPlayersV1Short(input *player.PublicGetPlayerBlockedByPlayersV1Params, authInfoWriter runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Player.PublicGetPlayerBlockedByPlayersV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

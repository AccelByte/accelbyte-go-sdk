// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package matchmaking

import (
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type MatchmakingService struct {
	Client          *matchmakingclient.JusticeMatchmakingService
	TokenRepository repository.TokenRepository
}

func (m *MatchmakingService) GetAllChannelsHandler(input *matchmaking.GetAllChannelsHandlerParams) (*matchmakingclientmodels.ModelsGetChannelsResponse, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, conflict, internalServerError, err := m.Client.Matchmaking.GetAllChannelsHandler(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) CreateChannelHandler(input *matchmaking.CreateChannelHandlerParams) (*matchmakingclientmodels.ModelsCreateChannelResponse, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, internalServerError, err := m.Client.Matchmaking.CreateChannelHandler(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (m *MatchmakingService) DeleteChannelHandler(input *matchmaking.DeleteChannelHandlerParams) error {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, internalServerError, err := m.Client.Matchmaking.DeleteChannelHandler(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MatchmakingService) StoreMatchResults(input *matchmaking.StoreMatchResultsParams) (*matchmakingclientmodels.ModelsMatchResultResponse, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := m.Client.Matchmaking.StoreMatchResults(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) QueueSessionHandler(input *matchmaking.QueueSessionHandlerParams) error {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, internalServerError, err := m.Client.Matchmaking.QueueSessionHandler(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MatchmakingService) DequeueSessionHandler(input *matchmaking.DequeueSessionHandlerParams) error {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.DequeueSessionHandler(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MatchmakingService) QuerySessionHandler(input *matchmaking.QuerySessionHandlerParams) (*matchmakingclientmodels.ModelsMatchmakingResult, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.QuerySessionHandler(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MatchmakingService) GetAllPartyInAllChannel(input *matchmaking.GetAllPartyInAllChannelParams) (map[string][]matchmakingclientmodels.ModelsMatchingParty, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.GetAllPartyInAllChannel(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MatchmakingService) BulkGetSessions(input *matchmaking.BulkGetSessionsParams) ([]*matchmakingclientmodels.ModelsMatchmakingResult, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.BulkGetSessions(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MatchmakingService) ExportChannels(input *matchmaking.ExportChannelsParams) ([]*matchmakingclientmodels.ModelsChannelV1, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := m.Client.Matchmaking.ExportChannels(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) ImportChannels(input *matchmaking.ImportChannelsParams) (*matchmakingclientmodels.ModelsImportConfigResponse, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := m.Client.Matchmaking.ImportChannels(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) GetSingleMatchmakingChannel(input *matchmaking.GetSingleMatchmakingChannelParams) (*matchmakingclientmodels.ModelsChannelV1, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.GetSingleMatchmakingChannel(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MatchmakingService) UpdateMatchmakingChannel(input *matchmaking.UpdateMatchmakingChannelParams) error {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.UpdateMatchmakingChannel(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MatchmakingService) GetAllPartyInChannel(input *matchmaking.GetAllPartyInChannelParams) ([]*matchmakingclientmodels.ModelsMatchingParty, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.GetAllPartyInChannel(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MatchmakingService) GetAllSessionsInChannel(input *matchmaking.GetAllSessionsInChannelParams) ([]*matchmakingclientmodels.ModelsMatchmakingResult, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.GetAllSessionsInChannel(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MatchmakingService) AddUserIntoSessionInChannel(input *matchmaking.AddUserIntoSessionInChannelParams) error {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.AddUserIntoSessionInChannel(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MatchmakingService) DeleteSessionInChannel(input *matchmaking.DeleteSessionInChannelParams) error {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.DeleteSessionInChannel(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MatchmakingService) DeleteUserFromSessionInChannel(input *matchmaking.DeleteUserFromSessionInChannelParams) error {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, noContent, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.DeleteUserFromSessionInChannel(input, client.BearerToken(*accessToken.AccessToken))
	if noContent != nil {
		return noContent
	}
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

func (m *MatchmakingService) SearchSessions(input *matchmaking.SearchSessionsParams) (*matchmakingclientmodels.ServiceGetSessionHistorySearchResponse, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.SearchSessions(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MatchmakingService) GetSessionHistoryDetailed(input *matchmaking.GetSessionHistoryDetailedParams) ([]*matchmakingclientmodels.ServiceGetSessionHistoryDetailedResponseItem, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.GetSessionHistoryDetailed(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MatchmakingService) PublicGetAllMatchmakingChannel(input *matchmaking.PublicGetAllMatchmakingChannelParams) ([]*matchmakingclientmodels.ModelsChannelV1, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, conflict, internalServerError, err := m.Client.Matchmaking.PublicGetAllMatchmakingChannel(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) PublicGetSingleMatchmakingChannel(input *matchmaking.PublicGetSingleMatchmakingChannelParams) (*matchmakingclientmodels.ModelsChannelV1, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.PublicGetSingleMatchmakingChannel(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MatchmakingService) GetAllChannelsHandlerShort(input *matchmaking.GetAllChannelsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*matchmakingclientmodels.ModelsGetChannelsResponse, error) {
	ok, err := m.Client.Matchmaking.GetAllChannelsHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) CreateChannelHandlerShort(input *matchmaking.CreateChannelHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*matchmakingclientmodels.ModelsCreateChannelResponse, error) {
	created, err := m.Client.Matchmaking.CreateChannelHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (m *MatchmakingService) DeleteChannelHandlerShort(input *matchmaking.DeleteChannelHandlerParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := m.Client.Matchmaking.DeleteChannelHandlerShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (m *MatchmakingService) StoreMatchResultsShort(input *matchmaking.StoreMatchResultsParams, authInfo runtime.ClientAuthInfoWriter) (*matchmakingclientmodels.ModelsMatchResultResponse, error) {
	ok, err := m.Client.Matchmaking.StoreMatchResultsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) QueueSessionHandlerShort(input *matchmaking.QueueSessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := m.Client.Matchmaking.QueueSessionHandlerShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (m *MatchmakingService) DequeueSessionHandlerShort(input *matchmaking.DequeueSessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := m.Client.Matchmaking.DequeueSessionHandlerShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (m *MatchmakingService) QuerySessionHandlerShort(input *matchmaking.QuerySessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*matchmakingclientmodels.ModelsMatchmakingResult, error) {
	ok, err := m.Client.Matchmaking.QuerySessionHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) GetAllPartyInAllChannelShort(input *matchmaking.GetAllPartyInAllChannelParams, authInfo runtime.ClientAuthInfoWriter) (map[string][]matchmakingclientmodels.ModelsMatchingParty, error) {
	ok, err := m.Client.Matchmaking.GetAllPartyInAllChannelShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) BulkGetSessionsShort(input *matchmaking.BulkGetSessionsParams, authInfo runtime.ClientAuthInfoWriter) ([]*matchmakingclientmodels.ModelsMatchmakingResult, error) {
	ok, err := m.Client.Matchmaking.BulkGetSessionsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) ExportChannelsShort(input *matchmaking.ExportChannelsParams, authInfo runtime.ClientAuthInfoWriter) ([]*matchmakingclientmodels.ModelsChannelV1, error) {
	ok, err := m.Client.Matchmaking.ExportChannelsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) ImportChannelsShort(input *matchmaking.ImportChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*matchmakingclientmodels.ModelsImportConfigResponse, error) {
	ok, err := m.Client.Matchmaking.ImportChannelsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) GetSingleMatchmakingChannelShort(input *matchmaking.GetSingleMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*matchmakingclientmodels.ModelsChannelV1, error) {
	ok, err := m.Client.Matchmaking.GetSingleMatchmakingChannelShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) UpdateMatchmakingChannelShort(input *matchmaking.UpdateMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := m.Client.Matchmaking.UpdateMatchmakingChannelShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (m *MatchmakingService) GetAllPartyInChannelShort(input *matchmaking.GetAllPartyInChannelParams, authInfo runtime.ClientAuthInfoWriter) ([]*matchmakingclientmodels.ModelsMatchingParty, error) {
	ok, err := m.Client.Matchmaking.GetAllPartyInChannelShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) GetAllSessionsInChannelShort(input *matchmaking.GetAllSessionsInChannelParams, authInfo runtime.ClientAuthInfoWriter) ([]*matchmakingclientmodels.ModelsMatchmakingResult, error) {
	ok, err := m.Client.Matchmaking.GetAllSessionsInChannelShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) AddUserIntoSessionInChannelShort(input *matchmaking.AddUserIntoSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := m.Client.Matchmaking.AddUserIntoSessionInChannelShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (m *MatchmakingService) DeleteSessionInChannelShort(input *matchmaking.DeleteSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := m.Client.Matchmaking.DeleteSessionInChannelShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (m *MatchmakingService) DeleteUserFromSessionInChannelShort(input *matchmaking.DeleteUserFromSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := m.Client.Matchmaking.DeleteUserFromSessionInChannelShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (m *MatchmakingService) SearchSessionsShort(input *matchmaking.SearchSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*matchmakingclientmodels.ServiceGetSessionHistorySearchResponse, error) {
	ok, err := m.Client.Matchmaking.SearchSessionsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) GetSessionHistoryDetailedShort(input *matchmaking.GetSessionHistoryDetailedParams, authInfo runtime.ClientAuthInfoWriter) ([]*matchmakingclientmodels.ServiceGetSessionHistoryDetailedResponseItem, error) {
	ok, err := m.Client.Matchmaking.GetSessionHistoryDetailedShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) PublicGetAllMatchmakingChannelShort(input *matchmaking.PublicGetAllMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) ([]*matchmakingclientmodels.ModelsChannelV1, error) {
	ok, err := m.Client.Matchmaking.PublicGetAllMatchmakingChannelShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) PublicGetSingleMatchmakingChannelShort(input *matchmaking.PublicGetSingleMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*matchmakingclientmodels.ModelsChannelV1, error) {
	ok, err := m.Client.Matchmaking.PublicGetSingleMatchmakingChannelShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

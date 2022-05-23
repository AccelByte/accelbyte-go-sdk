// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmaking

import (
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type MatchmakingService struct {
	Client          *matchmakingclient.JusticeMatchmakingService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetAllChannelsHandlerShort instead
func (m *MatchmakingService) GetAllChannelsHandler(input *matchmaking.GetAllChannelsHandlerParams) (*matchmakingclientmodels.ModelsGetChannelsResponse, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, conflict, internalServerError, err := m.Client.Matchmaking.GetAllChannelsHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use CreateChannelHandlerShort instead
func (m *MatchmakingService) CreateChannelHandler(input *matchmaking.CreateChannelHandlerParams) (*matchmakingclientmodels.ModelsCreateChannelResponse, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, internalServerError, err := m.Client.Matchmaking.CreateChannelHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteChannelHandlerShort instead
func (m *MatchmakingService) DeleteChannelHandler(input *matchmaking.DeleteChannelHandlerParams) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, internalServerError, err := m.Client.Matchmaking.DeleteChannelHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use StoreMatchResultsShort instead
func (m *MatchmakingService) StoreMatchResults(input *matchmaking.StoreMatchResultsParams) (*matchmakingclientmodels.ModelsMatchResultResponse, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := m.Client.Matchmaking.StoreMatchResults(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use QueueSessionHandlerShort instead
func (m *MatchmakingService) QueueSessionHandler(input *matchmaking.QueueSessionHandlerParams) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, internalServerError, err := m.Client.Matchmaking.QueueSessionHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DequeueSessionHandlerShort instead
func (m *MatchmakingService) DequeueSessionHandler(input *matchmaking.DequeueSessionHandlerParams) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.DequeueSessionHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use QuerySessionHandlerShort instead
func (m *MatchmakingService) QuerySessionHandler(input *matchmaking.QuerySessionHandlerParams) (*matchmakingclientmodels.ModelsMatchmakingResult, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.QuerySessionHandler(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetAllPartyInAllChannelShort instead
func (m *MatchmakingService) GetAllPartyInAllChannel(input *matchmaking.GetAllPartyInAllChannelParams) (map[string][]matchmakingclientmodels.ModelsMatchingParty, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.GetAllPartyInAllChannel(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use BulkGetSessionsShort instead
func (m *MatchmakingService) BulkGetSessions(input *matchmaking.BulkGetSessionsParams) ([]*matchmakingclientmodels.ModelsMatchmakingResult, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.BulkGetSessions(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use ExportChannelsShort instead
func (m *MatchmakingService) ExportChannels(input *matchmaking.ExportChannelsParams) ([]*matchmakingclientmodels.ModelsChannelV1, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := m.Client.Matchmaking.ExportChannels(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use ImportChannelsShort instead
func (m *MatchmakingService) ImportChannels(input *matchmaking.ImportChannelsParams) (*matchmakingclientmodels.ModelsImportConfigResponse, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := m.Client.Matchmaking.ImportChannels(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetSingleMatchmakingChannelShort instead
func (m *MatchmakingService) GetSingleMatchmakingChannel(input *matchmaking.GetSingleMatchmakingChannelParams) (*matchmakingclientmodels.ModelsChannelV1, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.GetSingleMatchmakingChannel(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateMatchmakingChannelShort instead
func (m *MatchmakingService) UpdateMatchmakingChannel(input *matchmaking.UpdateMatchmakingChannelParams) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.UpdateMatchmakingChannel(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetAllPartyInChannelShort instead
func (m *MatchmakingService) GetAllPartyInChannel(input *matchmaking.GetAllPartyInChannelParams) ([]*matchmakingclientmodels.ModelsMatchingParty, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.GetAllPartyInChannel(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetAllSessionsInChannelShort instead
func (m *MatchmakingService) GetAllSessionsInChannel(input *matchmaking.GetAllSessionsInChannelParams) ([]*matchmakingclientmodels.ModelsMatchmakingResult, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.GetAllSessionsInChannel(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AddUserIntoSessionInChannelShort instead
func (m *MatchmakingService) AddUserIntoSessionInChannel(input *matchmaking.AddUserIntoSessionInChannelParams) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.AddUserIntoSessionInChannel(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteSessionInChannelShort instead
func (m *MatchmakingService) DeleteSessionInChannel(input *matchmaking.DeleteSessionInChannelParams) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.DeleteSessionInChannel(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteUserFromSessionInChannelShort instead
func (m *MatchmakingService) DeleteUserFromSessionInChannel(input *matchmaking.DeleteUserFromSessionInChannelParams) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, noContent, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.DeleteUserFromSessionInChannel(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use SearchSessionsShort instead
func (m *MatchmakingService) SearchSessions(input *matchmaking.SearchSessionsParams) (*matchmakingclientmodels.ServiceGetSessionHistorySearchResponse, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.SearchSessions(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetSessionHistoryDetailedShort instead
func (m *MatchmakingService) GetSessionHistoryDetailed(input *matchmaking.GetSessionHistoryDetailedParams) ([]*matchmakingclientmodels.ServiceGetSessionHistoryDetailedResponseItem, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.GetSessionHistoryDetailed(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicGetAllMatchmakingChannelShort instead
func (m *MatchmakingService) PublicGetAllMatchmakingChannel(input *matchmaking.PublicGetAllMatchmakingChannelParams) ([]*matchmakingclientmodels.ModelsChannelV1, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, conflict, internalServerError, err := m.Client.Matchmaking.PublicGetAllMatchmakingChannel(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicGetSingleMatchmakingChannelShort instead
func (m *MatchmakingService) PublicGetSingleMatchmakingChannel(input *matchmaking.PublicGetSingleMatchmakingChannelParams) (*matchmakingclientmodels.ModelsChannelV1, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.PublicGetSingleMatchmakingChannel(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use SearchSessionsV2Short instead
func (m *MatchmakingService) SearchSessionsV2(input *matchmaking.SearchSessionsV2Params) (*matchmakingclientmodels.ServiceGetSessionHistorySearchResponseV2, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.Client.Matchmaking.SearchSessionsV2(input, client.BearerToken(*token.AccessToken))
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

func (m *MatchmakingService) GetAllChannelsHandlerShort(input *matchmaking.GetAllChannelsHandlerParams) (*matchmakingclientmodels.ModelsGetChannelsResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Matchmaking.GetAllChannelsHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingService) CreateChannelHandlerShort(input *matchmaking.CreateChannelHandlerParams) (*matchmakingclientmodels.ModelsCreateChannelResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := m.Client.Matchmaking.CreateChannelHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (m *MatchmakingService) DeleteChannelHandlerShort(input *matchmaking.DeleteChannelHandlerParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := m.Client.Matchmaking.DeleteChannelHandlerShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (m *MatchmakingService) StoreMatchResultsShort(input *matchmaking.StoreMatchResultsParams) (*matchmakingclientmodels.ModelsMatchResultResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Matchmaking.StoreMatchResultsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingService) QueueSessionHandlerShort(input *matchmaking.QueueSessionHandlerParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := m.Client.Matchmaking.QueueSessionHandlerShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (m *MatchmakingService) DequeueSessionHandlerShort(input *matchmaking.DequeueSessionHandlerParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := m.Client.Matchmaking.DequeueSessionHandlerShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (m *MatchmakingService) QuerySessionHandlerShort(input *matchmaking.QuerySessionHandlerParams) (*matchmakingclientmodels.ModelsMatchmakingResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Matchmaking.QuerySessionHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingService) GetAllPartyInAllChannelShort(input *matchmaking.GetAllPartyInAllChannelParams) (map[string][]matchmakingclientmodels.ModelsMatchingParty, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Matchmaking.GetAllPartyInAllChannelShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingService) BulkGetSessionsShort(input *matchmaking.BulkGetSessionsParams) ([]*matchmakingclientmodels.ModelsMatchmakingResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Matchmaking.BulkGetSessionsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingService) ExportChannelsShort(input *matchmaking.ExportChannelsParams) ([]*matchmakingclientmodels.ModelsChannelV1, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Matchmaking.ExportChannelsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingService) ImportChannelsShort(input *matchmaking.ImportChannelsParams) (*matchmakingclientmodels.ModelsImportConfigResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Matchmaking.ImportChannelsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingService) GetSingleMatchmakingChannelShort(input *matchmaking.GetSingleMatchmakingChannelParams) (*matchmakingclientmodels.ModelsChannelV1, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Matchmaking.GetSingleMatchmakingChannelShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingService) UpdateMatchmakingChannelShort(input *matchmaking.UpdateMatchmakingChannelParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := m.Client.Matchmaking.UpdateMatchmakingChannelShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (m *MatchmakingService) GetAllPartyInChannelShort(input *matchmaking.GetAllPartyInChannelParams) ([]*matchmakingclientmodels.ModelsMatchingParty, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Matchmaking.GetAllPartyInChannelShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingService) GetAllSessionsInChannelShort(input *matchmaking.GetAllSessionsInChannelParams) ([]*matchmakingclientmodels.ModelsMatchmakingResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Matchmaking.GetAllSessionsInChannelShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingService) AddUserIntoSessionInChannelShort(input *matchmaking.AddUserIntoSessionInChannelParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := m.Client.Matchmaking.AddUserIntoSessionInChannelShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (m *MatchmakingService) DeleteSessionInChannelShort(input *matchmaking.DeleteSessionInChannelParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := m.Client.Matchmaking.DeleteSessionInChannelShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (m *MatchmakingService) DeleteUserFromSessionInChannelShort(input *matchmaking.DeleteUserFromSessionInChannelParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := m.Client.Matchmaking.DeleteUserFromSessionInChannelShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (m *MatchmakingService) SearchSessionsShort(input *matchmaking.SearchSessionsParams) (*matchmakingclientmodels.ServiceGetSessionHistorySearchResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Matchmaking.SearchSessionsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingService) GetSessionHistoryDetailedShort(input *matchmaking.GetSessionHistoryDetailedParams) ([]*matchmakingclientmodels.ServiceGetSessionHistoryDetailedResponseItem, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Matchmaking.GetSessionHistoryDetailedShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingService) PublicGetAllMatchmakingChannelShort(input *matchmaking.PublicGetAllMatchmakingChannelParams) ([]*matchmakingclientmodels.ModelsChannelV1, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Matchmaking.PublicGetAllMatchmakingChannelShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingService) PublicGetSingleMatchmakingChannelShort(input *matchmaking.PublicGetSingleMatchmakingChannelParams) (*matchmakingclientmodels.ModelsChannelV1, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Matchmaking.PublicGetSingleMatchmakingChannelShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MatchmakingService) SearchSessionsV2Short(input *matchmaking.SearchSessionsV2Params) (*matchmakingclientmodels.ServiceGetSessionHistorySearchResponseV2, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Matchmaking.SearchSessionsV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

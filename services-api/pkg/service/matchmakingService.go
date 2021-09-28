package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"

	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type MatchmakingService struct {
	MatchmakingServiceClient *matchmakingclient.JusticeMatchmakingService
	TokenRepository          repository.TokenRepository
}

func (m *MatchmakingService) AddUserIntoSessionInChannel(body *matchmakingclientmodels.ModelsMatchAddUserIntoSessionRequest, channelName, matchID, namespace string) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &matchmaking.AddUserIntoSessionInChannelParams{
		Body:        body,
		ChannelName: channelName,
		MatchID:     matchID,
		Namespace:   namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.AddUserIntoSessionInChannel(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (m *MatchmakingService) BulkGetSessions(matchIDs *string, namespace string) ([]*matchmakingclientmodels.ModelsMatchmakingResult, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &matchmaking.BulkGetSessionsParams{
		MatchIDs:  matchIDs,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.BulkGetSessions(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) CreateChannelHandler(body *matchmakingclientmodels.ModelsChannelRequest, namespace string) (*matchmakingclientmodels.ModelsCreateChannelResponse, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &matchmaking.CreateChannelHandlerParams{
		Body:      body,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.CreateChannelHandler(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) DeleteChannelHandler(channel, namespace string) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &matchmaking.DeleteChannelHandlerParams{
		Channel:   channel,
		Namespace: namespace,
	}
	_, unauthorized, forbidden, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.DeleteChannelHandler(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (m *MatchmakingService) DeleteSessionInChannel(channelName, matchID, namespace string) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &matchmaking.DeleteSessionInChannelParams{
		ChannelName: channelName,
		MatchID:     matchID,
		Namespace:   namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.DeleteSessionInChannel(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (m *MatchmakingService) DeleteUserFromSessionInChannel(channelName, matchID, namespace string) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &matchmaking.DeleteUserFromSessionInChannelParams{
		ChannelName: channelName,
		MatchID:     matchID,
		Namespace:   namespace,
	}
	_, _, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.DeleteUserFromSessionInChannel(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (m *MatchmakingService) DequeueSessionHandler(body *matchmakingclientmodels.ModelsDequeueRequest, namespace string) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &matchmaking.DequeueSessionHandlerParams{
		Body:      body,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.DequeueSessionHandler(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (m *MatchmakingService) ExportChannels(namespace string) ([]*matchmakingclientmodels.ModelsChannelV1, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &matchmaking.ExportChannelsParams{
		Namespace: namespace,
	}
	ok, unauthorized, forbidden, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.ExportChannels(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) GetAllChannelsHandler(limit *int64, namespace string, offset *int64) (*matchmakingclientmodels.ModelsGetChannelsResponse, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &matchmaking.GetAllChannelsHandlerParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, badRequest, unauthorized, forbidden, conflict, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.GetAllChannelsHandler(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) GetAllPartyInAllChannel(namespace string) (*matchmakingclientmodels.ModelsMatchingParty, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &matchmaking.GetAllPartyInAllChannelParams{
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, conflict, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.GetAllPartyInAllChannel(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) GetAllPartyInChannel(channelName, namespace string) ([]*matchmakingclientmodels.ModelsMatchingParty, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &matchmaking.GetAllPartyInChannelParams{
		ChannelName: channelName,
		Namespace:   namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.GetAllPartyInChannel(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) GetAllSessionsInChannel(channelName, namespace string) ([]*matchmakingclientmodels.ModelsMatchmakingResult, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &matchmaking.GetAllSessionsInChannelParams{
		ChannelName: channelName,
		Namespace:   namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.GetAllSessionsInChannel(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) GetSessionHistoryDetailed(matchID, namespace string) ([]*matchmakingclientmodels.ServiceGetSessionHistoryDetailedResponseItem, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &matchmaking.GetSessionHistoryDetailedParams{
		MatchID:   matchID,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.GetSessionHistoryDetailed(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) GetSingleMatchmakingChannel(channelName, namespace string) (*matchmakingclientmodels.ModelsChannelV1, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &matchmaking.GetSingleMatchmakingChannelParams{
		ChannelName: channelName,
		Namespace:   namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.GetSingleMatchmakingChannel(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) ImportChannels(file runtime.NamedReadCloser, namespace string, strategy *string) (*matchmakingclientmodels.ModelsImportConfigResponse, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &matchmaking.ImportChannelsParams{
		File:      file,
		Namespace: namespace,
		Strategy:  strategy,
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.ImportChannels(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) QuerySessionHandler(matchID, namespace string) (*matchmakingclientmodels.ModelsMatchmakingResult, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &matchmaking.QuerySessionHandlerParams{
		MatchID:   matchID,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.QuerySessionHandler(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) QueueSessionHandler(body *matchmakingclientmodels.ModelsMatchmakingResult, namespace string) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &matchmaking.QueueSessionHandlerParams{
		Body:      body,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.QueueSessionHandler(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (m *MatchmakingService) SearchSessions(channel *string, deleted *bool, limit float64, matchID *string, namespace string, offset float64, partyID, userID *string) (*matchmakingclientmodels.ServiceGetSessionHistorySearchResponse, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &matchmaking.SearchSessionsParams{
		Channel:   channel,
		Deleted:   deleted,
		Limit:     limit,
		MatchID:   matchID,
		Namespace: namespace,
		Offset:    offset,
		PartyID:   partyID,
		UserID:    userID,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.SearchSessions(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) StoreMatchResults(body *matchmakingclientmodels.ModelsMatchResultRequest, namespace string) (*matchmakingclientmodels.ModelsMatchResultResponse, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &matchmaking.StoreMatchResultsParams{
		Body:      body,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.StoreMatchResults(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (m *MatchmakingService) UpdateMatchmakingChannel(body *matchmakingclientmodels.ModelsUpdateChannelRequest, channelName, namespace string) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &matchmaking.UpdateMatchmakingChannelParams{
		Body:        body,
		ChannelName: channelName,
		Namespace:   namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := m.MatchmakingServiceClient.Matchmaking.UpdateMatchmakingChannel(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

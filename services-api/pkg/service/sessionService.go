// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient"
	sessionBrowser "github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type SessionBrowserService struct {
	SessionBrowserServiceClient *sessionbrowserclient.JusticeSessionbrowserService
	TokenRepository             repository.TokenRepository
}

// QuerySession is used to query an available game session
func (b *SessionBrowserService) QuerySession(namespace, sessionType string, userId, matchId, gameMode, gameVersion, joinable, serverStatus, offset, limit *string) (*sessionbrowserclientmodels.ModelsSessionQueryResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &sessionBrowser.QuerySessionParams{
		GameMode:     gameMode,
		GameVersion:  gameVersion,
		Joinable:     joinable,
		Limit:        limit,
		MatchID:      matchId,
		Namespace:    namespace,
		Offset:       offset,
		ServerStatus: serverStatus,
		SessionType:  sessionType,
		UserID:       userId,
	}
	ok, badRequest, internalServer, err := b.SessionBrowserServiceClient.Session.QuerySession(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// CreateSession is used to register a new game session by session ID
func (b *SessionBrowserService) CreateSession(namespace string, body *sessionbrowserclientmodels.ModelsCreateSessionRequest) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &sessionBrowser.CreateSessionParams{
		Body:      body,
		Namespace: namespace,
	}
	ok, badRequest, conflict, internalServer, err := b.SessionBrowserServiceClient.Session.CreateSession(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// GetSession is used to get query game sessions by session ids
func (b *SessionBrowserService) GetSession(namespace, sessionId string) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &sessionBrowser.GetSessionParams{
		Namespace: namespace,
		SessionID: sessionId,
	}
	ok, notFound, internalServer, err := b.SessionBrowserServiceClient.Session.GetSession(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// GetSessionByUserIDs is used to get the session by session ID
func (b *SessionBrowserService) GetSessionByUserIDs(namespace, userIds string) (*sessionbrowserclientmodels.ModelsSessionByUserIDsResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &sessionBrowser.GetSessionByUserIDsParams{
		Namespace: namespace,
		UserIds:   userIds,
	}
	ok, notFound, internalServer, err := b.SessionBrowserServiceClient.Session.GetSessionByUserIDs(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// UpdateSession is used to update game session, update current player
func (b *SessionBrowserService) UpdateSession(namespace, sessionId string, body *sessionbrowserclientmodels.ModelsUpdateSessionRequest) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &sessionBrowser.UpdateSessionParams{
		Body:      body,
		Namespace: namespace,
		SessionID: sessionId,
	}
	ok, badRequest, conflict, internalServer, err := b.SessionBrowserServiceClient.Session.UpdateSession(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// DeleteSession is used to delete specified game session by session ID
func (b *SessionBrowserService) DeleteSession(namespace, sessionId string) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &sessionBrowser.DeleteSessionParams{
		Namespace: namespace,
		SessionID: sessionId,
	}
	ok, badRequest, notFound, internalServer, err := b.SessionBrowserServiceClient.Session.DeleteSession(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// AddPlayerToSession is used to add a new player to a session ID
func (b *SessionBrowserService) AddPlayerToSession(namespace, sessionId string, body *sessionbrowserclientmodels.ModelsAddPlayerRequest) (*sessionbrowserclientmodels.ModelsAddPlayerResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &sessionBrowser.AddPlayerToSessionParams{
		Body:      body,
		Namespace: namespace,
		SessionID: sessionId,
	}
	ok, badRequest, notFound, internalServer, err := b.SessionBrowserServiceClient.Session.AddPlayerToSession(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

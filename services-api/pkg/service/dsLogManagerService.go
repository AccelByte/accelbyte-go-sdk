// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/all_terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/download_server_logs"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/operations"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type DSLogManagerService struct {
	DSLogManagerServiceClient *dslogmanagerclient.JusticeDslogmanagerService
	TokenRepository           repository.TokenRepository
}

// ListAllTerminatedServers retrieves all terminated servers
func (d *DSLogManagerService) ListAllTerminatedServers(
	namespace,
	region,
	provider,
	sessionId,
	podName,
	partyId,
	userId,
	gameMode,
	deployment *string,
	offset,
	limit *int64) (*dslogmanagerclientmodels.ModelsListTerminatedServersResponse, error) {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &all_terminated_servers.ListAllTerminatedServersParams{
		Deployment: deployment,
		GameMode:   gameMode,
		Limit:      limit,
		Namespace:  namespace,
		Offset:     offset,
		PartyID:    partyId,
		PodName:    podName,
		Provider:   provider,
		Region:     region,
		SessionID:  sessionId,
		UserID:     userId,
	}
	ok, badRequest, unauthorized, internalServer, err := d.DSLogManagerServiceClient.AllTerminatedServers.ListAllTerminatedServers(params, client.BearerToken(*token.AccessToken))
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

// CheckServerLogs checks dedicated server log files existence
func (d *DSLogManagerService) CheckServerLogs(namespace, podName string) (*dslogmanagerclientmodels.ModelsLogFileStatus, error) {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &download_server_logs.CheckServerLogsParams{
		Namespace: namespace,
		PodName:   podName,
	}
	ok, notFound, internalServer, err := d.DSLogManagerServiceClient.DownloadServerLogs.CheckServerLogs(params, client.BearerToken(*token.AccessToken))
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

// DownloadServerLogs downloads dedicated server log files
func (d *DSLogManagerService) DownloadServerLogs(namespace, podName string) error {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &download_server_logs.DownloadServerLogsParams{
		Namespace: namespace,
		PodName:   podName,
	}
	_, notFound, internalServer, err := d.DSLogManagerServiceClient.DownloadServerLogs.DownloadServerLogs(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// PublicGetMessages gets service messages
func (d *DSLogManagerService) PublicGetMessages() ([]*dslogmanagerclientmodels.LogAppMessageDeclaration, error) {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &operations.PublicGetMessagesParams{}
	ok, internalServer, err := d.DSLogManagerServiceClient.Operations.PublicGetMessages(params, client.BearerToken(*token.AccessToken))
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

// ListTerminatedServers retrieves all terminated servers
func (d *DSLogManagerService) ListTerminatedServers(
	namespace string,
	region,
	provider,
	sessionId,
	podName,
	partyId,
	userId,
	gameMode,
	deployment *string,
	offset,
	limit *int64) (*dslogmanagerclientmodels.ModelsListTerminatedServersResponse, error) {
	token, err := d.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &terminated_servers.ListTerminatedServersParams{
		Deployment: deployment,
		GameMode:   gameMode,
		Limit:      limit,
		Namespace:  namespace,
		Offset:     offset,
		PartyID:    partyId,
		PodName:    podName,
		Provider:   provider,
		Region:     region,
		SessionID:  sessionId,
		UserID:     userId,
	}
	ok, badRequest, unauthorized, internalServer, err := d.DSLogManagerServiceClient.TerminatedServers.ListTerminatedServers(params, client.BearerToken(*token.AccessToken))
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

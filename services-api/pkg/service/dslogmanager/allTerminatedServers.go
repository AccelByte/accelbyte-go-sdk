// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dslogmanager

import (
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/all_terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type AllTerminatedServersService struct {
	Client          *dslogmanagerclient.JusticeDslogmanagerService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use BatchDownloadServerLogsShort instead
func (a *AllTerminatedServersService) BatchDownloadServerLogs(input *all_terminated_servers.BatchDownloadServerLogsParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, internalServerError, err := a.Client.AllTerminatedServers.BatchDownloadServerLogs(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use ListAllTerminatedServersShort instead
func (a *AllTerminatedServersService) ListAllTerminatedServers(input *all_terminated_servers.ListAllTerminatedServersParams) (*dslogmanagerclientmodels.ModelsListTerminatedServersResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := a.Client.AllTerminatedServers.ListAllTerminatedServers(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AllTerminatedServersService) BatchDownloadServerLogsShort(input *all_terminated_servers.BatchDownloadServerLogsParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.AllTerminatedServers.BatchDownloadServerLogsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (a *AllTerminatedServersService) ListAllTerminatedServersShort(input *all_terminated_servers.ListAllTerminatedServersParams) (*dslogmanagerclientmodels.ModelsListTerminatedServersResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := a.Client.AllTerminatedServers.ListAllTerminatedServersShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

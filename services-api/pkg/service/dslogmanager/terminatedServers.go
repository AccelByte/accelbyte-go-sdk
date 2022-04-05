// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dslogmanager

import (
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type TerminatedServersService struct {
	Client          *dslogmanagerclient.JusticeDslogmanagerService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use ListTerminatedServersShort instead
func (t *TerminatedServersService) ListTerminatedServers(input *terminated_servers.ListTerminatedServersParams) (*dslogmanagerclientmodels.ModelsListTerminatedServersResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := t.Client.TerminatedServers.ListTerminatedServers(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use DownloadServerLogsShort instead
func (t *TerminatedServersService) DownloadServerLogs(input *terminated_servers.DownloadServerLogsParams) error {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, internalServerError, err := t.Client.TerminatedServers.DownloadServerLogs(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use CheckServerLogsShort instead
func (t *TerminatedServersService) CheckServerLogs(input *terminated_servers.CheckServerLogsParams) (*dslogmanagerclientmodels.ModelsLogFileStatus, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, internalServerError, err := t.Client.TerminatedServers.CheckServerLogs(input, client.BearerToken(*accessToken.AccessToken))
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

func (t *TerminatedServersService) ListTerminatedServersShort(input *terminated_servers.ListTerminatedServersParams) (*dslogmanagerclientmodels.ModelsListTerminatedServersResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := t.Client.TerminatedServers.ListTerminatedServersShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (t *TerminatedServersService) DownloadServerLogsShort(input *terminated_servers.DownloadServerLogsParams) error {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = t.Client.TerminatedServers.DownloadServerLogsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (t *TerminatedServersService) CheckServerLogsShort(input *terminated_servers.CheckServerLogsParams) (*dslogmanagerclientmodels.ModelsLogFileStatus, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := t.Client.TerminatedServers.CheckServerLogsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

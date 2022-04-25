// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dslogmanager

import (
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/all_terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AllTerminatedServersService struct {
	Client          *dslogmanagerclient.JusticeDslogmanagerService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use BatchDownloadServerLogsShort instead
func (a *AllTerminatedServersService) BatchDownloadServerLogs(input *all_terminated_servers.BatchDownloadServerLogsParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, internalServerError, err := a.Client.AllTerminatedServers.BatchDownloadServerLogs(input, client.BearerToken(*token.AccessToken))
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
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := a.Client.AllTerminatedServers.ListAllTerminatedServers(input, client.BearerToken(*token.AccessToken))
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

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (a *AllTerminatedServersService) BatchDownloadServerLogsShort(input *all_terminated_servers.BatchDownloadServerLogsParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	_, err := a.Client.AllTerminatedServers.BatchDownloadServerLogsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]'], 'authorization': []}]
func (a *AllTerminatedServersService) ListAllTerminatedServersShort(input *all_terminated_servers.ListAllTerminatedServersParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dslogmanagerclientmodels.ModelsListTerminatedServersResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.AllTerminatedServers.ListAllTerminatedServersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

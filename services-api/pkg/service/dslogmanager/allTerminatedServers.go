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
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type AllTerminatedServersService struct {
	Client                 *dslogmanagerclient.JusticeDslogmanagerService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (a *AllTerminatedServersService) GetAuthSession() auth.Session {
	if a.RefreshTokenRepository != nil {
		return auth.Session{
			a.TokenRepository,
			a.ConfigRepository,
			a.RefreshTokenRepository,
		}
	}

	return auth.Session{
		a.TokenRepository,
		a.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
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

func (a *AllTerminatedServersService) BatchDownloadServerLogsShort(input *all_terminated_servers.BatchDownloadServerLogsParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := a.Client.AllTerminatedServers.BatchDownloadServerLogsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AllTerminatedServersService) ListAllTerminatedServersShort(input *all_terminated_servers.ListAllTerminatedServersParams) (*dslogmanagerclientmodels.ModelsListTerminatedServersResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := a.Client.AllTerminatedServers.ListAllTerminatedServersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

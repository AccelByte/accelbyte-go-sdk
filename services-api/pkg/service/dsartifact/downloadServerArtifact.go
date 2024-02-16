// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dsartifact

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclient/download_server_artifact"
	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type DownloadServerArtifactService struct {
	Client           *dsartifactclient.JusticeDsartifactService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdDownloadServerArtifact *string

func (aaa *DownloadServerArtifactService) UpdateFlightId(flightId string) {
	tempFlightIdDownloadServerArtifact = &flightId
}

func (aaa *DownloadServerArtifactService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use DownloadServerArtifactsShort instead.
func (aaa *DownloadServerArtifactService) DownloadServerArtifacts(input *download_server_artifact.DownloadServerArtifactsParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, internalServerError, err := aaa.Client.DownloadServerArtifact.DownloadServerArtifacts(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use CheckServerArtifactShort instead.
func (aaa *DownloadServerArtifactService) CheckServerArtifact(input *download_server_artifact.CheckServerArtifactParams) (*dsartifactclientmodels.ModelsArtifactFileStatus, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, internalServerError, err := aaa.Client.DownloadServerArtifact.CheckServerArtifact(input, client.BearerToken(*token.AccessToken))
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

func (aaa *DownloadServerArtifactService) DownloadServerArtifactsShort(input *download_server_artifact.DownloadServerArtifactsParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdDownloadServerArtifact != nil {
		input.XFlightId = tempFlightIdDownloadServerArtifact
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.DownloadServerArtifact.DownloadServerArtifactsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *DownloadServerArtifactService) CheckServerArtifactShort(input *download_server_artifact.CheckServerArtifactParams) (*dsartifactclientmodels.ModelsArtifactFileStatus, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdDownloadServerArtifact != nil {
		input.XFlightId = tempFlightIdDownloadServerArtifact
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DownloadServerArtifact.CheckServerArtifactShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

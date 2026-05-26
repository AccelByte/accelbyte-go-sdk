// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package csm

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/extend_files"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type ExtendFilesService struct {
	Client           *csmclient.JusticeCsmService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdExtendFiles *string

func (aaa *ExtendFilesService) UpdateFlightId(flightId string) {
	tempFlightIdExtendFiles = &flightId
}

func (aaa *ExtendFilesService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use GetExtendFileShort instead.
func (aaa *ExtendFilesService) GetExtendFile(input *extend_files.GetExtendFileParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, badGateway, err := aaa.Client.ExtendFiles.GetExtendFile(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if notFound != nil {
		return notFound
	}
	if badGateway != nil {
		return badGateway
	}
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ExtendFilesService) GetExtendFileShort(input *extend_files.GetExtendFileParams) error {
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
	if tempFlightIdExtendFiles != nil {
		input.XFlightId = tempFlightIdExtendFiles
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ExtendFiles.GetExtendFileShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

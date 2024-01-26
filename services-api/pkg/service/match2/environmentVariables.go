// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package match2

import (
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client"
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/environment_variables"
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type EnvironmentVariablesService struct {
	Client           *match2client.JusticeMatch2Service
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdEnvironmentVariables *string

func (aaa *EnvironmentVariablesService) UpdateFlightId(flightId string) {
	tempFlightIdEnvironmentVariables = &flightId
}

func (aaa *EnvironmentVariablesService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use EnvironmentVariableListShort instead.
func (aaa *EnvironmentVariablesService) EnvironmentVariableList(input *environment_variables.EnvironmentVariableListParams) (*match2clientmodels.APIListEnvironmentVariablesResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, err := aaa.Client.EnvironmentVariables.EnvironmentVariableList(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EnvironmentVariablesService) EnvironmentVariableListShort(input *environment_variables.EnvironmentVariableListParams) (*match2clientmodels.APIListEnvironmentVariablesResponse, error) {
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
	if tempFlightIdEnvironmentVariables != nil {
		input.XFlightId = tempFlightIdEnvironmentVariables
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.EnvironmentVariables.EnvironmentVariableListShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/sso_saml_2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type SSOSAML20Service struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdSSOSAML20 *string

func (aaa *SSOSAML20Service) UpdateFlightId(flightId string) {
	tempFlightIdSSOSAML20 = &flightId
}

func (aaa *SSOSAML20Service) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use PlatformAuthenticateSAMLV3HandlerShort instead.
func (aaa *SSOSAML20Service) PlatformAuthenticateSAMLV3Handler(input *sso_saml_2_0.PlatformAuthenticateSAMLV3HandlerParams) (string, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return "", err
	}
	found, err := aaa.Client.SSOSAML20.PlatformAuthenticateSAMLV3Handler(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return "", err
	}

	return found.Location, nil
}

func (aaa *SSOSAML20Service) PlatformAuthenticateSAMLV3HandlerShort(input *sso_saml_2_0.PlatformAuthenticateSAMLV3HandlerParams) (string, error) {
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
	if tempFlightIdSSOSAML20 != nil {
		input.XFlightId = tempFlightIdSSOSAML20
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	found, err := aaa.Client.SSOSAML20.PlatformAuthenticateSAMLV3HandlerShort(input, authInfoWriter)
	if err != nil {
		return "", err
	}

	return found.Location, nil
}

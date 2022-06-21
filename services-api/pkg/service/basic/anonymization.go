// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package basic

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type AnonymizationService struct {
	Client                 *basicclient.JusticeBasicService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (a *AnonymizationService) GetAuthSession() auth.Session {
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

// Deprecated: Use AnonymizeUserProfileShort instead
func (a *AnonymizationService) AnonymizeUserProfile(input *anonymization.AnonymizeUserProfileParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, err := a.Client.Anonymization.AnonymizeUserProfile(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if err != nil {
		return err
	}

	return nil
}

func (a *AnonymizationService) AnonymizeUserProfileShort(input *anonymization.AnonymizeUserProfileParams) error {
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

	_, err := a.Client.Anonymization.AnonymizeUserProfileShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

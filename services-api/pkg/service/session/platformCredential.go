// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/platform_credential"
	"github.com/go-openapi/runtime/client"
)

type PlatformCredentialService struct {
	Client           *sessionclient.JusticeSessionService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (aaa *PlatformCredentialService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use AdminUpdatePlatformCredentialsShort instead.
func (aaa *PlatformCredentialService) AdminUpdatePlatformCredentials(input *platform_credential.AdminUpdatePlatformCredentialsParams) (string, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return "", err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.PlatformCredential.AdminUpdatePlatformCredentials(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return "", badRequest
	}
	if unauthorized != nil {
		return "", unauthorized
	}
	if forbidden != nil {
		return "", forbidden
	}
	if notFound != nil {
		return "", notFound
	}
	if internalServerError != nil {
		return "", internalServerError
	}
	if err != nil {
		return "", err
	}

	return ok.GetPayload(), nil
}

func (aaa *PlatformCredentialService) AdminUpdatePlatformCredentialsShort(input *platform_credential.AdminUpdatePlatformCredentialsParams) (string, error) {
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

	ok, err := aaa.Client.PlatformCredential.AdminUpdatePlatformCredentialsShort(input, authInfoWriter)
	if err != nil {
		return "", err
	}

	return ok.GetPayload(), nil
}

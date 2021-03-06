// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type SSOService struct {
	Client                 *iamclient.JusticeIamService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (s *SSOService) GetAuthSession() auth.Session {
	if s.RefreshTokenRepository != nil {
		return auth.Session{
			s.TokenRepository,
			s.ConfigRepository,
			s.RefreshTokenRepository,
		}
	}

	return auth.Session{
		s.TokenRepository,
		s.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use LoginSSOClientShort instead
func (s *SSOService) LoginSSOClient(input *s_s_o.LoginSSOClientParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = s.Client.Sso.LoginSSOClient(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use LogoutSSOClientShort instead
func (s *SSOService) LogoutSSOClient(input *s_s_o.LogoutSSOClientParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, unprocessableEntity, internalServerError, err := s.Client.Sso.LogoutSSOClient(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return notFound
	}
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

func (s *SSOService) LoginSSOClientShort(input *s_s_o.LoginSSOClientParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  s.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := s.Client.Sso.LoginSSOClientShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (s *SSOService) LogoutSSOClientShort(input *s_s_o.LogoutSSOClientParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  s.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := s.Client.Sso.LogoutSSOClientShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

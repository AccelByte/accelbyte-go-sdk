// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o_credential"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type SSOCredentialService struct {
	Client                 *iamclient.JusticeIamService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (s *SSOCredentialService) GetAuthSession() auth.Session {
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

// Deprecated: Use RetrieveAllSSOLoginPlatformCredentialV3Short instead
func (s *SSOCredentialService) RetrieveAllSSOLoginPlatformCredentialV3(input *s_s_o_credential.RetrieveAllSSOLoginPlatformCredentialV3Params) ([]*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := s.Client.SsoCredential.RetrieveAllSSOLoginPlatformCredentialV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
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

// Deprecated: Use RetrieveSSOLoginPlatformCredentialShort instead
func (s *SSOCredentialService) RetrieveSSOLoginPlatformCredential(input *s_s_o_credential.RetrieveSSOLoginPlatformCredentialParams) (*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := s.Client.SsoCredential.RetrieveSSOLoginPlatformCredential(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
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

// Deprecated: Use AddSSOLoginPlatformCredentialShort instead
func (s *SSOCredentialService) AddSSOLoginPlatformCredential(input *s_s_o_credential.AddSSOLoginPlatformCredentialParams) (*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, internalServerError, err := s.Client.SsoCredential.AddSSOLoginPlatformCredential(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use DeleteSSOLoginPlatformCredentialV3Short instead
func (s *SSOCredentialService) DeleteSSOLoginPlatformCredentialV3(input *s_s_o_credential.DeleteSSOLoginPlatformCredentialV3Params) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := s.Client.SsoCredential.DeleteSSOLoginPlatformCredentialV3(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
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

// Deprecated: Use UpdateSSOPlatformCredentialShort instead
func (s *SSOCredentialService) UpdateSSOPlatformCredential(input *s_s_o_credential.UpdateSSOPlatformCredentialParams) (*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.Client.SsoCredential.UpdateSSOPlatformCredential(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
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

func (s *SSOCredentialService) RetrieveAllSSOLoginPlatformCredentialV3Short(input *s_s_o_credential.RetrieveAllSSOLoginPlatformCredentialV3Params) ([]*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
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

	ok, err := s.Client.SsoCredential.RetrieveAllSSOLoginPlatformCredentialV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SSOCredentialService) RetrieveSSOLoginPlatformCredentialShort(input *s_s_o_credential.RetrieveSSOLoginPlatformCredentialParams) (*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
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

	ok, err := s.Client.SsoCredential.RetrieveSSOLoginPlatformCredentialShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SSOCredentialService) AddSSOLoginPlatformCredentialShort(input *s_s_o_credential.AddSSOLoginPlatformCredentialParams) (*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
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

	created, err := s.Client.SsoCredential.AddSSOLoginPlatformCredentialShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (s *SSOCredentialService) DeleteSSOLoginPlatformCredentialV3Short(input *s_s_o_credential.DeleteSSOLoginPlatformCredentialV3Params) error {
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

	_, err := s.Client.SsoCredential.DeleteSSOLoginPlatformCredentialV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (s *SSOCredentialService) UpdateSSOPlatformCredentialShort(input *s_s_o_credential.UpdateSSOPlatformCredentialParams) (*iamclientmodels.ModelSSOPlatformCredentialResponse, error) {
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

	ok, err := s.Client.SsoCredential.UpdateSSOPlatformCredentialShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

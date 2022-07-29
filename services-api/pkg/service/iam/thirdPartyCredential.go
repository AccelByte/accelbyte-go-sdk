// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/third_party_credential"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type ThirdPartyCredentialService struct {
	Client                 *iamclient.JusticeIamService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *ThirdPartyCredentialService) GetAuthSession() auth.Session {
	if aaa.RefreshTokenRepository != nil {
		return auth.Session{
			aaa.TokenRepository,
			aaa.ConfigRepository,
			aaa.RefreshTokenRepository,
		}
	}

	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use RetrieveAllThirdPartyLoginPlatformCredentialV3Short instead
func (aaa *ThirdPartyCredentialService) RetrieveAllThirdPartyLoginPlatformCredentialV3(input *third_party_credential.RetrieveAllThirdPartyLoginPlatformCredentialV3Params) ([]*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.ThirdPartyCredential.RetrieveAllThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short instead
func (aaa *ThirdPartyCredentialService) RetrieveAllActiveThirdPartyLoginPlatformCredentialV3(input *third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params) ([]*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.ThirdPartyCredential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use RetrieveThirdPartyLoginPlatformCredentialV3Short instead
func (aaa *ThirdPartyCredentialService) RetrieveThirdPartyLoginPlatformCredentialV3(input *third_party_credential.RetrieveThirdPartyLoginPlatformCredentialV3Params) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.ThirdPartyCredential.RetrieveThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AddThirdPartyLoginPlatformCredentialV3Short instead
func (aaa *ThirdPartyCredentialService) AddThirdPartyLoginPlatformCredentialV3(input *third_party_credential.AddThirdPartyLoginPlatformCredentialV3Params) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.ThirdPartyCredential.AddThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteThirdPartyLoginPlatformCredentialV3Short instead
func (aaa *ThirdPartyCredentialService) DeleteThirdPartyLoginPlatformCredentialV3(input *third_party_credential.DeleteThirdPartyLoginPlatformCredentialV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.ThirdPartyCredential.DeleteThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateThirdPartyLoginPlatformCredentialV3Short instead
func (aaa *ThirdPartyCredentialService) UpdateThirdPartyLoginPlatformCredentialV3(input *third_party_credential.UpdateThirdPartyLoginPlatformCredentialV3Params) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.ThirdPartyCredential.UpdateThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateThirdPartyLoginPlatformDomainV3Short instead
func (aaa *ThirdPartyCredentialService) UpdateThirdPartyLoginPlatformDomainV3(input *third_party_credential.UpdateThirdPartyLoginPlatformDomainV3Params) (*iamclientmodels.ModelPlatformDomainResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.ThirdPartyCredential.UpdateThirdPartyLoginPlatformDomainV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteThirdPartyLoginPlatformDomainV3Short instead
func (aaa *ThirdPartyCredentialService) DeleteThirdPartyLoginPlatformDomainV3(input *third_party_credential.DeleteThirdPartyLoginPlatformDomainV3Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.ThirdPartyCredential.DeleteThirdPartyLoginPlatformDomainV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
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

// Deprecated: Use RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short instead
func (aaa *ThirdPartyCredentialService) RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3(input *third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params) ([]*iamclientmodels.ModelPublicThirdPartyPlatformInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.ThirdPartyCredential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use RetrieveActiveOIDCClientsPublicV3Short instead
func (aaa *ThirdPartyCredentialService) RetrieveActiveOIDCClientsPublicV3(input *third_party_credential.RetrieveActiveOIDCClientsPublicV3Params) ([]*iamclientmodels.ModelPublicThirdPartyPlatformInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.ThirdPartyCredential.RetrieveActiveOIDCClientsPublicV3(input, client.BearerToken(*token.AccessToken))
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

func (aaa *ThirdPartyCredentialService) RetrieveAllThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.RetrieveAllThirdPartyLoginPlatformCredentialV3Params) ([]*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
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

	ok, err := aaa.Client.ThirdPartyCredential.RetrieveAllThirdPartyLoginPlatformCredentialV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ThirdPartyCredentialService) RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params) ([]*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
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

	ok, err := aaa.Client.ThirdPartyCredential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ThirdPartyCredentialService) RetrieveThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.RetrieveThirdPartyLoginPlatformCredentialV3Params) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
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

	ok, err := aaa.Client.ThirdPartyCredential.RetrieveThirdPartyLoginPlatformCredentialV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ThirdPartyCredentialService) AddThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.AddThirdPartyLoginPlatformCredentialV3Params) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
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

	created, err := aaa.Client.ThirdPartyCredential.AddThirdPartyLoginPlatformCredentialV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *ThirdPartyCredentialService) DeleteThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.DeleteThirdPartyLoginPlatformCredentialV3Params) error {
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

	_, err := aaa.Client.ThirdPartyCredential.DeleteThirdPartyLoginPlatformCredentialV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ThirdPartyCredentialService) UpdateThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.UpdateThirdPartyLoginPlatformCredentialV3Params) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
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

	ok, err := aaa.Client.ThirdPartyCredential.UpdateThirdPartyLoginPlatformCredentialV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ThirdPartyCredentialService) UpdateThirdPartyLoginPlatformDomainV3Short(input *third_party_credential.UpdateThirdPartyLoginPlatformDomainV3Params) (*iamclientmodels.ModelPlatformDomainResponse, error) {
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

	ok, err := aaa.Client.ThirdPartyCredential.UpdateThirdPartyLoginPlatformDomainV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ThirdPartyCredentialService) DeleteThirdPartyLoginPlatformDomainV3Short(input *third_party_credential.DeleteThirdPartyLoginPlatformDomainV3Params) error {
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

	_, err := aaa.Client.ThirdPartyCredential.DeleteThirdPartyLoginPlatformDomainV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ThirdPartyCredentialService) RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short(input *third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params) ([]*iamclientmodels.ModelPublicThirdPartyPlatformInfo, error) {
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

	ok, err := aaa.Client.ThirdPartyCredential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ThirdPartyCredentialService) RetrieveActiveOIDCClientsPublicV3Short(input *third_party_credential.RetrieveActiveOIDCClientsPublicV3Params) ([]*iamclientmodels.ModelPublicThirdPartyPlatformInfo, error) {
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

	ok, err := aaa.Client.ThirdPartyCredential.RetrieveActiveOIDCClientsPublicV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

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
	"github.com/go-openapi/runtime/client"
)

type ThirdPartyCredentialService struct {
	Client          *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use RetrieveAllThirdPartyLoginPlatformCredentialV3Short instead
func (t *ThirdPartyCredentialService) RetrieveAllThirdPartyLoginPlatformCredentialV3(input *third_party_credential.RetrieveAllThirdPartyLoginPlatformCredentialV3Params) ([]*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := t.Client.ThirdPartyCredential.RetrieveAllThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (t *ThirdPartyCredentialService) RetrieveAllActiveThirdPartyLoginPlatformCredentialV3(input *third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params) ([]*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := t.Client.ThirdPartyCredential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (t *ThirdPartyCredentialService) RetrieveThirdPartyLoginPlatformCredentialV3(input *third_party_credential.RetrieveThirdPartyLoginPlatformCredentialV3Params) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := t.Client.ThirdPartyCredential.RetrieveThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (t *ThirdPartyCredentialService) AddThirdPartyLoginPlatformCredentialV3(input *third_party_credential.AddThirdPartyLoginPlatformCredentialV3Params) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, internalServerError, err := t.Client.ThirdPartyCredential.AddThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (t *ThirdPartyCredentialService) DeleteThirdPartyLoginPlatformCredentialV3(input *third_party_credential.DeleteThirdPartyLoginPlatformCredentialV3Params) error {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := t.Client.ThirdPartyCredential.DeleteThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (t *ThirdPartyCredentialService) UpdateThirdPartyLoginPlatformCredentialV3(input *third_party_credential.UpdateThirdPartyLoginPlatformCredentialV3Params) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := t.Client.ThirdPartyCredential.UpdateThirdPartyLoginPlatformCredentialV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (t *ThirdPartyCredentialService) UpdateThirdPartyLoginPlatformDomainV3(input *third_party_credential.UpdateThirdPartyLoginPlatformDomainV3Params) (*iamclientmodels.ModelPlatformDomainResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := t.Client.ThirdPartyCredential.UpdateThirdPartyLoginPlatformDomainV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (t *ThirdPartyCredentialService) DeleteThirdPartyLoginPlatformDomainV3(input *third_party_credential.DeleteThirdPartyLoginPlatformDomainV3Params) error {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := t.Client.ThirdPartyCredential.DeleteThirdPartyLoginPlatformDomainV3(input, client.BearerToken(*accessToken.AccessToken))
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
func (t *ThirdPartyCredentialService) RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3(input *third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params) ([]*iamclientmodels.ModelPublicThirdPartyPlatformInfo, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := t.Client.ThirdPartyCredential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3(input, client.BearerToken(*accessToken.AccessToken))
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

func (t *ThirdPartyCredentialService) RetrieveAllThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.RetrieveAllThirdPartyLoginPlatformCredentialV3Params) ([]*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := t.Client.ThirdPartyCredential.RetrieveAllThirdPartyLoginPlatformCredentialV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (t *ThirdPartyCredentialService) RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params) ([]*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := t.Client.ThirdPartyCredential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (t *ThirdPartyCredentialService) RetrieveThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.RetrieveThirdPartyLoginPlatformCredentialV3Params) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := t.Client.ThirdPartyCredential.RetrieveThirdPartyLoginPlatformCredentialV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (t *ThirdPartyCredentialService) AddThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.AddThirdPartyLoginPlatformCredentialV3Params) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := t.Client.ThirdPartyCredential.AddThirdPartyLoginPlatformCredentialV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (t *ThirdPartyCredentialService) DeleteThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.DeleteThirdPartyLoginPlatformCredentialV3Params) error {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = t.Client.ThirdPartyCredential.DeleteThirdPartyLoginPlatformCredentialV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (t *ThirdPartyCredentialService) UpdateThirdPartyLoginPlatformCredentialV3Short(input *third_party_credential.UpdateThirdPartyLoginPlatformCredentialV3Params) (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := t.Client.ThirdPartyCredential.UpdateThirdPartyLoginPlatformCredentialV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (t *ThirdPartyCredentialService) UpdateThirdPartyLoginPlatformDomainV3Short(input *third_party_credential.UpdateThirdPartyLoginPlatformDomainV3Params) (*iamclientmodels.ModelPlatformDomainResponse, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := t.Client.ThirdPartyCredential.UpdateThirdPartyLoginPlatformDomainV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (t *ThirdPartyCredentialService) DeleteThirdPartyLoginPlatformDomainV3Short(input *third_party_credential.DeleteThirdPartyLoginPlatformDomainV3Params) error {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = t.Client.ThirdPartyCredential.DeleteThirdPartyLoginPlatformDomainV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (t *ThirdPartyCredentialService) RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short(input *third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params) ([]*iamclientmodels.ModelPublicThirdPartyPlatformInfo, error) {
	accessToken, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := t.Client.ThirdPartyCredential.RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/localized_policy_versions_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type LocalizedPolicyVersionsWithNamespaceService struct {
	Client                 *legalclient.JusticeLegalService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) GetAuthSession() auth.Session {
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

// deprecated(2022-01-10): please use RetrieveLocalizedPolicyVersions1Short instead.
func (aaa *LocalizedPolicyVersionsWithNamespaceService) RetrieveLocalizedPolicyVersions1(input *localized_policy_versions_with_namespace.RetrieveLocalizedPolicyVersions1Params) ([]*legalclientmodels.RetrieveLocalizedPolicyVersionResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.RetrieveLocalizedPolicyVersions1(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use CreateLocalizedPolicyVersion1Short instead.
func (aaa *LocalizedPolicyVersionsWithNamespaceService) CreateLocalizedPolicyVersion1(input *localized_policy_versions_with_namespace.CreateLocalizedPolicyVersion1Params) (*legalclientmodels.CreateLocalizedPolicyVersionResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, conflict, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.CreateLocalizedPolicyVersion1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// deprecated(2022-01-10): please use RetrieveSingleLocalizedPolicyVersion1Short instead.
func (aaa *LocalizedPolicyVersionsWithNamespaceService) RetrieveSingleLocalizedPolicyVersion1(input *localized_policy_versions_with_namespace.RetrieveSingleLocalizedPolicyVersion1Params) (*legalclientmodels.RetrieveLocalizedPolicyVersionResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.RetrieveSingleLocalizedPolicyVersion1(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use UpdateLocalizedPolicyVersion1Short instead.
func (aaa *LocalizedPolicyVersionsWithNamespaceService) UpdateLocalizedPolicyVersion1(input *localized_policy_versions_with_namespace.UpdateLocalizedPolicyVersion1Params) (*legalclientmodels.UpdateLocalizedPolicyVersionResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.UpdateLocalizedPolicyVersion1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use RequestPresignedURL1Short instead.
func (aaa *LocalizedPolicyVersionsWithNamespaceService) RequestPresignedURL1(input *localized_policy_versions_with_namespace.RequestPresignedURL1Params) (*legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.RequestPresignedURL1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// deprecated(2022-01-10): please use SetDefaultPolicy1Short instead.
func (aaa *LocalizedPolicyVersionsWithNamespaceService) SetDefaultPolicy1(input *localized_policy_versions_with_namespace.SetDefaultPolicy1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.LocalizedPolicyVersionsWithNamespace.SetDefaultPolicy1(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// deprecated(2022-01-10): please use RetrieveSingleLocalizedPolicyVersion3Short instead.
func (aaa *LocalizedPolicyVersionsWithNamespaceService) RetrieveSingleLocalizedPolicyVersion3(input *localized_policy_versions_with_namespace.RetrieveSingleLocalizedPolicyVersion3Params) (*legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse, error) {
	ok, notFound, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.RetrieveSingleLocalizedPolicyVersion3(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) RetrieveLocalizedPolicyVersions1Short(input *localized_policy_versions_with_namespace.RetrieveLocalizedPolicyVersions1Params) ([]*legalclientmodels.RetrieveLocalizedPolicyVersionResponse, error) {
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

	ok, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.RetrieveLocalizedPolicyVersions1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) CreateLocalizedPolicyVersion1Short(input *localized_policy_versions_with_namespace.CreateLocalizedPolicyVersion1Params) (*legalclientmodels.CreateLocalizedPolicyVersionResponse, error) {
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

	created, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.CreateLocalizedPolicyVersion1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) RetrieveSingleLocalizedPolicyVersion1Short(input *localized_policy_versions_with_namespace.RetrieveSingleLocalizedPolicyVersion1Params) (*legalclientmodels.RetrieveLocalizedPolicyVersionResponse, error) {
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

	ok, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.RetrieveSingleLocalizedPolicyVersion1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) UpdateLocalizedPolicyVersion1Short(input *localized_policy_versions_with_namespace.UpdateLocalizedPolicyVersion1Params) (*legalclientmodels.UpdateLocalizedPolicyVersionResponse, error) {
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

	ok, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.UpdateLocalizedPolicyVersion1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) RequestPresignedURL1Short(input *localized_policy_versions_with_namespace.RequestPresignedURL1Params) (*legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse, error) {
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

	created, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.RequestPresignedURL1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) SetDefaultPolicy1Short(input *localized_policy_versions_with_namespace.SetDefaultPolicy1Params) error {
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

	_, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.SetDefaultPolicy1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) RetrieveSingleLocalizedPolicyVersion3Short(input *localized_policy_versions_with_namespace.RetrieveSingleLocalizedPolicyVersion3Params) (*legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse, error) {
	ok, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.RetrieveSingleLocalizedPolicyVersion3Short(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

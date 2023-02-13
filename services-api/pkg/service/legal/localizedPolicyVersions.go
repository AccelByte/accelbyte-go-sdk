// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/localized_policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type LocalizedPolicyVersionsService struct {
	Client                 *legalclient.JusticeLegalService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *LocalizedPolicyVersionsService) GetAuthSession() auth.Session {
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

// deprecated(2022-01-10): please use RetrieveLocalizedPolicyVersionsShort instead.
func (aaa *LocalizedPolicyVersionsService) RetrieveLocalizedPolicyVersions(input *localized_policy_versions.RetrieveLocalizedPolicyVersionsParams) ([]*legalclientmodels.RetrieveLocalizedPolicyVersionResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.LocalizedPolicyVersions.RetrieveLocalizedPolicyVersions(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use CreateLocalizedPolicyVersionShort instead.
func (aaa *LocalizedPolicyVersionsService) CreateLocalizedPolicyVersion(input *localized_policy_versions.CreateLocalizedPolicyVersionParams) (*legalclientmodels.CreateLocalizedPolicyVersionResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, conflict, err := aaa.Client.LocalizedPolicyVersions.CreateLocalizedPolicyVersion(input, client.BearerToken(*token.AccessToken))
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

// deprecated(2022-01-10): please use RetrieveSingleLocalizedPolicyVersionShort instead.
func (aaa *LocalizedPolicyVersionsService) RetrieveSingleLocalizedPolicyVersion(input *localized_policy_versions.RetrieveSingleLocalizedPolicyVersionParams) (*legalclientmodels.RetrieveLocalizedPolicyVersionResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersion(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use UpdateLocalizedPolicyVersionShort instead.
func (aaa *LocalizedPolicyVersionsService) UpdateLocalizedPolicyVersion(input *localized_policy_versions.UpdateLocalizedPolicyVersionParams) (*legalclientmodels.UpdateLocalizedPolicyVersionResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := aaa.Client.LocalizedPolicyVersions.UpdateLocalizedPolicyVersion(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use RequestPresignedURLShort instead.
func (aaa *LocalizedPolicyVersionsService) RequestPresignedURL(input *localized_policy_versions.RequestPresignedURLParams) (*legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, err := aaa.Client.LocalizedPolicyVersions.RequestPresignedURL(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// deprecated(2022-01-10): please use SetDefaultPolicyShort instead.
func (aaa *LocalizedPolicyVersionsService) SetDefaultPolicy(input *localized_policy_versions.SetDefaultPolicyParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := aaa.Client.LocalizedPolicyVersions.SetDefaultPolicy(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if err != nil {
		return err
	}

	return nil
}

// deprecated(2022-01-10): please use RetrieveSingleLocalizedPolicyVersion2Short instead.
func (aaa *LocalizedPolicyVersionsService) RetrieveSingleLocalizedPolicyVersion2(input *localized_policy_versions.RetrieveSingleLocalizedPolicyVersion2Params) (*legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse, error) {
	ok, notFound, err := aaa.Client.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersion2(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LocalizedPolicyVersionsService) RetrieveLocalizedPolicyVersionsShort(input *localized_policy_versions.RetrieveLocalizedPolicyVersionsParams) ([]*legalclientmodels.RetrieveLocalizedPolicyVersionResponse, error) {
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

	ok, err := aaa.Client.LocalizedPolicyVersions.RetrieveLocalizedPolicyVersionsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LocalizedPolicyVersionsService) CreateLocalizedPolicyVersionShort(input *localized_policy_versions.CreateLocalizedPolicyVersionParams) (*legalclientmodels.CreateLocalizedPolicyVersionResponse, error) {
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

	created, err := aaa.Client.LocalizedPolicyVersions.CreateLocalizedPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *LocalizedPolicyVersionsService) RetrieveSingleLocalizedPolicyVersionShort(input *localized_policy_versions.RetrieveSingleLocalizedPolicyVersionParams) (*legalclientmodels.RetrieveLocalizedPolicyVersionResponse, error) {
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

	ok, err := aaa.Client.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LocalizedPolicyVersionsService) UpdateLocalizedPolicyVersionShort(input *localized_policy_versions.UpdateLocalizedPolicyVersionParams) (*legalclientmodels.UpdateLocalizedPolicyVersionResponse, error) {
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

	ok, err := aaa.Client.LocalizedPolicyVersions.UpdateLocalizedPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *LocalizedPolicyVersionsService) RequestPresignedURLShort(input *localized_policy_versions.RequestPresignedURLParams) (*legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse, error) {
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

	created, err := aaa.Client.LocalizedPolicyVersions.RequestPresignedURLShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *LocalizedPolicyVersionsService) SetDefaultPolicyShort(input *localized_policy_versions.SetDefaultPolicyParams) error {
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

	_, err := aaa.Client.LocalizedPolicyVersions.SetDefaultPolicyShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *LocalizedPolicyVersionsService) RetrieveSingleLocalizedPolicyVersion2Short(input *localized_policy_versions.RetrieveSingleLocalizedPolicyVersion2Params) (*legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse, error) {
	ok, err := aaa.Client.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersion2Short(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

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
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type LocalizedPolicyVersionsService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use RetrieveLocalizedPolicyVersionsShort instead
func (l *LocalizedPolicyVersionsService) RetrieveLocalizedPolicyVersions(input *localized_policy_versions.RetrieveLocalizedPolicyVersionsParams) ([]*legalclientmodels.RetrieveLocalizedPolicyVersionResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LocalizedPolicyVersions.RetrieveLocalizedPolicyVersions(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateLocalizedPolicyVersionShort instead
func (l *LocalizedPolicyVersionsService) CreateLocalizedPolicyVersion(input *localized_policy_versions.CreateLocalizedPolicyVersionParams) (*legalclientmodels.CreateLocalizedPolicyVersionResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, conflict, err := l.Client.LocalizedPolicyVersions.CreateLocalizedPolicyVersion(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use RetrieveSingleLocalizedPolicyVersionShort instead
func (l *LocalizedPolicyVersionsService) RetrieveSingleLocalizedPolicyVersion(input *localized_policy_versions.RetrieveSingleLocalizedPolicyVersionParams) (*legalclientmodels.UpdateLocalizedPolicyVersionResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := l.Client.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersion(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateLocalizedPolicyVersionShort instead
func (l *LocalizedPolicyVersionsService) UpdateLocalizedPolicyVersion(input *localized_policy_versions.UpdateLocalizedPolicyVersionParams) (*legalclientmodels.UpdateLocalizedPolicyVersionResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := l.Client.LocalizedPolicyVersions.UpdateLocalizedPolicyVersion(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RequestPresignedURLShort instead
func (l *LocalizedPolicyVersionsService) RequestPresignedURL(input *localized_policy_versions.RequestPresignedURLParams) (*legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, err := l.Client.LocalizedPolicyVersions.RequestPresignedURL(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use SetDefaultPolicyShort instead
func (l *LocalizedPolicyVersionsService) SetDefaultPolicy(input *localized_policy_versions.SetDefaultPolicyParams) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = l.Client.LocalizedPolicyVersions.SetDefaultPolicy(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use RetrieveSingleLocalizedPolicyVersion1Short instead
func (l *LocalizedPolicyVersionsService) RetrieveSingleLocalizedPolicyVersion1(input *localized_policy_versions.RetrieveSingleLocalizedPolicyVersion1Params) (*legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse, error) {
	ok, notFound, err := l.Client.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersion1(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (l *LocalizedPolicyVersionsService) RetrieveLocalizedPolicyVersionsShort(input *localized_policy_versions.RetrieveLocalizedPolicyVersionsParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*legalclientmodels.RetrieveLocalizedPolicyVersionResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LocalizedPolicyVersions.RetrieveLocalizedPolicyVersionsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (l *LocalizedPolicyVersionsService) CreateLocalizedPolicyVersionShort(input *localized_policy_versions.CreateLocalizedPolicyVersionParams, authInfoWriter runtime.ClientAuthInfoWriter) (*legalclientmodels.CreateLocalizedPolicyVersionResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	created, err := l.Client.LocalizedPolicyVersions.CreateLocalizedPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (l *LocalizedPolicyVersionsService) RetrieveSingleLocalizedPolicyVersionShort(input *localized_policy_versions.RetrieveSingleLocalizedPolicyVersionParams, authInfoWriter runtime.ClientAuthInfoWriter) (*legalclientmodels.UpdateLocalizedPolicyVersionResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (l *LocalizedPolicyVersionsService) UpdateLocalizedPolicyVersionShort(input *localized_policy_versions.UpdateLocalizedPolicyVersionParams, authInfoWriter runtime.ClientAuthInfoWriter) (*legalclientmodels.UpdateLocalizedPolicyVersionResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	ok, err := l.Client.LocalizedPolicyVersions.UpdateLocalizedPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (l *LocalizedPolicyVersionsService) RequestPresignedURLShort(input *localized_policy_versions.RequestPresignedURLParams, authInfoWriter runtime.ClientAuthInfoWriter) (*legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	created, err := l.Client.LocalizedPolicyVersions.RequestPresignedURLShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (l *LocalizedPolicyVersionsService) SetDefaultPolicyShort(input *localized_policy_versions.SetDefaultPolicyParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(l.TokenRepository, nil, security, "")
	}
	_, err := l.Client.LocalizedPolicyVersions.SetDefaultPolicyShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (l *LocalizedPolicyVersionsService) RetrieveSingleLocalizedPolicyVersion1Short(input *localized_policy_versions.RetrieveSingleLocalizedPolicyVersion1Params) (*legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse, error) {
	ok, err := l.Client.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersion1Short(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

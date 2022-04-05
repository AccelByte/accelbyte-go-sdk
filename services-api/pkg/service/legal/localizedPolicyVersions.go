// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/localized_policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type LocalizedPolicyVersionsService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use RetrieveLocalizedPolicyVersionsShort instead
func (l *LocalizedPolicyVersionsService) RetrieveLocalizedPolicyVersions(input *localized_policy_versions.RetrieveLocalizedPolicyVersionsParams) ([]*legalclientmodels.RetrieveLocalizedPolicyVersionResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LocalizedPolicyVersions.RetrieveLocalizedPolicyVersions(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateLocalizedPolicyVersionShort instead
func (l *LocalizedPolicyVersionsService) CreateLocalizedPolicyVersion(input *localized_policy_versions.CreateLocalizedPolicyVersionParams) (*legalclientmodels.CreateLocalizedPolicyVersionResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, conflict, err := l.Client.LocalizedPolicyVersions.CreateLocalizedPolicyVersion(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := l.Client.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersion(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := l.Client.LocalizedPolicyVersions.UpdateLocalizedPolicyVersion(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, err := l.Client.LocalizedPolicyVersions.RequestPresignedURL(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = l.Client.LocalizedPolicyVersions.SetDefaultPolicy(input, client.BearerToken(*accessToken.AccessToken))
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

func (l *LocalizedPolicyVersionsService) RetrieveLocalizedPolicyVersionsShort(input *localized_policy_versions.RetrieveLocalizedPolicyVersionsParams) ([]*legalclientmodels.RetrieveLocalizedPolicyVersionResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LocalizedPolicyVersions.RetrieveLocalizedPolicyVersionsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (l *LocalizedPolicyVersionsService) CreateLocalizedPolicyVersionShort(input *localized_policy_versions.CreateLocalizedPolicyVersionParams) (*legalclientmodels.CreateLocalizedPolicyVersionResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := l.Client.LocalizedPolicyVersions.CreateLocalizedPolicyVersionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (l *LocalizedPolicyVersionsService) RetrieveSingleLocalizedPolicyVersionShort(input *localized_policy_versions.RetrieveSingleLocalizedPolicyVersionParams) (*legalclientmodels.UpdateLocalizedPolicyVersionResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (l *LocalizedPolicyVersionsService) UpdateLocalizedPolicyVersionShort(input *localized_policy_versions.UpdateLocalizedPolicyVersionParams) (*legalclientmodels.UpdateLocalizedPolicyVersionResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := l.Client.LocalizedPolicyVersions.UpdateLocalizedPolicyVersionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (l *LocalizedPolicyVersionsService) RequestPresignedURLShort(input *localized_policy_versions.RequestPresignedURLParams) (*legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse, error) {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := l.Client.LocalizedPolicyVersions.RequestPresignedURLShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (l *LocalizedPolicyVersionsService) SetDefaultPolicyShort(input *localized_policy_versions.SetDefaultPolicyParams) error {
	accessToken, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = l.Client.LocalizedPolicyVersions.SetDefaultPolicyShort(input, client.BearerToken(*accessToken.AccessToken))
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

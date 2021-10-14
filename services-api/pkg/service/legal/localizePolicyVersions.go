package legal

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/localized_policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type LocalizePolicyVersionsService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// CreateLocalizedPolicyVersion is used to update base legal policy
func (l *LocalizePolicyVersionsService) CreateLocalizedPolicyVersion(input *localized_policy_versions.CreateLocalizedPolicyVersionParams) (*legalclientmodels.CreateLocalizedPolicyVersionResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	created, badRequest, conflict, err := l.Client.LocalizedPolicyVersions.CreateLocalizedPolicyVersion(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// RequestPresignedURL is used to request presigned URL for upload document
func (l *LocalizePolicyVersionsService) RequestPresignedURL(input *localized_policy_versions.RequestPresignedURLParams) (*legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	created, badRequest, err := l.Client.LocalizedPolicyVersions.RequestPresignedURL(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// RetrieveLocalizedPolicyVersions is used to retrieve versions from country specific policy
func (l *LocalizePolicyVersionsService) RetrieveLocalizedPolicyVersions(input *localized_policy_versions.RetrieveLocalizedPolicyVersionsParams) ([]*legalclientmodels.RetrieveLocalizedPolicyVersionResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	created, err := l.Client.LocalizedPolicyVersions.RetrieveLocalizedPolicyVersions(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// RetrieveSingleLocalizedPolicyVersion is used to retrieve a localized version from country specific policy
func (l *LocalizePolicyVersionsService) RetrieveSingleLocalizedPolicyVersion(input *localized_policy_versions.RetrieveSingleLocalizedPolicyVersionParams) (*legalclientmodels.UpdateLocalizedPolicyVersionResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, badRequest, err := l.Client.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersion(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveSingleLocalizedPolicyVersion1 is used to retrieve a localized version
func (l *LocalizePolicyVersionsService) RetrieveSingleLocalizedPolicyVersion1(input *localized_policy_versions.RetrieveSingleLocalizedPolicyVersion1Params) (*legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse, error) {
	_, err := l.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, notFound, err := l.Client.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersion1(input)
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// SetDefaultPolicy is used to set default localized policy
func (l *LocalizePolicyVersionsService) SetDefaultPolicy(input *localized_policy_versions.SetDefaultPolicyParams) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = l.Client.LocalizedPolicyVersions.SetDefaultPolicy(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// UpdateLocalizedPolicyVersion is used to update a localized version from country specific policy
func (l *LocalizePolicyVersionsService) UpdateLocalizedPolicyVersion(input *localized_policy_versions.UpdateLocalizedPolicyVersionParams) (*legalclientmodels.UpdateLocalizedPolicyVersionResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, badRequest, err := l.Client.LocalizedPolicyVersions.UpdateLocalizedPolicyVersion(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

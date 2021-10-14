package legal

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type PolicyVersionsService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// CreatePolicyVersion is used to create a version from country specific policy
func (p *PolicyVersionsService) CreatePolicyVersion(input *policy_versions.CreatePolicyVersionParams) (*legalclientmodels.CreatePolicyVersionResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, badRequest, err := p.Client.PolicyVersions.CreatePolicyVersion(input, client.BearerToken(*token.AccessToken))
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

// PublishPolicyVersion is used to manually publish a version from country specific policy
func (p *PolicyVersionsService) PublishPolicyVersion(input *policy_versions.PublishPolicyVersionParams) error {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, badRequest, err := p.Client.PolicyVersions.PublishPolicyVersion(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// RetrievePolicyVersions is used to bulk retrieve version of base policy
func (p *PolicyVersionsService) RetrievePolicyVersions(input *policy_versions.RetrievePolicyVersionsParams) ([]*legalclientmodels.RetrievePolicyVersionResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, notFound, err := p.Client.PolicyVersions.RetrievePolicyVersions(input, client.BearerToken(*token.AccessToken))
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

// RetrieveSinglePolicyVersion is used to retrieve a version from country specific policy
func (p *PolicyVersionsService) RetrieveSinglePolicyVersion(input *policy_versions.RetrieveSinglePolicyVersionParams) ([]*legalclientmodels.RetrievePolicyVersionResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, notFound, err := p.Client.PolicyVersions.RetrieveSinglePolicyVersion(input, client.BearerToken(*token.AccessToken))
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

// UpdatePolicyVersion is used to update a version of policy
func (p *PolicyVersionsService) UpdatePolicyVersion(input *policy_versions.UpdatePolicyVersionParams) (*legalclientmodels.UpdatePolicyVersionResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, notFound, err := p.Client.PolicyVersions.UpdatePolicyVersion(input, client.BearerToken(*token.AccessToken))
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

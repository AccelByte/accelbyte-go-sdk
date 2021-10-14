package legal

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policies"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type PoliciesService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// RetrieveLatestPolicies is used to retrieve the latest policies by country
func (p *PoliciesService) RetrieveLatestPolicies(input *policies.RetrieveLatestPoliciesParams) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	_, err := p.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := p.Client.Policies.RetrieveLatestPolicies(input)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveLatestPoliciesByNamespaceAndCountryPublic is used to retrieve the latest policies by namespace and country
func (p *PoliciesService) RetrieveLatestPoliciesByNamespaceAndCountryPublic(input *policies.RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	_, err := p.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := p.Client.Policies.RetrieveLatestPoliciesByNamespaceAndCountryPublic(input)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveLatestPoliciesPublic is used to update a localized version from country specific policy
func (p *PoliciesService) RetrieveLatestPoliciesPublic(input *policies.RetrieveLatestPoliciesPublicParams) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, notFound, err := p.Client.Policies.RetrieveLatestPoliciesPublic(input, client.BearerToken(*token.AccessToken))
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

// RetrievePolicies is used to retrieve policies by country
func (p *PoliciesService) RetrievePolicies(input *policies.RetrievePoliciesParams) ([]*legalclientmodels.RetrievePolicyResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := p.Client.Policies.RetrievePolicies(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// SetDefaultPolicy1 is used to set default policy
func (p *PoliciesService) SetDefaultPolicy1(input *policies.SetDefaultPolicy1Params) error {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = p.Client.Policies.SetDefaultPolicy1(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// UpdatePolicy is used to update country specific policy
func (p *PoliciesService) UpdatePolicy(input *policies.UpdatePolicyParams) error {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = p.Client.Policies.UpdatePolicy(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

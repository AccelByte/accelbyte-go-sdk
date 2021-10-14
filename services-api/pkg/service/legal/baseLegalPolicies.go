package legal

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/base_legal_policies"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type BaseLegalPoliciesService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// CreatePolicy is used to retrieve all users accepting legal agreements
func (b *BaseLegalPoliciesService) CreatePolicy(input *base_legal_policies.CreatePolicyParams) (*legalclientmodels.CreateBasePolicyResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	created, conflict, unprocessableEntity, err := b.Client.BaseLegalPolicies.CreatePolicy(input, client.BearerToken(*token.AccessToken))
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// PartialUpdatePolicy is used to update base legal policy
func (b *BaseLegalPoliciesService) PartialUpdatePolicy(input *base_legal_policies.PartialUpdatePolicyParams) (*legalclientmodels.UpdateBasePolicyResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, badRequest, err := b.Client.BaseLegalPolicies.PartialUpdatePolicy(input, client.BearerToken(*token.AccessToken))
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

// RetrieveAllLegalPolicies is used to retrieve all base legal policy
func (b *BaseLegalPoliciesService) RetrieveAllLegalPolicies() ([]*legalclientmodels.RetrieveBasePolicyResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &base_legal_policies.RetrieveAllLegalPoliciesParams{}
	ok, err := b.Client.BaseLegalPolicies.RetrieveAllLegalPolicies(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveAllPolicyTypes is used to retrieve all policy type
func (b *BaseLegalPoliciesService) RetrieveAllPolicyTypes(input *base_legal_policies.RetrieveAllPolicyTypesParams) ([]*legalclientmodels.RetrievePolicyTypeResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := b.Client.BaseLegalPolicies.RetrieveAllPolicyTypes(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrievePolicyCountry is used to retrieve a base legal policy based on a particular country
func (b *BaseLegalPoliciesService) RetrievePolicyCountry(input *base_legal_policies.RetrievePolicyCountryParams) (*legalclientmodels.RetrievePolicyResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, notFound, err := b.Client.BaseLegalPolicies.RetrievePolicyCountry(input, client.BearerToken(*token.AccessToken))
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

// RetrieveSinglePolicy is used to retrieve a base legal policy
func (b *BaseLegalPoliciesService) RetrieveSinglePolicy(input *base_legal_policies.RetrieveSinglePolicyParams) (*legalclientmodels.RetrieveBasePolicyResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, notFound, err := b.Client.BaseLegalPolicies.RetrieveSinglePolicy(input, client.BearerToken(*token.AccessToken))
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

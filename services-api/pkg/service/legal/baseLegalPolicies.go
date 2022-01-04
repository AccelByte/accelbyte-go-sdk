// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/base_legal_policies"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type BaseLegalPoliciesService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

func (b *BaseLegalPoliciesService) RetrieveAllLegalPolicies(input *base_legal_policies.RetrieveAllLegalPoliciesParams) ([]*legalclientmodels.RetrieveBasePolicyResponse, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := b.Client.BaseLegalPolicies.RetrieveAllLegalPolicies(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) CreatePolicy(input *base_legal_policies.CreatePolicyParams) (*legalclientmodels.CreateBasePolicyResponse, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, conflict, unprocessableEntity, err := b.Client.BaseLegalPolicies.CreatePolicy(input, client.BearerToken(*accessToken.AccessToken))
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) RetrieveSinglePolicy(input *base_legal_policies.RetrieveSinglePolicyParams) (*legalclientmodels.RetrieveBasePolicyResponse, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := b.Client.BaseLegalPolicies.RetrieveSinglePolicy(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) PartialUpdatePolicy(input *base_legal_policies.PartialUpdatePolicyParams) (*legalclientmodels.UpdateBasePolicyResponse, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := b.Client.BaseLegalPolicies.PartialUpdatePolicy(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) RetrievePolicyCountry(input *base_legal_policies.RetrievePolicyCountryParams) (*legalclientmodels.RetrievePolicyResponse, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := b.Client.BaseLegalPolicies.RetrievePolicyCountry(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) RetrieveAllPolicyTypes(input *base_legal_policies.RetrieveAllPolicyTypesParams) ([]*legalclientmodels.RetrievePolicyTypeResponse, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := b.Client.BaseLegalPolicies.RetrieveAllPolicyTypes(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) RetrieveAllLegalPoliciesShort(input *base_legal_policies.RetrieveAllLegalPoliciesParams, authInfo runtime.ClientAuthInfoWriter) ([]*legalclientmodels.RetrieveBasePolicyResponse, error) {
	ok, err := b.Client.BaseLegalPolicies.RetrieveAllLegalPoliciesShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) CreatePolicyShort(input *base_legal_policies.CreatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*legalclientmodels.CreateBasePolicyResponse, error) {
	created, err := b.Client.BaseLegalPolicies.CreatePolicyShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) RetrieveSinglePolicyShort(input *base_legal_policies.RetrieveSinglePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*legalclientmodels.RetrieveBasePolicyResponse, error) {
	ok, err := b.Client.BaseLegalPolicies.RetrieveSinglePolicyShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) PartialUpdatePolicyShort(input *base_legal_policies.PartialUpdatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*legalclientmodels.UpdateBasePolicyResponse, error) {
	ok, err := b.Client.BaseLegalPolicies.PartialUpdatePolicyShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) RetrievePolicyCountryShort(input *base_legal_policies.RetrievePolicyCountryParams, authInfo runtime.ClientAuthInfoWriter) (*legalclientmodels.RetrievePolicyResponse, error) {
	ok, err := b.Client.BaseLegalPolicies.RetrievePolicyCountryShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) RetrieveAllPolicyTypesShort(input *base_legal_policies.RetrieveAllPolicyTypesParams, authInfo runtime.ClientAuthInfoWriter) ([]*legalclientmodels.RetrievePolicyTypeResponse, error) {
	ok, err := b.Client.BaseLegalPolicies.RetrieveAllPolicyTypesShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

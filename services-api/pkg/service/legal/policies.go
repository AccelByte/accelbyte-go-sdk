// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policies"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type PoliciesService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use RetrievePoliciesShort instead
func (p *PoliciesService) RetrievePolicies(input *policies.RetrievePoliciesParams) ([]*legalclientmodels.RetrievePolicyResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.Policies.RetrievePolicies(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdatePolicyShort instead
func (p *PoliciesService) UpdatePolicy(input *policies.UpdatePolicyParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = p.Client.Policies.UpdatePolicy(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use SetDefaultPolicy1Short instead
func (p *PoliciesService) SetDefaultPolicy1(input *policies.SetDefaultPolicy1Params) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = p.Client.Policies.SetDefaultPolicy1(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use RetrieveLatestPoliciesShort instead
func (p *PoliciesService) RetrieveLatestPolicies(input *policies.RetrieveLatestPoliciesParams) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	ok, err := p.Client.Policies.RetrieveLatestPolicies(input)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use RetrieveLatestPoliciesPublicShort instead
func (p *PoliciesService) RetrieveLatestPoliciesPublic(input *policies.RetrieveLatestPoliciesPublicParams) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.Policies.RetrieveLatestPoliciesPublic(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use RetrieveLatestPoliciesByNamespaceAndCountryPublicShort instead
func (p *PoliciesService) RetrieveLatestPoliciesByNamespaceAndCountryPublic(input *policies.RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	ok, err := p.Client.Policies.RetrieveLatestPoliciesByNamespaceAndCountryPublic(input)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PoliciesService) RetrievePoliciesShort(input *policies.RetrievePoliciesParams, authInfo runtime.ClientAuthInfoWriter) ([]*legalclientmodels.RetrievePolicyResponse, error) {
	ok, err := p.Client.Policies.RetrievePoliciesShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PoliciesService) UpdatePolicyShort(input *policies.UpdatePolicyParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.Policies.UpdatePolicyShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *PoliciesService) SetDefaultPolicy1Short(input *policies.SetDefaultPolicy1Params, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.Policies.SetDefaultPolicy1Short(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *PoliciesService) RetrieveLatestPoliciesShort(input *policies.RetrieveLatestPoliciesParams) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	ok, err := p.Client.Policies.RetrieveLatestPoliciesShort(input)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PoliciesService) RetrieveLatestPoliciesPublicShort(input *policies.RetrieveLatestPoliciesPublicParams, authInfo runtime.ClientAuthInfoWriter) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	ok, err := p.Client.Policies.RetrieveLatestPoliciesPublicShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PoliciesService) RetrieveLatestPoliciesByNamespaceAndCountryPublicShort(input *policies.RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	ok, err := p.Client.Policies.RetrieveLatestPoliciesByNamespaceAndCountryPublicShort(input)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

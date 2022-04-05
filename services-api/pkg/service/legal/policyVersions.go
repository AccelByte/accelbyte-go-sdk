// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type PolicyVersionsService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use UpdatePolicyVersionShort instead
func (p *PolicyVersionsService) UpdatePolicyVersion(input *policy_versions.UpdatePolicyVersionParams) (*legalclientmodels.UpdatePolicyVersionResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := p.Client.PolicyVersions.UpdatePolicyVersion(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublishPolicyVersionShort instead
func (p *PolicyVersionsService) PublishPolicyVersion(input *policy_versions.PublishPolicyVersionParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := p.Client.PolicyVersions.PublishPolicyVersion(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use RetrieveSinglePolicyVersionShort instead
func (p *PolicyVersionsService) RetrieveSinglePolicyVersion(input *policy_versions.RetrieveSinglePolicyVersionParams) ([]*legalclientmodels.RetrievePolicyVersionResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PolicyVersions.RetrieveSinglePolicyVersion(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreatePolicyVersionShort instead
func (p *PolicyVersionsService) CreatePolicyVersion(input *policy_versions.CreatePolicyVersionParams) (*legalclientmodels.CreatePolicyVersionResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, err := p.Client.PolicyVersions.CreatePolicyVersion(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use RetrievePolicyVersionsShort instead
func (p *PolicyVersionsService) RetrievePolicyVersions(input *policy_versions.RetrievePolicyVersionsParams) ([]*legalclientmodels.RetrievePolicyVersionResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PolicyVersions.RetrievePolicyVersions(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PolicyVersionsService) UpdatePolicyVersionShort(input *policy_versions.UpdatePolicyVersionParams) (*legalclientmodels.UpdatePolicyVersionResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PolicyVersions.UpdatePolicyVersionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PolicyVersionsService) PublishPolicyVersionShort(input *policy_versions.PublishPolicyVersionParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = p.Client.PolicyVersions.PublishPolicyVersionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (p *PolicyVersionsService) RetrieveSinglePolicyVersionShort(input *policy_versions.RetrieveSinglePolicyVersionParams) ([]*legalclientmodels.RetrievePolicyVersionResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PolicyVersions.RetrieveSinglePolicyVersionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PolicyVersionsService) CreatePolicyVersionShort(input *policy_versions.CreatePolicyVersionParams) (*legalclientmodels.CreatePolicyVersionResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := p.Client.PolicyVersions.CreatePolicyVersionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (p *PolicyVersionsService) RetrievePolicyVersionsShort(input *policy_versions.RetrievePolicyVersionsParams) ([]*legalclientmodels.RetrievePolicyVersionResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PolicyVersions.RetrievePolicyVersionsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

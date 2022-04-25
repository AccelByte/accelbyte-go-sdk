// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type PolicyVersionsService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use UpdatePolicyVersionShort instead
func (p *PolicyVersionsService) UpdatePolicyVersion(input *policy_versions.UpdatePolicyVersionParams) (*legalclientmodels.UpdatePolicyVersionResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := p.Client.PolicyVersions.UpdatePolicyVersion(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := p.Client.PolicyVersions.PublishPolicyVersion(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PolicyVersions.RetrieveSinglePolicyVersion(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, err := p.Client.PolicyVersions.CreatePolicyVersion(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := p.Client.PolicyVersions.RetrievePolicyVersions(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PolicyVersionsService) UpdatePolicyVersionShort(input *policy_versions.UpdatePolicyVersionParams, authInfoWriter runtime.ClientAuthInfoWriter) (*legalclientmodels.UpdatePolicyVersionResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PolicyVersions.UpdatePolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PolicyVersionsService) PublishPolicyVersionShort(input *policy_versions.PublishPolicyVersionParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	_, err := p.Client.PolicyVersions.PublishPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (p *PolicyVersionsService) RetrieveSinglePolicyVersionShort(input *policy_versions.RetrieveSinglePolicyVersionParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*legalclientmodels.RetrievePolicyVersionResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PolicyVersions.RetrieveSinglePolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PolicyVersionsService) CreatePolicyVersionShort(input *policy_versions.CreatePolicyVersionParams, authInfoWriter runtime.ClientAuthInfoWriter) (*legalclientmodels.CreatePolicyVersionResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	created, err := p.Client.PolicyVersions.CreatePolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (p *PolicyVersionsService) RetrievePolicyVersionsShort(input *policy_versions.RetrievePolicyVersionsParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*legalclientmodels.RetrievePolicyVersionResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PolicyVersions.RetrievePolicyVersionsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

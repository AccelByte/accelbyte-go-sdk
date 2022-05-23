// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/base_legal_policies"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type BaseLegalPoliciesService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use RetrieveAllLegalPoliciesShort instead
func (b *BaseLegalPoliciesService) RetrieveAllLegalPolicies(input *base_legal_policies.RetrieveAllLegalPoliciesParams) ([]*legalclientmodels.RetrieveBasePolicyResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := b.Client.BaseLegalPolicies.RetrieveAllLegalPolicies(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreatePolicyShort instead
func (b *BaseLegalPoliciesService) CreatePolicy(input *base_legal_policies.CreatePolicyParams) (*legalclientmodels.CreateBasePolicyResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, conflict, unprocessableEntity, err := b.Client.BaseLegalPolicies.CreatePolicy(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use RetrieveSinglePolicyShort instead
func (b *BaseLegalPoliciesService) RetrieveSinglePolicy(input *base_legal_policies.RetrieveSinglePolicyParams) (*legalclientmodels.RetrieveBasePolicyResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := b.Client.BaseLegalPolicies.RetrieveSinglePolicy(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PartialUpdatePolicyShort instead
func (b *BaseLegalPoliciesService) PartialUpdatePolicy(input *base_legal_policies.PartialUpdatePolicyParams) (*legalclientmodels.UpdateBasePolicyResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := b.Client.BaseLegalPolicies.PartialUpdatePolicy(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RetrievePolicyCountryShort instead
func (b *BaseLegalPoliciesService) RetrievePolicyCountry(input *base_legal_policies.RetrievePolicyCountryParams) (*legalclientmodels.RetrievePolicyResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := b.Client.BaseLegalPolicies.RetrievePolicyCountry(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RetrieveAllPolicyTypesShort instead
func (b *BaseLegalPoliciesService) RetrieveAllPolicyTypes(input *base_legal_policies.RetrieveAllPolicyTypesParams) ([]*legalclientmodels.RetrievePolicyTypeResponse, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := b.Client.BaseLegalPolicies.RetrieveAllPolicyTypes(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) RetrieveAllLegalPoliciesShort(input *base_legal_policies.RetrieveAllLegalPoliciesParams) ([]*legalclientmodels.RetrieveBasePolicyResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(b.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  b.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := b.Client.BaseLegalPolicies.RetrieveAllLegalPoliciesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) CreatePolicyShort(input *base_legal_policies.CreatePolicyParams) (*legalclientmodels.CreateBasePolicyResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(b.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  b.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := b.Client.BaseLegalPolicies.CreatePolicyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) RetrieveSinglePolicyShort(input *base_legal_policies.RetrieveSinglePolicyParams) (*legalclientmodels.RetrieveBasePolicyResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(b.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  b.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := b.Client.BaseLegalPolicies.RetrieveSinglePolicyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) PartialUpdatePolicyShort(input *base_legal_policies.PartialUpdatePolicyParams) (*legalclientmodels.UpdateBasePolicyResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(b.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  b.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := b.Client.BaseLegalPolicies.PartialUpdatePolicyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) RetrievePolicyCountryShort(input *base_legal_policies.RetrievePolicyCountryParams) (*legalclientmodels.RetrievePolicyResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(b.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  b.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := b.Client.BaseLegalPolicies.RetrievePolicyCountryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (b *BaseLegalPoliciesService) RetrieveAllPolicyTypesShort(input *base_legal_policies.RetrieveAllPolicyTypesParams) ([]*legalclientmodels.RetrievePolicyTypeResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(b.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  b.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := b.Client.BaseLegalPolicies.RetrieveAllPolicyTypesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

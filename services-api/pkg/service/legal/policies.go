// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policies"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type PoliciesService struct {
	Client                 *legalclient.JusticeLegalService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *PoliciesService) GetAuthSession() auth.Session {
	if aaa.RefreshTokenRepository != nil {
		return auth.Session{
			aaa.TokenRepository,
			aaa.ConfigRepository,
			aaa.RefreshTokenRepository,
		}
	}

	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use RetrievePoliciesShort instead
func (aaa *PoliciesService) RetrievePolicies(input *policies.RetrievePoliciesParams) ([]*legalclientmodels.RetrievePolicyResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Policies.RetrievePolicies(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdatePolicyShort instead
func (aaa *PoliciesService) UpdatePolicy(input *policies.UpdatePolicyParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.Policies.UpdatePolicy(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use SetDefaultPolicy1Short instead
func (aaa *PoliciesService) SetDefaultPolicy1(input *policies.SetDefaultPolicy1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.Policies.SetDefaultPolicy1(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use RetrieveLatestPoliciesShort instead
func (aaa *PoliciesService) RetrieveLatestPolicies(input *policies.RetrieveLatestPoliciesParams) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	ok, err := aaa.Client.Policies.RetrieveLatestPolicies(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RetrieveLatestPoliciesPublicShort instead
func (aaa *PoliciesService) RetrieveLatestPoliciesPublic(input *policies.RetrieveLatestPoliciesPublicParams) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Policies.RetrieveLatestPoliciesPublic(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RetrieveLatestPoliciesByNamespaceAndCountryPublicShort instead
func (aaa *PoliciesService) RetrieveLatestPoliciesByNamespaceAndCountryPublic(input *policies.RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	ok, err := aaa.Client.Policies.RetrieveLatestPoliciesByNamespaceAndCountryPublic(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PoliciesService) RetrievePoliciesShort(input *policies.RetrievePoliciesParams) ([]*legalclientmodels.RetrievePolicyResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Policies.RetrievePoliciesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PoliciesService) UpdatePolicyShort(input *policies.UpdatePolicyParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Policies.UpdatePolicyShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PoliciesService) SetDefaultPolicy1Short(input *policies.SetDefaultPolicy1Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.Policies.SetDefaultPolicy1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PoliciesService) RetrieveLatestPoliciesShort(input *policies.RetrieveLatestPoliciesParams) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	ok, err := aaa.Client.Policies.RetrieveLatestPoliciesShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PoliciesService) RetrieveLatestPoliciesPublicShort(input *policies.RetrieveLatestPoliciesPublicParams) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Policies.RetrieveLatestPoliciesPublicShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PoliciesService) RetrieveLatestPoliciesByNamespaceAndCountryPublicShort(input *policies.RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	ok, err := aaa.Client.Policies.RetrieveLatestPoliciesByNamespaceAndCountryPublicShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

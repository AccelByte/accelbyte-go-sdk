// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/base_legal_policies_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type BaseLegalPoliciesWithNamespaceService struct {
	Client           *legalclient.JusticeLegalService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdBaseLegalPoliciesWithNamespace *string

func (aaa *BaseLegalPoliciesWithNamespaceService) UpdateFlightId(flightId string) {
	tempFlightIdBaseLegalPoliciesWithNamespace = &flightId
}

func (aaa *BaseLegalPoliciesWithNamespaceService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use RetrieveAllLegalPoliciesByNamespaceShort instead.
func (aaa *BaseLegalPoliciesWithNamespaceService) RetrieveAllLegalPoliciesByNamespace(input *base_legal_policies_with_namespace.RetrieveAllLegalPoliciesByNamespaceParams) ([]*legalclientmodels.RetrieveBasePolicyResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.BaseLegalPoliciesWithNamespace.RetrieveAllLegalPoliciesByNamespace(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use CreatePolicy1Short instead.
func (aaa *BaseLegalPoliciesWithNamespaceService) CreatePolicy1(input *base_legal_policies_with_namespace.CreatePolicy1Params) (*legalclientmodels.CreateBasePolicyResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, conflict, unprocessableEntity, err := aaa.Client.BaseLegalPoliciesWithNamespace.CreatePolicy1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
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

// Deprecated: 2022-01-10 - please use RetrieveSinglePolicy1Short instead.
func (aaa *BaseLegalPoliciesWithNamespaceService) RetrieveSinglePolicy1(input *base_legal_policies_with_namespace.RetrieveSinglePolicy1Params) (*legalclientmodels.RetrieveBasePolicyResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.BaseLegalPoliciesWithNamespace.RetrieveSinglePolicy1(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PartialUpdatePolicy1Short instead.
func (aaa *BaseLegalPoliciesWithNamespaceService) PartialUpdatePolicy1(input *base_legal_policies_with_namespace.PartialUpdatePolicy1Params) (*legalclientmodels.UpdateBasePolicyResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := aaa.Client.BaseLegalPoliciesWithNamespace.PartialUpdatePolicy1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use RetrievePolicyCountry1Short instead.
func (aaa *BaseLegalPoliciesWithNamespaceService) RetrievePolicyCountry1(input *base_legal_policies_with_namespace.RetrievePolicyCountry1Params) (*legalclientmodels.RetrievePolicyResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.BaseLegalPoliciesWithNamespace.RetrievePolicyCountry1(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use RetrieveAllPolicyTypes1Short instead.
func (aaa *BaseLegalPoliciesWithNamespaceService) RetrieveAllPolicyTypes1(input *base_legal_policies_with_namespace.RetrieveAllPolicyTypes1Params) ([]*legalclientmodels.RetrievePolicyTypeResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.BaseLegalPoliciesWithNamespace.RetrieveAllPolicyTypes1(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) RetrieveAllLegalPoliciesByNamespaceShort(input *base_legal_policies_with_namespace.RetrieveAllLegalPoliciesByNamespaceParams) ([]*legalclientmodels.RetrieveBasePolicyResponse, error) {
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
	if tempFlightIdBaseLegalPoliciesWithNamespace != nil {
		input.XFlightId = tempFlightIdBaseLegalPoliciesWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPoliciesWithNamespace.RetrieveAllLegalPoliciesByNamespaceShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) CreatePolicy1Short(input *base_legal_policies_with_namespace.CreatePolicy1Params) (*legalclientmodels.CreateBasePolicyResponse, error) {
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
	if tempFlightIdBaseLegalPoliciesWithNamespace != nil {
		input.XFlightId = tempFlightIdBaseLegalPoliciesWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.BaseLegalPoliciesWithNamespace.CreatePolicy1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) RetrieveSinglePolicy1Short(input *base_legal_policies_with_namespace.RetrieveSinglePolicy1Params) (*legalclientmodels.RetrieveBasePolicyResponse, error) {
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
	if tempFlightIdBaseLegalPoliciesWithNamespace != nil {
		input.XFlightId = tempFlightIdBaseLegalPoliciesWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPoliciesWithNamespace.RetrieveSinglePolicy1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) PartialUpdatePolicy1Short(input *base_legal_policies_with_namespace.PartialUpdatePolicy1Params) (*legalclientmodels.UpdateBasePolicyResponse, error) {
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
	if tempFlightIdBaseLegalPoliciesWithNamespace != nil {
		input.XFlightId = tempFlightIdBaseLegalPoliciesWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPoliciesWithNamespace.PartialUpdatePolicy1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) RetrievePolicyCountry1Short(input *base_legal_policies_with_namespace.RetrievePolicyCountry1Params) (*legalclientmodels.RetrievePolicyResponse, error) {
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
	if tempFlightIdBaseLegalPoliciesWithNamespace != nil {
		input.XFlightId = tempFlightIdBaseLegalPoliciesWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPoliciesWithNamespace.RetrievePolicyCountry1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) RetrieveAllPolicyTypes1Short(input *base_legal_policies_with_namespace.RetrieveAllPolicyTypes1Params) ([]*legalclientmodels.RetrievePolicyTypeResponse, error) {
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
	if tempFlightIdBaseLegalPoliciesWithNamespace != nil {
		input.XFlightId = tempFlightIdBaseLegalPoliciesWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPoliciesWithNamespace.RetrieveAllPolicyTypes1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

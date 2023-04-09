// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policy_versions_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type PolicyVersionsWithNamespaceService struct {
	Client                 *legalclient.JusticeLegalService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *PolicyVersionsWithNamespaceService) GetAuthSession() auth.Session {
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

// Deprecated: 2022-01-10 - please use UpdatePolicyVersion1Short instead.
func (aaa *PolicyVersionsWithNamespaceService) UpdatePolicyVersion1(input *policy_versions_with_namespace.UpdatePolicyVersion1Params) (*legalclientmodels.UpdatePolicyVersionResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, conflict, err := aaa.Client.PolicyVersionsWithNamespace.UpdatePolicyVersion1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PublishPolicyVersion1Short instead.
func (aaa *PolicyVersionsWithNamespaceService) PublishPolicyVersion1(input *policy_versions_with_namespace.PublishPolicyVersion1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, conflict, err := aaa.Client.PolicyVersionsWithNamespace.PublishPolicyVersion1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use RetrieveSinglePolicyVersion1Short instead.
func (aaa *PolicyVersionsWithNamespaceService) RetrieveSinglePolicyVersion1(input *policy_versions_with_namespace.RetrieveSinglePolicyVersion1Params) ([]*legalclientmodels.RetrievePolicyVersionResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.PolicyVersionsWithNamespace.RetrieveSinglePolicyVersion1(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use CreatePolicyVersion1Short instead.
func (aaa *PolicyVersionsWithNamespaceService) CreatePolicyVersion1(input *policy_versions_with_namespace.CreatePolicyVersion1Params) (*legalclientmodels.CreatePolicyVersionResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, err := aaa.Client.PolicyVersionsWithNamespace.CreatePolicyVersion1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *PolicyVersionsWithNamespaceService) UpdatePolicyVersion1Short(input *policy_versions_with_namespace.UpdatePolicyVersion1Params) (*legalclientmodels.UpdatePolicyVersionResponse, error) {
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

	ok, err := aaa.Client.PolicyVersionsWithNamespace.UpdatePolicyVersion1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PolicyVersionsWithNamespaceService) PublishPolicyVersion1Short(input *policy_versions_with_namespace.PublishPolicyVersion1Params) error {
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

	_, err := aaa.Client.PolicyVersionsWithNamespace.PublishPolicyVersion1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PolicyVersionsWithNamespaceService) RetrieveSinglePolicyVersion1Short(input *policy_versions_with_namespace.RetrieveSinglePolicyVersion1Params) ([]*legalclientmodels.RetrievePolicyVersionResponse, error) {
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

	ok, err := aaa.Client.PolicyVersionsWithNamespace.RetrieveSinglePolicyVersion1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PolicyVersionsWithNamespaceService) CreatePolicyVersion1Short(input *policy_versions_with_namespace.CreatePolicyVersion1Params) (*legalclientmodels.CreatePolicyVersionResponse, error) {
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

	created, err := aaa.Client.PolicyVersionsWithNamespace.CreatePolicyVersion1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

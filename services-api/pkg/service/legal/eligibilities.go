// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/eligibilities"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type EligibilitiesService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use RetrieveEligibilitiesPublicShort instead
func (e *EligibilitiesService) RetrieveEligibilitiesPublic(input *eligibilities.RetrieveEligibilitiesPublicParams) ([]*legalclientmodels.RetrieveUserEligibilitiesResponse, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Eligibilities.RetrieveEligibilitiesPublic(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RetrieveEligibilitiesPublicIndirectShort instead
func (e *EligibilitiesService) RetrieveEligibilitiesPublicIndirect(input *eligibilities.RetrieveEligibilitiesPublicIndirectParams) (*legalclientmodels.RetrieveUserEligibilitiesIndirectResponse, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Eligibilities.RetrieveEligibilitiesPublicIndirect(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EligibilitiesService) RetrieveEligibilitiesPublicShort(input *eligibilities.RetrieveEligibilitiesPublicParams) ([]*legalclientmodels.RetrieveUserEligibilitiesResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.Eligibilities.RetrieveEligibilitiesPublicShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EligibilitiesService) RetrieveEligibilitiesPublicIndirectShort(input *eligibilities.RetrieveEligibilitiesPublicIndirectParams) (*legalclientmodels.RetrieveUserEligibilitiesIndirectResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  e.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := e.Client.Eligibilities.RetrieveEligibilitiesPublicIndirectShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

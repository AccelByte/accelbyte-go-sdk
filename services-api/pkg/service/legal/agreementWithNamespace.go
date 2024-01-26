// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type AgreementWithNamespaceService struct {
	Client           *legalclient.JusticeLegalService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdAgreementWithNamespace *string

func (aaa *AgreementWithNamespaceService) UpdateFlightId(flightId string) {
	tempFlightIdAgreementWithNamespace = &flightId
}

func (aaa *AgreementWithNamespaceService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use RetrieveAcceptedAgreementsForMultiUsersShort instead.
func (aaa *AgreementWithNamespaceService) RetrieveAcceptedAgreementsForMultiUsers(input *agreement_with_namespace.RetrieveAcceptedAgreementsForMultiUsersParams) ([]*legalclientmodels.UserAgreementsResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.AgreementWithNamespace.RetrieveAcceptedAgreementsForMultiUsers(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use RetrieveAcceptedAgreements1Short instead.
func (aaa *AgreementWithNamespaceService) RetrieveAcceptedAgreements1(input *agreement_with_namespace.RetrieveAcceptedAgreements1Params) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.AgreementWithNamespace.RetrieveAcceptedAgreements1(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use RetrieveAllUsersByPolicyVersion1Short instead.
func (aaa *AgreementWithNamespaceService) RetrieveAllUsersByPolicyVersion1(input *agreement_with_namespace.RetrieveAllUsersByPolicyVersion1Params) (*legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.AgreementWithNamespace.RetrieveAllUsersByPolicyVersion1(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AgreementWithNamespaceService) RetrieveAcceptedAgreementsForMultiUsersShort(input *agreement_with_namespace.RetrieveAcceptedAgreementsForMultiUsersParams) ([]*legalclientmodels.UserAgreementsResponse, error) {
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
	if tempFlightIdAgreementWithNamespace != nil {
		input.XFlightId = tempFlightIdAgreementWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AgreementWithNamespace.RetrieveAcceptedAgreementsForMultiUsersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AgreementWithNamespaceService) RetrieveAcceptedAgreements1Short(input *agreement_with_namespace.RetrieveAcceptedAgreements1Params) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
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
	if tempFlightIdAgreementWithNamespace != nil {
		input.XFlightId = tempFlightIdAgreementWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AgreementWithNamespace.RetrieveAcceptedAgreements1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AgreementWithNamespaceService) RetrieveAllUsersByPolicyVersion1Short(input *agreement_with_namespace.RetrieveAllUsersByPolicyVersion1Params) (*legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse, error) {
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
	if tempFlightIdAgreementWithNamespace != nil {
		input.XFlightId = tempFlightIdAgreementWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AgreementWithNamespace.RetrieveAllUsersByPolicyVersion1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

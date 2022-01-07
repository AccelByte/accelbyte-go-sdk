// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AgreementService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use RetrieveAcceptedAgreementsShort instead
func (a *AgreementService) RetrieveAcceptedAgreements(input *agreement.RetrieveAcceptedAgreementsParams) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := a.Client.Agreement.RetrieveAcceptedAgreements(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use RetrieveAllUsersByPolicyVersionShort instead
func (a *AgreementService) RetrieveAllUsersByPolicyVersion(input *agreement.RetrieveAllUsersByPolicyVersionParams) ([]*legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := a.Client.Agreement.RetrieveAllUsersByPolicyVersion(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use ChangePreferenceConsentShort instead
func (a *AgreementService) ChangePreferenceConsent(input *agreement.ChangePreferenceConsentParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := a.Client.Agreement.ChangePreferenceConsent(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AcceptVersionedPolicyShort instead
func (a *AgreementService) AcceptVersionedPolicy(input *agreement.AcceptVersionedPolicyParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Agreement.AcceptVersionedPolicy(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use RetrieveAgreementsPublicShort instead
func (a *AgreementService) RetrieveAgreementsPublic(input *agreement.RetrieveAgreementsPublicParams) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := a.Client.Agreement.RetrieveAgreementsPublic(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use BulkAcceptVersionedPolicyShort instead
func (a *AgreementService) BulkAcceptVersionedPolicy(input *agreement.BulkAcceptVersionedPolicyParams) (*legalclientmodels.AcceptAgreementResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := a.Client.Agreement.BulkAcceptVersionedPolicy(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

// Deprecated: Use IndirectBulkAcceptVersionedPolicyV2Short instead
func (a *AgreementService) IndirectBulkAcceptVersionedPolicyV2(input *agreement.IndirectBulkAcceptVersionedPolicyV2Params) (*legalclientmodels.AcceptAgreementResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := a.Client.Agreement.IndirectBulkAcceptVersionedPolicyV2(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

// Deprecated: Use IndirectBulkAcceptVersionedPolicyShort instead
func (a *AgreementService) IndirectBulkAcceptVersionedPolicy(input *agreement.IndirectBulkAcceptVersionedPolicyParams) (*legalclientmodels.AcceptAgreementResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := a.Client.Agreement.IndirectBulkAcceptVersionedPolicy(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (a *AgreementService) RetrieveAcceptedAgreementsShort(input *agreement.RetrieveAcceptedAgreementsParams, authInfo runtime.ClientAuthInfoWriter) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
	ok, err := a.Client.Agreement.RetrieveAcceptedAgreementsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AgreementService) RetrieveAllUsersByPolicyVersionShort(input *agreement.RetrieveAllUsersByPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) ([]*legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse, error) {
	ok, err := a.Client.Agreement.RetrieveAllUsersByPolicyVersionShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AgreementService) ChangePreferenceConsentShort(input *agreement.ChangePreferenceConsentParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Agreement.ChangePreferenceConsentShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AgreementService) AcceptVersionedPolicyShort(input *agreement.AcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Agreement.AcceptVersionedPolicyShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AgreementService) RetrieveAgreementsPublicShort(input *agreement.RetrieveAgreementsPublicParams, authInfo runtime.ClientAuthInfoWriter) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
	ok, err := a.Client.Agreement.RetrieveAgreementsPublicShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AgreementService) BulkAcceptVersionedPolicyShort(input *agreement.BulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*legalclientmodels.AcceptAgreementResponse, error) {
	created, err := a.Client.Agreement.BulkAcceptVersionedPolicyShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (a *AgreementService) IndirectBulkAcceptVersionedPolicyV2Short(input *agreement.IndirectBulkAcceptVersionedPolicyV2Params, authInfo runtime.ClientAuthInfoWriter) (*legalclientmodels.AcceptAgreementResponse, error) {
	created, err := a.Client.Agreement.IndirectBulkAcceptVersionedPolicyV2Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (a *AgreementService) IndirectBulkAcceptVersionedPolicyShort(input *agreement.IndirectBulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*legalclientmodels.AcceptAgreementResponse, error) {
	created, err := a.Client.Agreement.IndirectBulkAcceptVersionedPolicyShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

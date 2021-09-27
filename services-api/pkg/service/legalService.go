// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/base_legal_policies"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/eligibilities"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/localized_policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policies"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/user_info"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/utility"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type LegalService struct {
	LegalServiceClient *legalclient.JusticeLegalService
	TokenRepository    repository.TokenRepository
}

// AnonymizeUserAgreement is used to anonymize user s agreement record
func (legalService *LegalService) AnonymizeUserAgreement(userId string) error {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &anonymization.AnonymizeUserAgreementParams{
		UserID: userId,
	}
	_, notFound, err := legalService.LegalServiceClient.Anonymization.AnonymizeUserAgreement(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AcceptVersionedPolicy is used to accept a policy version
func (legalService *LegalService) AcceptVersionedPolicy(localizedPolicyVersionId string) error {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &agreement.AcceptVersionedPolicyParams{
		LocalizedPolicyVersionID: localizedPolicyVersionId,
	}
	_, err = legalService.LegalServiceClient.Agreement.AcceptVersionedPolicy(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// BulkAcceptVersionedPolicy is used to bulk accept policy versions
func (legalService *LegalService) BulkAcceptVersionedPolicy(body []*legalclientmodels.AcceptAgreementRequest) (*legalclientmodels.AcceptAgreementResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &agreement.BulkAcceptVersionedPolicyParams{
		Body: body,
	}
	created, err := legalService.LegalServiceClient.Agreement.BulkAcceptVersionedPolicy(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// ChangePreferenceConsent is used to accept revoke marketing preference consent
func (legalService *LegalService) ChangePreferenceConsent(body []*legalclientmodels.AcceptAgreementRequest) error {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &agreement.ChangePreferenceConsentParams{
		Body: body,
	}
	_, badRequest, err := legalService.LegalServiceClient.Agreement.ChangePreferenceConsent(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// IndirectBulkAcceptVersionedPolicy is used to bulk accept policy versions indirect
func (legalService *LegalService) IndirectBulkAcceptVersionedPolicy(userId string, body []*legalclientmodels.AcceptAgreementRequest) (*legalclientmodels.AcceptAgreementResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &agreement.IndirectBulkAcceptVersionedPolicyParams{
		Body:   body,
		UserID: userId,
	}
	created, err := legalService.LegalServiceClient.Agreement.IndirectBulkAcceptVersionedPolicy(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// IndirectBulkAcceptVersionedPolicyV2 is used to bulk accept policy versions indirect
func (legalService *LegalService) IndirectBulkAcceptVersionedPolicyV2(userId, namespace, countryCode, clientId string, body []*legalclientmodels.AcceptAgreementRequest) (*legalclientmodels.AcceptAgreementResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &agreement.IndirectBulkAcceptVersionedPolicyV2Params{
		Body:        body,
		ClientID:    clientId,
		CountryCode: countryCode,
		Namespace:   namespace,
		UserID:      userId,
	}
	created, err := legalService.LegalServiceClient.Agreement.IndirectBulkAcceptVersionedPolicyV2(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// RetrieveAcceptedAgreements is used to retrieve accepted legal agreements
func (legalService *LegalService) RetrieveAcceptedAgreements(userId string) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &agreement.RetrieveAcceptedAgreementsParams{
		UserID: userId,
	}
	ok, err := legalService.LegalServiceClient.Agreement.RetrieveAcceptedAgreements(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveAgreementsPublic is used to retrieve the accepted legal agreements
func (legalService *LegalService) RetrieveAgreementsPublic() ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &agreement.RetrieveAgreementsPublicParams{}
	ok, err := legalService.LegalServiceClient.Agreement.RetrieveAgreementsPublic(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveAllUsersByPolicyVersion is used to retrieve all users accepting legal agreements
func (legalService *LegalService) RetrieveAllUsersByPolicyVersion(policyVersionId string, keyword *string, offset, limit *int32) ([]*legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &agreement.RetrieveAllUsersByPolicyVersionParams{
		Keyword:         keyword,
		Limit:           limit,
		Offset:          offset,
		PolicyVersionID: policyVersionId,
	}
	ok, notFound, err := legalService.LegalServiceClient.Agreement.RetrieveAllUsersByPolicyVersion(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// CreatePolicy is used to retrieve all users accepting legal agreements
func (legalService *LegalService) CreatePolicy(body *legalclientmodels.CreateBasePolicyRequest) (*legalclientmodels.CreateBasePolicyResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &base_legal_policies.CreatePolicyParams{
		Body: body,
	}
	created, conflict, unprocessableEntity, err := legalService.LegalServiceClient.BaseLegalPolicies.CreatePolicy(params, client.BearerToken(*token.AccessToken))
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// PartialUpdatePolicy is used to update base legal policy
func (legalService *LegalService) PartialUpdatePolicy(basePolicyId string, body *legalclientmodels.UpdateBasePolicyRequest) (*legalclientmodels.UpdateBasePolicyResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &base_legal_policies.PartialUpdatePolicyParams{
		BasePolicyID: basePolicyId,
		Body:         body,
	}
	ok, badRequest, err := legalService.LegalServiceClient.BaseLegalPolicies.PartialUpdatePolicy(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveAllLegalPolicies is used to retrieve all base legal policy
func (legalService *LegalService) RetrieveAllLegalPolicies() ([]*legalclientmodels.RetrieveBasePolicyResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &base_legal_policies.RetrieveAllLegalPoliciesParams{}
	ok, err := legalService.LegalServiceClient.BaseLegalPolicies.RetrieveAllLegalPolicies(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveAllPolicyTypes is used to retrieve all policy type
func (legalService *LegalService) RetrieveAllPolicyTypes(limit int32, offset *int32) ([]*legalclientmodels.RetrievePolicyTypeResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &base_legal_policies.RetrieveAllPolicyTypesParams{
		Limit:  limit,
		Offset: offset,
	}
	ok, err := legalService.LegalServiceClient.BaseLegalPolicies.RetrieveAllPolicyTypes(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrievePolicyCountry is used to retrieve a base legal policy based on a particular country
func (legalService *LegalService) RetrievePolicyCountry(basePolicyId, countryCode string) (*legalclientmodels.RetrievePolicyResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &base_legal_policies.RetrievePolicyCountryParams{
		BasePolicyID: basePolicyId,
		CountryCode:  countryCode,
	}
	ok, notFound, err := legalService.LegalServiceClient.BaseLegalPolicies.RetrievePolicyCountry(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveSinglePolicy is used to retrieve a base legal policy
func (legalService *LegalService) RetrieveSinglePolicy(basePolicyId string) (*legalclientmodels.RetrieveBasePolicyResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &base_legal_policies.RetrieveSinglePolicyParams{
		BasePolicyID: basePolicyId,
	}
	ok, notFound, err := legalService.LegalServiceClient.BaseLegalPolicies.RetrieveSinglePolicy(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveEligibilitiesPublic is used to check user legal eligibility
func (legalService *LegalService) RetrieveEligibilitiesPublic(namespace string) ([]*legalclientmodels.RetrieveUserEligibilitiesResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &eligibilities.RetrieveEligibilitiesPublicParams{
		Namespace: namespace,
	}
	ok, err := legalService.LegalServiceClient.Eligibilities.RetrieveEligibilitiesPublic(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveEligibilitiesPublicIndirect is used to check user legal eligibility
func (legalService *LegalService) RetrieveEligibilitiesPublicIndirect(namespace, countryCode, clientId, userId string) (*legalclientmodels.RetrieveUserEligibilitiesIndirectResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &eligibilities.RetrieveEligibilitiesPublicIndirectParams{
		ClientID:    clientId,
		CountryCode: countryCode,
		Namespace:   namespace,
		UserID:      userId,
	}
	ok, err := legalService.LegalServiceClient.Eligibilities.RetrieveEligibilitiesPublicIndirect(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// CreateLocalizedPolicyVersion is used to update base legal policy
func (legalService *LegalService) CreateLocalizedPolicyVersion(policyVersionId string, body *legalclientmodels.CreateLocalizedPolicyVersionRequest) (*legalclientmodels.CreateLocalizedPolicyVersionResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &localized_policy_versions.CreateLocalizedPolicyVersionParams{
		Body:            body,
		PolicyVersionID: policyVersionId,
	}
	created, badRequest, conflict, err := legalService.LegalServiceClient.LocalizedPolicyVersions.CreateLocalizedPolicyVersion(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// RequestPresignedURL is used to request presigned URL for upload document
func (legalService *LegalService) RequestPresignedURL(localizedPolicyVersionId string, body *legalclientmodels.UploadPolicyVersionAttachmentRequest) (*legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &localized_policy_versions.RequestPresignedURLParams{
		Body:                     body,
		LocalizedPolicyVersionID: localizedPolicyVersionId,
	}
	created, badRequest, err := legalService.LegalServiceClient.LocalizedPolicyVersions.RequestPresignedURL(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// RetrieveLocalizedPolicyVersions is used to retrieve versions from country specific policy
func (legalService *LegalService) RetrieveLocalizedPolicyVersions(policyVersionId string) ([]*legalclientmodels.RetrieveLocalizedPolicyVersionResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &localized_policy_versions.RetrieveLocalizedPolicyVersionsParams{
		PolicyVersionID: policyVersionId,
	}
	created, err := legalService.LegalServiceClient.LocalizedPolicyVersions.RetrieveLocalizedPolicyVersions(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// RetrieveSingleLocalizedPolicyVersion is used to retrieve a localized version from country specific policy
func (legalService *LegalService) RetrieveSingleLocalizedPolicyVersion(localizedPolicyVersionId string) (*legalclientmodels.UpdateLocalizedPolicyVersionResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &localized_policy_versions.RetrieveSingleLocalizedPolicyVersionParams{
		LocalizedPolicyVersionID: localizedPolicyVersionId,
	}
	ok, badRequest, err := legalService.LegalServiceClient.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersion(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveSingleLocalizedPolicyVersion1 is used to retrieve a localized version
func (legalService *LegalService) RetrieveSingleLocalizedPolicyVersion1(localizedPolicyVersionId string) (*legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse, error) {
	_, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &localized_policy_versions.RetrieveSingleLocalizedPolicyVersion1Params{
		LocalizedPolicyVersionID: localizedPolicyVersionId,
	}
	ok, notFound, err := legalService.LegalServiceClient.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersion1(params)
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// SetDefaultPolicy is used to set default localized policy
func (legalService *LegalService) SetDefaultPolicy(localizedPolicyVersionId string) error {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &localized_policy_versions.SetDefaultPolicyParams{
		LocalizedPolicyVersionID: localizedPolicyVersionId,
	}
	_, err = legalService.LegalServiceClient.LocalizedPolicyVersions.SetDefaultPolicy(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// UpdateLocalizedPolicyVersion is used to update a localized version from country specific policy
func (legalService *LegalService) UpdateLocalizedPolicyVersion(localizedPolicyVersionId string, body *legalclientmodels.UpdateLocalizedPolicyVersionRequest) (*legalclientmodels.UpdateLocalizedPolicyVersionResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &localized_policy_versions.UpdateLocalizedPolicyVersionParams{
		Body:                     body,
		LocalizedPolicyVersionID: localizedPolicyVersionId,
	}
	ok, badRequest, err := legalService.LegalServiceClient.LocalizedPolicyVersions.UpdateLocalizedPolicyVersion(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveLatestPolicies is used to retrieve the latest policies by country
func (legalService *LegalService) RetrieveLatestPolicies(countryCode string, defaultOnEmpty *bool, policyType, tags *string) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	_, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &policies.RetrieveLatestPoliciesParams{
		CountryCode:    countryCode,
		DefaultOnEmpty: defaultOnEmpty,
		PolicyType:     policyType,
		Tags:           tags,
	}
	ok, err := legalService.LegalServiceClient.Policies.RetrieveLatestPolicies(params)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveLatestPoliciesByNamespaceAndCountryPublic is used to retrieve the latest policies by namespace and country
func (legalService *LegalService) RetrieveLatestPoliciesByNamespaceAndCountryPublic(namespace, countryCode string, alwaysIncludeDefault, defaultOnEmpty *bool, policyType, tags *string) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	_, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &policies.RetrieveLatestPoliciesByNamespaceAndCountryPublicParams{
		AlwaysIncludeDefault: alwaysIncludeDefault,
		CountryCode:          countryCode,
		DefaultOnEmpty:       defaultOnEmpty,
		Namespace:            namespace,
		PolicyType:           policyType,
		Tags:                 tags,
	}
	ok, err := legalService.LegalServiceClient.Policies.RetrieveLatestPoliciesByNamespaceAndCountryPublic(params)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveLatestPoliciesPublic is used to update a localized version from country specific policy
func (legalService *LegalService) RetrieveLatestPoliciesPublic(namespace string, alwaysIncludeDefault, defaultOnEmpty *bool, policyType, tags *string) ([]*legalclientmodels.RetrievePolicyPublicResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &policies.RetrieveLatestPoliciesPublicParams{
		AlwaysIncludeDefault: alwaysIncludeDefault,
		DefaultOnEmpty:       defaultOnEmpty,
		Namespace:            namespace,
		PolicyType:           policyType,
		Tags:                 tags,
	}
	ok, notFound, err := legalService.LegalServiceClient.Policies.RetrieveLatestPoliciesPublic(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrievePolicies is used to retrieve policies by country
func (legalService *LegalService) RetrievePolicies(countryCode string) ([]*legalclientmodels.RetrievePolicyResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &policies.RetrievePoliciesParams{
		CountryCode: countryCode,
	}
	ok, err := legalService.LegalServiceClient.Policies.RetrievePolicies(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// SetDefaultPolicy1 is used to set default policy
func (legalService *LegalService) SetDefaultPolicy1(policyId string) error {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &policies.SetDefaultPolicy1Params{
		PolicyID: policyId,
	}
	_, err = legalService.LegalServiceClient.Policies.SetDefaultPolicy1(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// UpdatePolicy is used to update country specific policy
func (legalService *LegalService) UpdatePolicy(policyId string, body *legalclientmodels.UpdatePolicyRequest) error {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &policies.UpdatePolicyParams{
		Body:     body,
		PolicyID: policyId,
	}
	_, err = legalService.LegalServiceClient.Policies.UpdatePolicy(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// CreatePolicyVersion is used to create a version from country specific policy
func (legalService *LegalService) CreatePolicyVersion(policyId string, body *legalclientmodels.CreatePolicyVersionRequest) (*legalclientmodels.CreatePolicyVersionResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &policy_versions.CreatePolicyVersionParams{
		Body:     body,
		PolicyID: policyId,
	}
	ok, badRequest, err := legalService.LegalServiceClient.PolicyVersions.CreatePolicyVersion(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// PublishPolicyVersion is used to manually publish a version from country specific policy
func (legalService *LegalService) PublishPolicyVersion(policyVersionId string, shouldNotify *bool) error {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &policy_versions.PublishPolicyVersionParams{
		PolicyVersionID: policyVersionId,
		ShouldNotify:    shouldNotify,
	}
	_, badRequest, err := legalService.LegalServiceClient.PolicyVersions.PublishPolicyVersion(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// RetrievePolicyVersions is used to bulk retrieve version of base policy
func (legalService *LegalService) RetrievePolicyVersions(basePolicyId, LocaleId, namespace *string) ([]*legalclientmodels.RetrievePolicyVersionResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &policy_versions.RetrievePolicyVersionsParams{
		BasePolicyID: basePolicyId,
		LocaleID:     LocaleId,
		Namespace:    namespace,
	}
	ok, notFound, err := legalService.LegalServiceClient.PolicyVersions.RetrievePolicyVersions(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// RetrieveSinglePolicyVersion is used to retrieve a version from country specific policy
func (legalService *LegalService) RetrieveSinglePolicyVersion(policyId string, versionId *string) ([]*legalclientmodels.RetrievePolicyVersionResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &policy_versions.RetrieveSinglePolicyVersionParams{
		PolicyID:  policyId,
		VersionID: versionId,
	}
	ok, notFound, err := legalService.LegalServiceClient.PolicyVersions.RetrieveSinglePolicyVersion(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// UpdatePolicyVersion is used to update a version of policy
func (legalService *LegalService) UpdatePolicyVersion(policyVersionId string, body *legalclientmodels.UpdatePolicyVersionRequest) (*legalclientmodels.UpdatePolicyVersionResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &policy_versions.UpdatePolicyVersionParams{
		Body:            body,
		PolicyVersionID: policyVersionId,
	}
	ok, notFound, err := legalService.LegalServiceClient.PolicyVersions.UpdatePolicyVersion(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// GetUserInfoStatus is used to get user info cache status
func (legalService *LegalService) GetUserInfoStatus(namespaces *string) ([]*legalclientmodels.RetrieveUserInfoCacheStatusResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &user_info.GetUserInfoStatusParams{
		Namespaces: namespaces,
	}
	ok, err := legalService.LegalServiceClient.UserInfo.GetUserInfoStatus(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// InvalidateUserInfoCache is used to invalidate user info cache
func (legalService *LegalService) InvalidateUserInfoCache(namespace *string) error {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &user_info.InvalidateUserInfoCacheParams{
		Namespace: namespace,
	}
	_, err = legalService.LegalServiceClient.UserInfo.InvalidateUserInfoCache(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// SyncUserInfo is used to invalidate user info cache
func (legalService *LegalService) SyncUserInfo(namespace string) error {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &user_info.SyncUserInfoParams{
		Namespace: namespace,
	}
	_, err = legalService.LegalServiceClient.UserInfo.SyncUserInfo(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// CheckReadiness is used to check legal data readiness
func (legalService *LegalService) CheckReadiness() (*legalclientmodels.LegalReadinessStatusResponse, error) {
	token, err := legalService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &utility.CheckReadinessParams{}
	ok, err := legalService.LegalServiceClient.Utility.CheckReadiness(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

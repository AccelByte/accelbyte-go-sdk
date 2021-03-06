// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type AgreementService struct {
	Client                 *legalclient.JusticeLegalService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (a *AgreementService) GetAuthSession() auth.Session {
	if a.RefreshTokenRepository != nil {
		return auth.Session{
			a.TokenRepository,
			a.ConfigRepository,
			a.RefreshTokenRepository,
		}
	}

	return auth.Session{
		a.TokenRepository,
		a.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use ChangePreferenceConsentShort instead
func (a *AgreementService) ChangePreferenceConsent(input *agreement.ChangePreferenceConsentParams) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Agreement.ChangePreferenceConsent(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use RetrieveAcceptedAgreementsShort instead
func (a *AgreementService) RetrieveAcceptedAgreements(input *agreement.RetrieveAcceptedAgreementsParams) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := a.Client.Agreement.RetrieveAcceptedAgreements(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RetrieveAllUsersByPolicyVersionShort instead
func (a *AgreementService) RetrieveAllUsersByPolicyVersion(input *agreement.RetrieveAllUsersByPolicyVersionParams) ([]*legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := a.Client.Agreement.RetrieveAllUsersByPolicyVersion(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ChangePreferenceConsent1Short instead
func (a *AgreementService) ChangePreferenceConsent1(input *agreement.ChangePreferenceConsent1Params) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := a.Client.Agreement.ChangePreferenceConsent1(input, client.BearerToken(*token.AccessToken))
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
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Agreement.AcceptVersionedPolicy(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use RetrieveAgreementsPublicShort instead
func (a *AgreementService) RetrieveAgreementsPublic(input *agreement.RetrieveAgreementsPublicParams) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := a.Client.Agreement.RetrieveAgreementsPublic(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use BulkAcceptVersionedPolicyShort instead
func (a *AgreementService) BulkAcceptVersionedPolicy(input *agreement.BulkAcceptVersionedPolicyParams) (*legalclientmodels.AcceptAgreementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := a.Client.Agreement.BulkAcceptVersionedPolicy(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use IndirectBulkAcceptVersionedPolicyV2Short instead
func (a *AgreementService) IndirectBulkAcceptVersionedPolicyV2(input *agreement.IndirectBulkAcceptVersionedPolicyV2Params) (*legalclientmodels.AcceptAgreementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := a.Client.Agreement.IndirectBulkAcceptVersionedPolicyV2(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use IndirectBulkAcceptVersionedPolicy1Short instead
func (a *AgreementService) IndirectBulkAcceptVersionedPolicy1(input *agreement.IndirectBulkAcceptVersionedPolicy1Params) (*legalclientmodels.AcceptAgreementResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := a.Client.Agreement.IndirectBulkAcceptVersionedPolicy1(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (a *AgreementService) ChangePreferenceConsentShort(input *agreement.ChangePreferenceConsentParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := a.Client.Agreement.ChangePreferenceConsentShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AgreementService) RetrieveAcceptedAgreementsShort(input *agreement.RetrieveAcceptedAgreementsParams) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := a.Client.Agreement.RetrieveAcceptedAgreementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AgreementService) RetrieveAllUsersByPolicyVersionShort(input *agreement.RetrieveAllUsersByPolicyVersionParams) ([]*legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := a.Client.Agreement.RetrieveAllUsersByPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AgreementService) ChangePreferenceConsent1Short(input *agreement.ChangePreferenceConsent1Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := a.Client.Agreement.ChangePreferenceConsent1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AgreementService) AcceptVersionedPolicyShort(input *agreement.AcceptVersionedPolicyParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := a.Client.Agreement.AcceptVersionedPolicyShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (a *AgreementService) RetrieveAgreementsPublicShort(input *agreement.RetrieveAgreementsPublicParams) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := a.Client.Agreement.RetrieveAgreementsPublicShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (a *AgreementService) BulkAcceptVersionedPolicyShort(input *agreement.BulkAcceptVersionedPolicyParams) (*legalclientmodels.AcceptAgreementResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := a.Client.Agreement.BulkAcceptVersionedPolicyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (a *AgreementService) IndirectBulkAcceptVersionedPolicyV2Short(input *agreement.IndirectBulkAcceptVersionedPolicyV2Params) (*legalclientmodels.AcceptAgreementResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := a.Client.Agreement.IndirectBulkAcceptVersionedPolicyV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (a *AgreementService) IndirectBulkAcceptVersionedPolicy1Short(input *agreement.IndirectBulkAcceptVersionedPolicy1Params) (*legalclientmodels.AcceptAgreementResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  a.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := a.Client.Agreement.IndirectBulkAcceptVersionedPolicy1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

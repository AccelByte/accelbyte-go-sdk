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

func (aaa *AgreementService) GetAuthSession() auth.Session {
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

// Deprecated: 2022-01-10 - please use ChangePreferenceConsentShort instead.
func (aaa *AgreementService) ChangePreferenceConsent(input *agreement.ChangePreferenceConsentParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, err := aaa.Client.Agreement.ChangePreferenceConsent(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use RetrieveAcceptedAgreementsShort instead.
func (aaa *AgreementService) RetrieveAcceptedAgreements(input *agreement.RetrieveAcceptedAgreementsParams) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Agreement.RetrieveAcceptedAgreements(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use RetrieveAllUsersByPolicyVersionShort instead.
func (aaa *AgreementService) RetrieveAllUsersByPolicyVersion(input *agreement.RetrieveAllUsersByPolicyVersionParams) (*legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Agreement.RetrieveAllUsersByPolicyVersion(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use ChangePreferenceConsent1Short instead.
func (aaa *AgreementService) ChangePreferenceConsent1(input *agreement.ChangePreferenceConsent1Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := aaa.Client.Agreement.ChangePreferenceConsent1(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use AcceptVersionedPolicyShort instead.
func (aaa *AgreementService) AcceptVersionedPolicy(input *agreement.AcceptVersionedPolicyParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := aaa.Client.Agreement.AcceptVersionedPolicy(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use RetrieveAgreementsPublicShort instead.
func (aaa *AgreementService) RetrieveAgreementsPublic(input *agreement.RetrieveAgreementsPublicParams) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := aaa.Client.Agreement.RetrieveAgreementsPublic(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use BulkAcceptVersionedPolicyShort instead.
func (aaa *AgreementService) BulkAcceptVersionedPolicy(input *agreement.BulkAcceptVersionedPolicyParams) (*legalclientmodels.AcceptAgreementResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, err := aaa.Client.Agreement.BulkAcceptVersionedPolicy(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use IndirectBulkAcceptVersionedPolicyV2Short instead.
func (aaa *AgreementService) IndirectBulkAcceptVersionedPolicyV2(input *agreement.IndirectBulkAcceptVersionedPolicyV2Params) (*legalclientmodels.AcceptAgreementResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := aaa.Client.Agreement.IndirectBulkAcceptVersionedPolicyV2(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use IndirectBulkAcceptVersionedPolicy1Short instead.
func (aaa *AgreementService) IndirectBulkAcceptVersionedPolicy1(input *agreement.IndirectBulkAcceptVersionedPolicy1Params) (*legalclientmodels.AcceptAgreementResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, notFound, err := aaa.Client.Agreement.IndirectBulkAcceptVersionedPolicy1(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *AgreementService) ChangePreferenceConsentShort(input *agreement.ChangePreferenceConsentParams) error {
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

	_, err := aaa.Client.Agreement.ChangePreferenceConsentShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AgreementService) RetrieveAcceptedAgreementsShort(input *agreement.RetrieveAcceptedAgreementsParams) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
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

	ok, err := aaa.Client.Agreement.RetrieveAcceptedAgreementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AgreementService) RetrieveAllUsersByPolicyVersionShort(input *agreement.RetrieveAllUsersByPolicyVersionParams) (*legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse, error) {
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

	ok, err := aaa.Client.Agreement.RetrieveAllUsersByPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AgreementService) ChangePreferenceConsent1Short(input *agreement.ChangePreferenceConsent1Params) error {
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

	_, err := aaa.Client.Agreement.ChangePreferenceConsent1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AgreementService) AcceptVersionedPolicyShort(input *agreement.AcceptVersionedPolicyParams) error {
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

	_, err := aaa.Client.Agreement.AcceptVersionedPolicyShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AgreementService) RetrieveAgreementsPublicShort(input *agreement.RetrieveAgreementsPublicParams) ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, error) {
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

	ok, err := aaa.Client.Agreement.RetrieveAgreementsPublicShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AgreementService) BulkAcceptVersionedPolicyShort(input *agreement.BulkAcceptVersionedPolicyParams) (*legalclientmodels.AcceptAgreementResponse, error) {
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

	created, err := aaa.Client.Agreement.BulkAcceptVersionedPolicyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *AgreementService) IndirectBulkAcceptVersionedPolicyV2Short(input *agreement.IndirectBulkAcceptVersionedPolicyV2Params) (*legalclientmodels.AcceptAgreementResponse, error) {
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

	created, err := aaa.Client.Agreement.IndirectBulkAcceptVersionedPolicyV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *AgreementService) IndirectBulkAcceptVersionedPolicy1Short(input *agreement.IndirectBulkAcceptVersionedPolicy1Params) (*legalclientmodels.AcceptAgreementResponse, error) {
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

	created, err := aaa.Client.Agreement.IndirectBulkAcceptVersionedPolicy1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

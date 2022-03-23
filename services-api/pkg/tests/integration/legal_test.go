// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	agreementService = &legal.AgreementService{
		Client:          factory.NewLegalClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	isAccepted               = true
	bodyLegals               []*legalclientmodels.AcceptAgreementRequest
	localizedPolicyVersionID = "152b9b0f-7b8e-4a9e-8a9d-8c82420ad8b3"
	policyVersionId          = "a76ea12c-14fd-46c5-886f-fd3d0ded4408"
	policyId                 = "6adb3d65-b428-4dbc-a08d-e5126c644557" // the marketing policy
	bodyLegal                = &legalclientmodels.AcceptAgreementRequest{
		IsAccepted:               &isAccepted,
		LocalizedPolicyVersionID: &localizedPolicyVersionID,
		PolicyID:                 &policyId,
		PolicyVersionID:          &policyVersionId,
	}
)

// Bulk accept policy versions
func TestIntegrationBulkAcceptVersionedPolicy(t *testing.T) {
	t.Parallel()
	bodyLegals = append(bodyLegals, bodyLegal)
	inputLegal := &agreement.BulkAcceptVersionedPolicyParams{
		Body: bodyLegals,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := agreementService.BulkAcceptVersionedPolicy(inputLegal)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Getting agreements
func TestIntegrationRetrieveAgreementsPublic(t *testing.T) {
	t.Parallel()
	inputLegal := &agreement.RetrieveAgreementsPublicParams{}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := agreementService.RetrieveAgreementsPublic(inputLegal)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating marketing preference consent
func TestIntegrationChangePreferenceConsent(t *testing.T) {
	t.Parallel()
	bodyLegals = append(bodyLegals, bodyLegal)
	inputLegal := &agreement.ChangePreferenceConsentParams{
		Body: bodyLegals,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := agreementService.ChangePreferenceConsent(inputLegal)

	assert.Nil(t, err, "err should be nil")
}

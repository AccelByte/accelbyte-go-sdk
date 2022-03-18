// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	agreementService = &legal.AgreementService{
		Client:          factory.NewLegalClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
)

// Bulk accept policy versions
func TestIntegrationBulkAcceptVersionedPolicy(t *testing.T) {
	inputlegal := &agreement.BulkAcceptVersionedPolicyParams{
		Body: nil,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := agreementService.BulkAcceptVersionedPolicy(inputlegal)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Getting agreements
func TestIntegrationRetrieveAgreementsPublic(t *testing.T) {
	inputlegal := &agreement.RetrieveAgreementsPublicParams{}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := agreementService.RetrieveAgreementsPublic(inputlegal)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating marketing preference consent
func TestIntegrationChangePreferenceConsent(t *testing.T) {
	inputlegal := &agreement.ChangePreferenceConsentParams{
		Body: nil,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := agreementService.ChangePreferenceConsent(inputlegal)

	assert.Nil(t, err, "err should be nil")
}

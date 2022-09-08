// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	agreementService = &legal.AgreementService{
		Client:          factory.NewLegalClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: auth.DefaultTokenRepositoryImpl(),
	}
	isAccepted               = true
	bodyLegals               []*legalclientmodels.AcceptAgreementRequest
	localizedPolicyVersionID = "152b9b0f-7b8e-4a9e-8a9d-8c82420ad8b3"
	policyVersionID          = "a76ea12c-14fd-46c5-886f-fd3d0ded4408"
	policyID                 = "6adb3d65-b428-4dbc-a08d-e5126c644557" // the marketing policy
	bodyLegal                = &legalclientmodels.AcceptAgreementRequest{
		IsAccepted:               &isAccepted,
		LocalizedPolicyVersionID: &localizedPolicyVersionID,
		PolicyID:                 &policyID,
		PolicyVersionID:          &policyVersionID,
	}
)

func TestIntegrationBulkAcceptVersionedPolicy(t *testing.T) {
	t.Parallel()

	// Login User - Arrange
	Init()

	// CASE Bulk accept policy versions
	bodyLegals = append(bodyLegals, bodyLegal)
	inputLegal := &agreement.BulkAcceptVersionedPolicyParams{
		Body: bodyLegals,
	}

	ok, err := agreementService.BulkAcceptVersionedPolicyShort(inputLegal)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationRetrieveAgreementsPublic(t *testing.T) {
	t.Parallel()
	// Login User - Arrange
	Init()

	// CASE Get agreements
	inputLegal := &agreement.RetrieveAgreementsPublicParams{}

	ok, err := agreementService.RetrieveAgreementsPublicShort(inputLegal)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationChangePreferenceConsent(t *testing.T) {
	t.Parallel()

	// CASE Update marketing preference consent
	bodyLegals = append(bodyLegals, bodyLegal)
	inputLegal := &agreement.ChangePreferenceConsentParams{
		Body:      bodyLegals,
		Namespace: integration.NamespaceTest,
		UserID:    GetUserID(),
	}

	err := agreementService.ChangePreferenceConsentShort(inputLegal)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}

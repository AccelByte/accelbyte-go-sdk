// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	dataRetrievalService = &gdpr.DataRetrievalService{
		Client:          factory.NewGdprClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	body   []string
	email  = "goSDK@accelbyte.net"
	emails []string
)

func TestIntegrationSaveAdminEmailConfiguration(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Create admin email configuration
	body = append(body, email)
	input := &data_retrieval.SaveAdminEmailConfigurationParams{
		Body:      body,
		Namespace: integration.NamespaceTest,
	}

	err := dataRetrievalService.SaveAdminEmailConfigurationShort(input)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}

func TestIntegrationAdminListDataRetrieval(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Get admin email addresses configuration
	input := &data_retrieval.GetAdminEmailConfigurationParams{
		Namespace: integration.NamespaceTest,
	}

	ok, err := dataRetrievalService.GetAdminEmailConfigurationShort(input)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationUpdateAdminEmailConfiguration(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Update admin email configuration
	body = append(body, email)
	input := &data_retrieval.UpdateAdminEmailConfigurationParams{
		Body:      body,
		Namespace: integration.NamespaceTest,
	}

	err := dataRetrievalService.UpdateAdminEmailConfigurationShort(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}

func TestIntegrationDeleteAdminEmailConfiguration(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Delete admin email configuration
	emails = append(emails, email)
	input := &data_retrieval.DeleteAdminEmailConfigurationParams{
		Emails:    emails,
		Namespace: integration.NamespaceTest,
	}

	err := dataRetrievalService.DeleteAdminEmailConfigurationShort(input)
	// ESAC

	// Assert
	assert.Nil(t, err, "response should not be nil")
}

// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	dataRetrievalService = &gdpr.DataRetrievalService{
		Client:          factory.NewGdprClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	body   []string
	email  = "goSDK@accelbyte.net"
	emails []string
)

// Creating admin email configuration
func TestIntegrationSaveAdminEmailConfiguration(t *testing.T) {
	Init()
	body = append(body, email)
	input := &data_retrieval.SaveAdminEmailConfigurationParams{
		Body:      body,
		Namespace: integration.NamespaceTest,
	}
	err := dataRetrievalService.SaveAdminEmailConfigurationShort(input, nil)

	assert.Nil(t, err, "err should be nil")
}

// Getting admin email addresses configuration
func TestIntegrationAdminListDataRetrieval(t *testing.T) {
	Init()
	input := &data_retrieval.GetAdminEmailConfigurationParams{
		Namespace: integration.NamespaceTest,
	}
	ok, err := dataRetrievalService.GetAdminEmailConfigurationShort(input, nil)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating admin email configuration
func TestIntegrationUpdateAdminEmailConfiguration(t *testing.T) {
	Init()
	body = append(body, email)
	input := &data_retrieval.UpdateAdminEmailConfigurationParams{
		Body:      body,
		Namespace: integration.NamespaceTest,
	}
	err := dataRetrievalService.UpdateAdminEmailConfigurationShort(input, nil)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
}

// Deleting admin email configuration
func TestIntegrationDeleteAdminEmailConfiguration(t *testing.T) {
	Init()
	emails = append(emails, email)
	input := &data_retrieval.DeleteAdminEmailConfigurationParams{
		Emails:    emails,
		Namespace: integration.NamespaceTest,
	}
	err := dataRetrievalService.DeleteAdminEmailConfigurationShort(input, nil)
	assert.Nil(t, err, "response should not be nil")
}

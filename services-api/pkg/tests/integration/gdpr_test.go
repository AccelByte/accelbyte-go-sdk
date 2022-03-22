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

// Deleting admin email configuration
func TestIntegrationDeleteAdminEmailConfiguration(t *testing.T) {
	emails = append(emails, email)
	input := &data_retrieval.DeleteAdminEmailConfigurationParams{
		Emails:    emails,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := dataRetrievalService.DeleteAdminEmailConfiguration(input)
	assert.Nil(t, err, "response should not be nil")
}

// Creating admin email configuration
func TestIntegrationSaveAdminEmailConfiguration(t *testing.T) {
	body = append(body, email)
	input := &data_retrieval.SaveAdminEmailConfigurationParams{
		Body:      body,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := dataRetrievalService.SaveAdminEmailConfiguration(input)

	assert.Nil(t, err, "err should be nil")
}

// Getting admin email addresses configuration
func TestIntegrationAdminListDataRetrieval(t *testing.T) {
	input := &data_retrieval.GetAdminEmailConfigurationParams{
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := dataRetrievalService.GetAdminEmailConfiguration(input)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating admin email configuration
func TestIntegrationUpdateAdminEmailConfiguration(t *testing.T) {
	body = append(body, email)
	input := &data_retrieval.UpdateAdminEmailConfigurationParams{
		Body:      body,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := dataRetrievalService.UpdateAdminEmailConfiguration(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
}

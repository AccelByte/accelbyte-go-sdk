// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

var (
	statConfigurationService = &social.StatConfigurationService{
		Client:          factory.NewSocialClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
)

// Creating a statistic
func TestIntegrationCreateStat(t *testing.T) {
	inputStat := &stat_configuration.CreateStatParams{
		Body:      nil,
		Namespace: "",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := statConfigurationService.CreateStat(inputStat)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Deleting a statistic
func TestIntegrationDeleteStat(t *testing.T) {
	inputStat := &stat_configuration.DeleteStatParams{
		Namespace: "",
		StatCode:  "",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := statConfigurationService.DeleteStat(inputStat)

	assert.Nil(t, err, "err should be nil")
}

// Getting a statistic by its Stat Code
func TestIntegrationGetStat(t *testing.T) {
	inputStat := &stat_configuration.GetStatParams{
		Namespace: "",
		StatCode:  "",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := statConfigurationService.GetStat(inputStat)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Getting all statistics
func TestIntegrationGetStats(t *testing.T) {
	inputStat := &stat_configuration.GetStatsParams{
		Limit:     nil,
		Namespace: "",
		Offset:    nil,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := statConfigurationService.GetStats(inputStat)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Querying statistics by keyword
func TestIntegrationQueryStats(t *testing.T) {
	inputStat := &stat_configuration.QueryStatsParams{
		Limit:     nil,
		Namespace: "",
		Offset:    nil,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := statConfigurationService.QueryStats(inputStat)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating a statistic
func TestIntegrationUpdateStat(t *testing.T) {
	bodyStatUpdate := &socialclientmodels.StatUpdate{
		Description: "",
		Name:        "",
		Tags:        nil,
	}
	inputStat := &stat_configuration.UpdateStatParams{
		Body:      bodyStatUpdate,
		Namespace: "",
		StatCode:  "",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := statConfigurationService.UpdateStat(inputStat)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

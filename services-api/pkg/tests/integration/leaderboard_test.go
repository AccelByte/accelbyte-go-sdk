// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	leaderboardConfigurationService = &leaderboard.LeaderboardConfigurationService{
		Client:          factory.NewLeaderboardClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
)

// Creating a leaderboard
func TestIntegrationCreateLeaderboardConfigurationAdminV1(t *testing.T) {
	nameLeaderboard := "test"
	time := "12:00"
	date := int64(1)
	daily := &leaderboardclientmodels.ModelsDailyConfig{
		ResetTime: &time,
	}
	descending := false
	iconURL := ""
	leaderboardCode := "testgo"
	monthly := &leaderboardclientmodels.ModelsMonthlyConfig{
		ResetTime: &time,
		ResetDate: &date,
	}
	seasonPeriod := int32(12)
	statCodeLeaderboard := "testgo"
	weekly := &leaderboardclientmodels.ModelsWeeklyConfig{
		ResetTime: &time,
		ResetDay:  &date,
	}
	startTime := "2022-07-22T00:00:00Z"
	bodyReq := &leaderboardclientmodels.ModelsLeaderboardConfigReq{
		Daily:           daily,
		Descending:      &descending,
		IconURL:         &iconURL,
		LeaderboardCode: &leaderboardCode,
		Monthly:         monthly,
		Name:            &nameLeaderboard,
		SeasonPeriod:    &seasonPeriod,
		StartTime:       &startTime,
		StatCode:        &statCodeLeaderboard,
		Weekly:          weekly,
	}
	inputLeaderboard := &leaderboard_configuration.CreateLeaderboardConfigurationAdminV1Params{
		Body:      bodyReq,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := leaderboardConfigurationService.CreateLeaderboardConfigurationAdminV1(inputLeaderboard)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Deleting a leaderboard
func TestIntegrationDeleteLeaderboardPublicV1(t *testing.T) {
	inputLeaderboard := &leaderboard_configuration.DeleteLeaderboardConfigurationAdminV1Params{
		LeaderboardCode: "",
		Namespace:       integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := leaderboardConfigurationService.DeleteLeaderboardConfigurationAdminV1(inputLeaderboard)

	assert.Nil(t, err, "err should be nil")
}

// Getting a single leaderboard
func TestIntegrationGetSingleLeaderboardPublicV1(t *testing.T) {
	inputLeaderboard := &leaderboard_configuration.GetLeaderboardConfigurationAdminV1Params{
		LeaderboardCode: "",
		Namespace:       integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := leaderboardConfigurationService.GetLeaderboardConfigurationAdminV1(inputLeaderboard)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating a leaderboard
func TestIntegrationUpdatePatchSingleLeaderboardPublicV1(t *testing.T) {
	inputLeaderboard := &leaderboard_configuration.UpdateLeaderboardConfigurationAdminV1Params{
		Body:            nil,
		LeaderboardCode: "",
		Namespace:       integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := leaderboardConfigurationService.UpdateLeaderboardConfigurationAdminV1(inputLeaderboard)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

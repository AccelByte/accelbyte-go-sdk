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
	nameLeaderboard     = "test"
	timeLeaderboard     = "12:00"
	dateLeaderboard     = int64(1)
	descending          = false
	iconURL             = ""
	leaderboardCode     = "testgo1"
	seasonPeriod        = int32(0)
	statCodeLeaderboard = "testgo"
	startTime           = "2022-07-22T00:00:00Z"
	daily               = &leaderboardclientmodels.ModelsDailyConfig{
		ResetTime: &timeLeaderboard,
	}
	monthly = &leaderboardclientmodels.ModelsMonthlyConfig{
		ResetTime: &timeLeaderboard,
		ResetDate: &dateLeaderboard,
	}
	weekly = &leaderboardclientmodels.ModelsWeeklyConfig{
		ResetTime: &timeLeaderboard,
		ResetDay:  &dateLeaderboard,
	}
	bodyReq = &leaderboardclientmodels.ModelsLeaderboardConfigReq{
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
	bodyReqUpdate = &leaderboardclientmodels.ModelsUpdateLeaderboardConfigReq{
		Daily:        daily,
		Descending:   &descending,
		IconURL:      &iconURL,
		Monthly:      monthly,
		Name:         &nameLeaderboard,
		SeasonPeriod: &seasonPeriod,
		StartTime:    &startTime,
		StatCode:     &statCodeLeaderboard,
		Weekly:       weekly,
	}
)

// Creating a leaderboard
// todo: need to replace the leaderboardCode's name, else conflict
func TestIntegrationCreateLeaderboardConfigurationAdminV1(t *testing.T) {
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
		LeaderboardCode: leaderboardCode,
		Namespace:       integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := leaderboardConfigurationService.DeleteLeaderboardConfigurationAdminV1(inputLeaderboard)

	assert.Nil(t, err, "err should be nil")
}

// Getting a single leaderboard
func TestIntegrationGetSingleLeaderboardPublicV1(t *testing.T) {
	inputLeaderboard := &leaderboard_configuration.GetLeaderboardConfigurationAdminV1Params{
		LeaderboardCode: leaderboardCode,
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
		Body:            bodyReqUpdate,
		LeaderboardCode: leaderboardCode,
		Namespace:       integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := leaderboardConfigurationService.UpdateLeaderboardConfigurationAdminV1(inputLeaderboard)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

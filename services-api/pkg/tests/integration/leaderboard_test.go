// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"math/rand"
	"testing"
	"time"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

const letterBytes = "abcdefghijklmnopqrstuvwxyz1234567890"

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
	leaderboardCode     string
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

func TestIntegrationCreateLeaderboardConfigurationAdminV1(t *testing.T) {
	Init()
	rand.Seed(time.Now().UnixNano())
	randomString := RandStringBytes(5)
	leaderboardCode = randomString

	// Creating a leaderboard
	inputCreate := &leaderboard_configuration.CreateLeaderboardConfigurationAdminV1Params{
		Body:      bodyReq,
		Namespace: integration.NamespaceTest,
	}
	created, errCreate := leaderboardConfigurationService.CreateLeaderboardConfigurationAdminV1Short(inputCreate, nil)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	t.Logf("Leaderboard Code: %v created", *created.LeaderboardCode)

	// Getting a single leaderboard
	inputGet := &leaderboard_configuration.GetLeaderboardConfigurationAdminV1Params{
		LeaderboardCode: leaderboardCode,
		Namespace:       integration.NamespaceTest,
	}
	get, errGet := leaderboardConfigurationService.GetLeaderboardConfigurationAdminV1Short(inputGet, nil)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	t.Logf("Leaderboard Code: %v accuired", *created.LeaderboardCode)

	// Updating a leaderboard
	inputUpdate := &leaderboard_configuration.UpdateLeaderboardConfigurationAdminV1Params{
		Body:            bodyReqUpdate,
		LeaderboardCode: leaderboardCode,
		Namespace:       integration.NamespaceTest,
	}
	updated, errUpdate := leaderboardConfigurationService.UpdateLeaderboardConfigurationAdminV1Short(inputUpdate, nil)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	t.Logf("Leaderboard Code: %v updated", *created.LeaderboardCode)

	// Deleting a leaderboard
	inputLeaderboard := &leaderboard_configuration.DeleteLeaderboardConfigurationAdminV1Params{
		LeaderboardCode: leaderboardCode,
		Namespace:       integration.NamespaceTest,
	}
	errDelete := leaderboardConfigurationService.DeleteLeaderboardConfigurationAdminV1Short(inputLeaderboard, nil)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	t.Logf("Leaderboard Code: %v deleted", *created.LeaderboardCode)

	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "response should not be nil")
	assert.Nil(t, errUpdate, "err should be nil")
	assert.NotNil(t, updated, "response should not be nil")
	assert.Nil(t, errDelete, "err should be nil")
}

func RandStringBytes(n int) string {
	b := make([]byte, n)
	for i := range b {
		b[i] = letterBytes[rand.Intn(len(letterBytes))]
	}

	return string(b)
}

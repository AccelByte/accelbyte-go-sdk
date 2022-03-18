// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	achievementsService = &achievement.AchievementsService{
		Client:          factory.NewAchievementClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	bodyAchievement = &achievementclientmodels.ModelsAchievementRequest{
		AchievementCode: &achievementCode,
		DefaultLanguage: &defaultLanguage,
		Description:     description,
		GoalValue:       &goalValue,
		Hidden:          &hidden,
		Incremental:     &incremental,
		LockedIcons:     lockedIcons,
		Name:            name,
		StatCode:        &statCode,
		Tags:            tags,
		UnlockedIcons:   unlockedIcons,
	}
	achievementCode = "CODE"
	defaultLanguage = "EN"
	description     = make(map[string]string)
	goalValue       = float64(1)
	hidden          = false
	incremental     = false
	lockedIcons     []*achievementclientmodels.ModelsIcon
	name            = make(map[string]string)
	statCode        = "STAT_CODE"
	tags            []string
	unlockedIcons   []*achievementclientmodels.ModelsIcon
)

// Deleting an achievement
func TestIntegrationAdminDeleteNewAchievement(t *testing.T) {
	input := &achievements.AdminDeleteAchievementParams{
		AchievementCode: achievementCode,
		Namespace:       integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := achievementsService.AdminDeleteAchievement(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	inputGet := &achievements.AdminGetAchievementParams{
		AchievementCode: achievementCode,
		Namespace:       integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	_, err = achievementsService.AdminGetAchievement(inputGet)
	assert.NotNil(t, err, "response should not be nil")
}

// Creating an achievement
func TestIntegrationAdminCreateNewAchievement(t *testing.T) {
	description["EN"] = "Description"
	name["EN"] = "Name"
	tags = append(tags, "TAG")
	input := &achievements.AdminCreateNewAchievementParams{
		Body:      bodyAchievement,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := achievementsService.AdminCreateNewAchievement(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	inputGet := &achievements.AdminGetAchievementParams{
		AchievementCode: achievementCode,
		Namespace:       integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	expected, err := achievementsService.AdminGetAchievement(inputGet)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
	assert.Equal(t, expected, ok, "the response have different values")
}

// Getting all achievements
func TestIntegrationAdminListAchievements(t *testing.T) {
	achievementCode = "CODE2"
	description["EN"] = "Description"
	name["EN"] = "Name"
	tags = append(tags, "TAG")
	input := &achievements.AdminCreateNewAchievementParams{
		Body:      bodyAchievement,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	_, err := achievementsService.AdminCreateNewAchievement(input)
	assert.Nil(t, err, "err should be nil")

	inputGet := &achievements.AdminListAchievementsParams{
		Limit:     nil,
		Namespace: integration.Namespace,
		Offset:    nil,
		SortBy:    nil,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	expected, err := achievementsService.AdminListAchievements(inputGet)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}

// Updating an achievement
func TestIntegrationUpdateNewAchievement(t *testing.T) {
	description["EN"] = "Description"
	name["EN"] = "Name"
	tags = append(tags, "TAG")
	input := &achievements.AdminCreateNewAchievementParams{
		Body:      bodyAchievement,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := achievementsService.AdminCreateNewAchievement(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	name["EN"] = "Name Update"
	bodyUpdate := &achievementclientmodels.ModelsAchievementUpdateRequest{
		DefaultLanguage: &defaultLanguage,
		Description:     description,
		GoalValue:       &goalValue,
		Hidden:          &hidden,
		Incremental:     &incremental,
		LockedIcons:     lockedIcons,
		Name:            name,
		StatCode:        &statCode,
		Tags:            tags,
		UnlockedIcons:   unlockedIcons,
	}
	inputGet := &achievements.AdminUpdateAchievementParams{
		AchievementCode: achievementCode,
		Body:            bodyUpdate,
		Namespace:       integration.Namespace,
	}
	expected, err := achievementsService.AdminUpdateAchievement(inputGet)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
	assert.Equal(t, expected, ok, "the response have different values")
}

// Retrieve an Achievement by its code
func TestIntegrationGetAchievement(t *testing.T) {
	description["EN"] = "Description"
	name["EN"] = "Name"
	tags = append(tags, "TAG")
	input := &achievements.AdminCreateNewAchievementParams{
		Body:      bodyAchievement,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	_, err := achievementsService.AdminCreateNewAchievement(input)
	assert.Nil(t, err, "err should be nil")

	inputGet := &achievements.AdminGetAchievementParams{
		AchievementCode: achievementCode,
		Namespace:       integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	expected, err := achievementsService.AdminGetAchievement(inputGet)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}

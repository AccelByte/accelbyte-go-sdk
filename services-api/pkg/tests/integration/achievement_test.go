// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

//lint:ignore SA1019 Ignore the deprecation warnings

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
	achievementCode = "GOLANG"
	defaultLanguage = "EN"
	description     = make(map[string]string)
	goalValue       = float64(1)
	hidden          = false
	incremental     = false
	lockedIcons     []*achievementclientmodels.ModelsIcon
	name            = make(map[string]string)
	statCode        = "STAT_CODE_GO"
	tags            []string
	unlockedIcons   []*achievementclientmodels.ModelsIcon
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
	bodyAchievementUpdate = &achievementclientmodels.ModelsAchievementUpdateRequest{
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
)

func TestIntegrationAchievement(t *testing.T) {
	t.Parallel()
	Init()

	description["EN"] = "Description"
	name["EN"] = "Name"
	tags = append(tags, "TAG")

	// Creating an achievement
	inputCreate := &achievements.AdminCreateNewAchievementParams{
		Body:      bodyAchievement,
		Namespace: integration.NamespaceTest,
	}
	created, errCreate := achievementsService.AdminCreateNewAchievement(inputCreate)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	t.Logf("AchievementCode: %v created", created.AchievementCode)

	// Retrieve an Achievement by its code
	inputGet := &achievements.AdminGetAchievementParams{
		AchievementCode: achievementCode,
		Namespace:       integration.NamespaceTest,
	}
	get, errGet := achievementsService.AdminGetAchievement(inputGet)

	// Updating an achievement
	inputUpdate := &achievements.AdminUpdateAchievementParams{
		AchievementCode: achievementCode,
		Body:            bodyAchievementUpdate,
		Namespace:       integration.NamespaceTest,
	}
	updated, errUpdate := achievementsService.AdminUpdateAchievement(inputUpdate)
	t.Logf("AchievementCode: %v updated", created.AchievementCode)

	// Getting all achievements
	inputGetAll := &achievements.AdminListAchievementsParams{
		Limit:     nil,
		Namespace: integration.NamespaceTest,
		Offset:    nil,
		SortBy:    nil,
	}
	getAll, errGetAll := achievementsService.AdminListAchievements(inputGetAll)

	// Deleting an achievement
	inputDelete := &achievements.AdminDeleteAchievementParams{
		AchievementCode: achievementCode,
		Namespace:       integration.NamespaceTest,
	}
	errDelete := achievementsService.AdminDeleteAchievement(inputDelete)
	t.Logf("AchievementCode: %v deleted", created.AchievementCode)

	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "response should not be nil")
	assert.Nil(t, errUpdate, "err should be nil")
	assert.NotNil(t, updated, "response should not be nil")
	assert.Nil(t, errGetAll, "err should be nil")
	assert.NotNil(t, getAll, "response should not be nil")
	assert.Nil(t, errDelete, "err should be nil")
}

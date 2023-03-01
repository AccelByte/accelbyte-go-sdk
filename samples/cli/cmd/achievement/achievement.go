// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievement

import (
	"github.com/AccelByte/sample-apps/cmd/achievement/achievements"
	"github.com/AccelByte/sample-apps/cmd/achievement/anonymization"
	"github.com/AccelByte/sample-apps/cmd/achievement/globalAchievements"
	"github.com/AccelByte/sample-apps/cmd/achievement/tags"
	"github.com/AccelByte/sample-apps/cmd/achievement/userAchievements"
	"github.com/spf13/cobra"
)

// AchievementCmd represents the service's child command
var AchievementCmd = &cobra.Command{
	Use:   "Achievement",
	Short: "Achievement to get all the commands",
}

func init() {
	AchievementCmd.AddCommand(achievements.AdminListAchievementsCmd)
	AchievementCmd.AddCommand(achievements.AdminCreateNewAchievementCmd)
	AchievementCmd.AddCommand(achievements.ExportAchievementsCmd)
	AchievementCmd.AddCommand(achievements.ImportAchievementsCmd)
	AchievementCmd.AddCommand(achievements.AdminGetAchievementCmd)
	AchievementCmd.AddCommand(achievements.AdminUpdateAchievementCmd)
	AchievementCmd.AddCommand(achievements.AdminDeleteAchievementCmd)
	AchievementCmd.AddCommand(achievements.AdminUpdateAchievementListOrderCmd)
	AchievementCmd.AddCommand(globalAchievements.AdminListGlobalAchievementsCmd)
	AchievementCmd.AddCommand(globalAchievements.AdminListGlobalAchievementContributorsCmd)
	AchievementCmd.AddCommand(globalAchievements.ResetGlobalAchievementCmd)
	AchievementCmd.AddCommand(tags.AdminListTagsCmd)
	AchievementCmd.AddCommand(userAchievements.AdminListUserAchievementsCmd)
	AchievementCmd.AddCommand(userAchievements.AdminResetAchievementCmd)
	AchievementCmd.AddCommand(userAchievements.AdminUnlockAchievementCmd)
	AchievementCmd.AddCommand(anonymization.AdminAnonymizeUserAchievementCmd)
	AchievementCmd.AddCommand(globalAchievements.AdminListUserContributionsCmd)
	AchievementCmd.AddCommand(achievements.PublicListAchievementsCmd)
	AchievementCmd.AddCommand(achievements.PublicGetAchievementCmd)
	AchievementCmd.AddCommand(globalAchievements.PublicListGlobalAchievementsCmd)
	AchievementCmd.AddCommand(globalAchievements.ListGlobalAchievementContributorsCmd)
	AchievementCmd.AddCommand(tags.PublicListTagsCmd)
	AchievementCmd.AddCommand(userAchievements.PublicListUserAchievementsCmd)
	AchievementCmd.AddCommand(userAchievements.PublicUnlockAchievementCmd)
	AchievementCmd.AddCommand(globalAchievements.ListUserContributionsCmd)
	AchievementCmd.AddCommand(globalAchievements.ClaimGlobalAchievementRewardCmd)
}

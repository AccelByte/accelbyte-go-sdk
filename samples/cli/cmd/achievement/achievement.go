// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package achievement

import (
	"github.com/AccelByte/sample-apps/cmd/achievement/achievements"
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
	AchievementCmd.AddCommand(achievements.AdminListUserAchievementsCmd)
	AchievementCmd.AddCommand(achievements.AdminUnlockAchievementCmd)
	AchievementCmd.AddCommand(achievements.PublicListAchievementsCmd)
	AchievementCmd.AddCommand(achievements.PublicGetAchievementCmd)
	AchievementCmd.AddCommand(achievements.PublicListUserAchievementsCmd)
	AchievementCmd.AddCommand(achievements.PublicUnlockAchievementCmd)
}

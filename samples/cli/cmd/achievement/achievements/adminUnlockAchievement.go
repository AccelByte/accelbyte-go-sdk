// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminUnlockAchievementCmd represents the adminUnlockAchievement command
var adminUnlockAchievementCmd = &cobra.Command{
	Use:   "adminUnlockAchievement",
	Short: "Admin unlock achievement",
	Long:  `Admin unlock achievement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		achievementCode, _ := cmd.Flags().GetString("achievementCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &achievements.AdminUnlockAchievementParams{
			AchievementCode: achievementCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := achievementsService.AdminUnlockAchievement(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUnlockAchievementCmd)
	adminUnlockAchievementCmd.Flags().StringP("achievementCode", "a", " ", "Achievement code")
	_ = adminUnlockAchievementCmd.MarkFlagRequired("achievementCode")
	adminUnlockAchievementCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminUnlockAchievementCmd.MarkFlagRequired("namespace")
	adminUnlockAchievementCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminUnlockAchievementCmd.MarkFlagRequired("userId")
}

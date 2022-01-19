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

// adminDeleteAchievementCmd represents the adminDeleteAchievement command
var adminDeleteAchievementCmd = &cobra.Command{
	Use:   "adminDeleteAchievement",
	Short: "Admin delete achievement",
	Long:  `Admin delete achievement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		achievementCode, _ := cmd.Flags().GetString("achievementCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &achievements.AdminDeleteAchievementParams{
			AchievementCode: achievementCode,
			Namespace:       namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := achievementsService.AdminDeleteAchievement(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDeleteAchievementCmd)
	adminDeleteAchievementCmd.Flags().StringP("achievementCode", "a", " ", "Achievement code")
	_ = adminDeleteAchievementCmd.MarkFlagRequired("achievementCode")
	adminDeleteAchievementCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminDeleteAchievementCmd.MarkFlagRequired("namespace")
}

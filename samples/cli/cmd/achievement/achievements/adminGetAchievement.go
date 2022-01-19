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

// adminGetAchievementCmd represents the adminGetAchievement command
var adminGetAchievementCmd = &cobra.Command{
	Use:   "adminGetAchievement",
	Short: "Admin get achievement",
	Long:  `Admin get achievement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		achievementCode, _ := cmd.Flags().GetString("achievementCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &achievements.AdminGetAchievementParams{
			AchievementCode: achievementCode,
			Namespace:       namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := achievementsService.AdminGetAchievement(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetAchievementCmd)
	adminGetAchievementCmd.Flags().StringP("achievementCode", "a", " ", "Achievement code")
	_ = adminGetAchievementCmd.MarkFlagRequired("achievementCode")
	adminGetAchievementCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetAchievementCmd.MarkFlagRequired("namespace")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userAchievements

import (
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/user_achievements"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminResetAchievementCmd represents the AdminResetAchievement command
var AdminResetAchievementCmd = &cobra.Command{
	Use:   "adminResetAchievement",
	Short: "Admin reset achievement",
	Long:  `Admin reset achievement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userAchievementsService := &achievement.UserAchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		achievementCode, _ := cmd.Flags().GetString("achievementCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_achievements.AdminResetAchievementParams{
			AchievementCode: achievementCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		errInput := userAchievementsService.AdminResetAchievementShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminResetAchievementCmd.Flags().String("achievementCode", "", "Achievement code")
	_ = AdminResetAchievementCmd.MarkFlagRequired("achievementCode")
	AdminResetAchievementCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminResetAchievementCmd.MarkFlagRequired("namespace")
	AdminResetAchievementCmd.Flags().String("userId", "", "User id")
	_ = AdminResetAchievementCmd.MarkFlagRequired("userId")
}

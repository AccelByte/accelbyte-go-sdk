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

// PublicUnlockAchievementCmd represents the PublicUnlockAchievement command
var PublicUnlockAchievementCmd = &cobra.Command{
	Use:   "publicUnlockAchievement",
	Short: "Public unlock achievement",
	Long:  `Public unlock achievement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userAchievementsService := &achievement.UserAchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		achievementCode, _ := cmd.Flags().GetString("achievementCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_achievements.PublicUnlockAchievementParams{
			AchievementCode: achievementCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		errInput := userAchievementsService.PublicUnlockAchievementShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicUnlockAchievementCmd.Flags().String("achievementCode", "", "Achievement code")
	_ = PublicUnlockAchievementCmd.MarkFlagRequired("achievementCode")
	PublicUnlockAchievementCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUnlockAchievementCmd.MarkFlagRequired("namespace")
	PublicUnlockAchievementCmd.Flags().String("userId", "", "User id")
	_ = PublicUnlockAchievementCmd.MarkFlagRequired("userId")
}

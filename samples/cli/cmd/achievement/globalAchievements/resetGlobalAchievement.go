// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package globalAchievements

import (
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/global_achievements"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ResetGlobalAchievementCmd represents the ResetGlobalAchievement command
var ResetGlobalAchievementCmd = &cobra.Command{
	Use:   "resetGlobalAchievement",
	Short: "Reset global achievement",
	Long:  `Reset global achievement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		globalAchievementsService := &achievement.GlobalAchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		achievementCode, _ := cmd.Flags().GetString("achievementCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &global_achievements.ResetGlobalAchievementParams{
			AchievementCode: achievementCode,
			Namespace:       namespace,
		}
		errNoContent := globalAchievementsService.ResetGlobalAchievementShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	ResetGlobalAchievementCmd.Flags().String("achievementCode", "", "Achievement code")
	_ = ResetGlobalAchievementCmd.MarkFlagRequired("achievementCode")
	ResetGlobalAchievementCmd.Flags().String("namespace", "", "Namespace")
	_ = ResetGlobalAchievementCmd.MarkFlagRequired("namespace")
}

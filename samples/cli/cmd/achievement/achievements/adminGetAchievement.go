// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievements

import (
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetAchievementCmd represents the AdminGetAchievement command
var AdminGetAchievementCmd = &cobra.Command{
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
		ok, errOK := achievementsService.AdminGetAchievementShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetAchievementCmd.Flags().String("achievementCode", "", "Achievement code")
	_ = AdminGetAchievementCmd.MarkFlagRequired("achievementCode")
	AdminGetAchievementCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetAchievementCmd.MarkFlagRequired("namespace")
}

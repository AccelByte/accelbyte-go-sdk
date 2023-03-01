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

// PublicGetAchievementCmd represents the PublicGetAchievement command
var PublicGetAchievementCmd = &cobra.Command{
	Use:   "publicGetAchievement",
	Short: "Public get achievement",
	Long:  `Public get achievement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		achievementCode, _ := cmd.Flags().GetString("achievementCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		language, _ := cmd.Flags().GetString("language")
		input := &achievements.PublicGetAchievementParams{
			AchievementCode: achievementCode,
			Namespace:       namespace,
			Language:        language,
		}
		ok, errOK := achievementsService.PublicGetAchievementShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetAchievementCmd.Flags().String("achievementCode", "", "Achievement code")
	_ = PublicGetAchievementCmd.MarkFlagRequired("achievementCode")
	PublicGetAchievementCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetAchievementCmd.MarkFlagRequired("namespace")
	PublicGetAchievementCmd.Flags().String("language", "", "Language")
	_ = PublicGetAchievementCmd.MarkFlagRequired("language")
}

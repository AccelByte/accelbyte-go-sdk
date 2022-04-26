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
		ok, err := achievementsService.PublicGetAchievementShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	PublicGetAchievementCmd.Flags().StringP("achievementCode", "", "", "Achievement code")
	_ = PublicGetAchievementCmd.MarkFlagRequired("achievementCode")
	PublicGetAchievementCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetAchievementCmd.MarkFlagRequired("namespace")
	PublicGetAchievementCmd.Flags().StringP("language", "", "", "Language")
	_ = PublicGetAchievementCmd.MarkFlagRequired("language")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package achievements

import (
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteAchievementCmd represents the AdminDeleteAchievement command
var AdminDeleteAchievementCmd = &cobra.Command{
	Use:   "AdminDeleteAchievement",
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
	AdminDeleteAchievementCmd.Flags().StringP("achievementCode", "ae", " ", "Achievement code")
	_ = AdminDeleteAchievementCmd.MarkFlagRequired("achievementCode")
	AdminDeleteAchievementCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminDeleteAchievementCmd.MarkFlagRequired("namespace")
}

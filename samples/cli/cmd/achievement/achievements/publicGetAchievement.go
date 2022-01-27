// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package achievements

import (
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetAchievementCmd represents the publicGetAchievement command
var publicGetAchievementCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := achievementsService.PublicGetAchievement(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetAchievementCmd)
	publicGetAchievementCmd.Flags().StringP("achievementCode", "ae", " ", "Achievement code")
	_ = publicGetAchievementCmd.MarkFlagRequired("achievementCode")
	publicGetAchievementCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetAchievementCmd.MarkFlagRequired("namespace")
	publicGetAchievementCmd.Flags().StringP("language", "le", " ", "Language")
	_ = publicGetAchievementCmd.MarkFlagRequired("language")
}

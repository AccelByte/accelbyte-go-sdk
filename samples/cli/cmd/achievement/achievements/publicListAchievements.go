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

// PublicListAchievementsCmd represents the PublicListAchievements command
var PublicListAchievementsCmd = &cobra.Command{
	Use:   "publicListAchievements",
	Short: "Public list achievements",
	Long:  `Public list achievements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		language, _ := cmd.Flags().GetString("language")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &achievements.PublicListAchievementsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
			Language:  language,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := achievementsService.PublicListAchievements(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicListAchievementsCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = PublicListAchievementsCmd.MarkFlagRequired("namespace")
	PublicListAchievementsCmd.Flags().Int64P("limit", "", 20, "Limit")
	PublicListAchievementsCmd.Flags().Int64P("offset", "", 0, "Offset")
	PublicListAchievementsCmd.Flags().StringP("sortBy", "", " ", "Sort by")
	PublicListAchievementsCmd.Flags().StringP("language", "", " ", "Language")
	_ = PublicListAchievementsCmd.MarkFlagRequired("language")
}

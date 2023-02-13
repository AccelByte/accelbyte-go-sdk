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

// PublicListGlobalAchievementsCmd represents the PublicListGlobalAchievements command
var PublicListGlobalAchievementsCmd = &cobra.Command{
	Use:   "publicListGlobalAchievements",
	Short: "Public list global achievements",
	Long:  `Public list global achievements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		globalAchievementsService := &achievement.GlobalAchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		achievementCode, _ := cmd.Flags().GetString("achievementCode")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		status, _ := cmd.Flags().GetString("status")
		input := &global_achievements.PublicListGlobalAchievementsParams{
			Namespace:       namespace,
			AchievementCode: &achievementCode,
			Limit:           &limit,
			Offset:          &offset,
			SortBy:          &sortBy,
			Status:          &status,
		}
		ok, err := globalAchievementsService.PublicListGlobalAchievementsShort(input)
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
	PublicListGlobalAchievementsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListGlobalAchievementsCmd.MarkFlagRequired("namespace")
	PublicListGlobalAchievementsCmd.Flags().String("achievementCode", "", "Achievement code")
	PublicListGlobalAchievementsCmd.Flags().Int64("limit", 20, "Limit")
	PublicListGlobalAchievementsCmd.Flags().Int64("offset", 0, "Offset")
	PublicListGlobalAchievementsCmd.Flags().String("sortBy", "", "Sort by")
	PublicListGlobalAchievementsCmd.Flags().String("status", "", "Status")
}

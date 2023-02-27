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

// AdminListGlobalAchievementContributorsCmd represents the AdminListGlobalAchievementContributors command
var AdminListGlobalAchievementContributorsCmd = &cobra.Command{
	Use:   "adminListGlobalAchievementContributors",
	Short: "Admin list global achievement contributors",
	Long:  `Admin list global achievement contributors`,
	RunE: func(cmd *cobra.Command, args []string) error {
		globalAchievementsService := &achievement.GlobalAchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		achievementCode, _ := cmd.Flags().GetString("achievementCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &global_achievements.AdminListGlobalAchievementContributorsParams{
			AchievementCode: achievementCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
			SortBy:          &sortBy,
		}
		ok, err := globalAchievementsService.AdminListGlobalAchievementContributorsShort(input)
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
	AdminListGlobalAchievementContributorsCmd.Flags().String("achievementCode", "", "Achievement code")
	_ = AdminListGlobalAchievementContributorsCmd.MarkFlagRequired("achievementCode")
	AdminListGlobalAchievementContributorsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListGlobalAchievementContributorsCmd.MarkFlagRequired("namespace")
	AdminListGlobalAchievementContributorsCmd.Flags().Int64("limit", 20, "Limit")
	AdminListGlobalAchievementContributorsCmd.Flags().Int64("offset", 0, "Offset")
	AdminListGlobalAchievementContributorsCmd.Flags().String("sortBy", "", "Sort by")
}

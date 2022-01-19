// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminListAchievementsCmd represents the adminListAchievements command
var adminListAchievementsCmd = &cobra.Command{
	Use:   "adminListAchievements",
	Short: "Admin list achievements",
	Long:  `Admin list achievements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &achievements.AdminListAchievementsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := achievementsService.AdminListAchievements(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminListAchievementsCmd)
	adminListAchievementsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminListAchievementsCmd.MarkFlagRequired("namespace")
	adminListAchievementsCmd.Flags().Int64P("limit", "l", 20, "Limit")
	adminListAchievementsCmd.Flags().Int64P("offset", "o", 0, "Offset")
	adminListAchievementsCmd.Flags().StringP("sortBy", "s", " ", "Sort by")
}

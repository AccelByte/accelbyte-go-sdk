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

// adminListUserAchievementsCmd represents the adminListUserAchievements command
var adminListUserAchievementsCmd = &cobra.Command{
	Use:   "adminListUserAchievements",
	Short: "Admin list user achievements",
	Long:  `Admin list user achievements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		preferUnlocked, _ := cmd.Flags().GetBool("preferUnlocked")
		input := &achievements.AdminListUserAchievementsParams{
			Namespace:      namespace,
			UserID:         userId,
			Limit:          &limit,
			Offset:         &offset,
			PreferUnlocked: &preferUnlocked,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := achievementsService.AdminListUserAchievements(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminListUserAchievementsCmd)
	adminListUserAchievementsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminListUserAchievementsCmd.MarkFlagRequired("namespace")
	adminListUserAchievementsCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminListUserAchievementsCmd.MarkFlagRequired("userId")
	adminListUserAchievementsCmd.Flags().Int64P("limit", "lt", 20, "Limit")
	adminListUserAchievementsCmd.Flags().Int64P("offset", "ot", 0, "Offset")
	adminListUserAchievementsCmd.Flags().BoolP("preferUnlocked", "pd", false, "Prefer unlocked")
}

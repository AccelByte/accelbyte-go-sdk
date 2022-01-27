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

// publicListUserAchievementsCmd represents the publicListUserAchievements command
var publicListUserAchievementsCmd = &cobra.Command{
	Use:   "publicListUserAchievements",
	Short: "Public list user achievements",
	Long:  `Public list user achievements`,
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
		input := &achievements.PublicListUserAchievementsParams{
			Namespace:      namespace,
			UserID:         userId,
			Limit:          &limit,
			Offset:         &offset,
			PreferUnlocked: &preferUnlocked,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := achievementsService.PublicListUserAchievements(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicListUserAchievementsCmd)
	publicListUserAchievementsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicListUserAchievementsCmd.MarkFlagRequired("namespace")
	publicListUserAchievementsCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicListUserAchievementsCmd.MarkFlagRequired("userId")
	publicListUserAchievementsCmd.Flags().Int64P("limit", "lt", 20, "Limit")
	publicListUserAchievementsCmd.Flags().Int64P("offset", "ot", 0, "Offset")
	publicListUserAchievementsCmd.Flags().BoolP("preferUnlocked", "pd", false, "Prefer unlocked")
}

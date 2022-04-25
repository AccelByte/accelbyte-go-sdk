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

// AdminListUserAchievementsCmd represents the AdminListUserAchievements command
var AdminListUserAchievementsCmd = &cobra.Command{
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
		ok, err := achievementsService.AdminListUserAchievementsShort(input, nil)
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
	AdminListUserAchievementsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminListUserAchievementsCmd.MarkFlagRequired("namespace")
	AdminListUserAchievementsCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminListUserAchievementsCmd.MarkFlagRequired("userId")
	AdminListUserAchievementsCmd.Flags().Int64P("limit", "", 20, "Limit")
	AdminListUserAchievementsCmd.Flags().Int64P("offset", "", 0, "Offset")
	AdminListUserAchievementsCmd.Flags().BoolP("preferUnlocked", "", false, "Prefer unlocked")
}

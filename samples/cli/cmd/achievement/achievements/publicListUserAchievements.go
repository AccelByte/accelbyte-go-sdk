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

// PublicListUserAchievementsCmd represents the PublicListUserAchievements command
var PublicListUserAchievementsCmd = &cobra.Command{
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
		ok, err := achievementsService.PublicListUserAchievementsShort(input)
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
	PublicListUserAchievementsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListUserAchievementsCmd.MarkFlagRequired("namespace")
	PublicListUserAchievementsCmd.Flags().String("userId", "", "User id")
	_ = PublicListUserAchievementsCmd.MarkFlagRequired("userId")
	PublicListUserAchievementsCmd.Flags().Int64("limit", 20, "Limit")
	PublicListUserAchievementsCmd.Flags().Int64("offset", 0, "Offset")
	PublicListUserAchievementsCmd.Flags().Bool("preferUnlocked", false, "Prefer unlocked")
}

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

// ClaimGlobalAchievementRewardCmd represents the ClaimGlobalAchievementReward command
var ClaimGlobalAchievementRewardCmd = &cobra.Command{
	Use:   "claimGlobalAchievementReward",
	Short: "Claim global achievement reward",
	Long:  `Claim global achievement reward`,
	RunE: func(cmd *cobra.Command, args []string) error {
		globalAchievementsService := &achievement.GlobalAchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		achievementCode, _ := cmd.Flags().GetString("achievementCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &global_achievements.ClaimGlobalAchievementRewardParams{
			AchievementCode: achievementCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		errInput := globalAchievementsService.ClaimGlobalAchievementRewardShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	ClaimGlobalAchievementRewardCmd.Flags().String("achievementCode", "", "Achievement code")
	_ = ClaimGlobalAchievementRewardCmd.MarkFlagRequired("achievementCode")
	ClaimGlobalAchievementRewardCmd.Flags().String("namespace", "", "Namespace")
	_ = ClaimGlobalAchievementRewardCmd.MarkFlagRequired("namespace")
	ClaimGlobalAchievementRewardCmd.Flags().String("userId", "", "User id")
	_ = ClaimGlobalAchievementRewardCmd.MarkFlagRequired("userId")
}

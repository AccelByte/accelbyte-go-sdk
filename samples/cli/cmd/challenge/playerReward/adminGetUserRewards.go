// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package playerReward

import (
	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/player_reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetUserRewardsCmd represents the AdminGetUserRewards command
var AdminGetUserRewardsCmd = &cobra.Command{
	Use:   "adminGetUserRewards",
	Short: "Admin get user rewards",
	Long:  `Admin get user rewards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerRewardService := &challenge.PlayerRewardService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		goalProgressionId, _ := cmd.Flags().GetString("goalProgressionId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		status, _ := cmd.Flags().GetString("status")
		input := &player_reward.AdminGetUserRewardsParams{
			Namespace:         namespace,
			UserID:            userId,
			ChallengeCode:     &challengeCode,
			GoalProgressionID: &goalProgressionId,
			Limit:             &limit,
			Offset:            &offset,
			SortBy:            &sortBy,
			Status:            &status,
		}
		ok, errOK := playerRewardService.AdminGetUserRewardsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserRewardsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserRewardsCmd.MarkFlagRequired("namespace")
	AdminGetUserRewardsCmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserRewardsCmd.MarkFlagRequired("userId")
	AdminGetUserRewardsCmd.Flags().String("challengeCode", "", "Challenge code")
	AdminGetUserRewardsCmd.Flags().String("goalProgressionId", "", "Goal progression id")
	AdminGetUserRewardsCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetUserRewardsCmd.Flags().Int64("offset", 0, "Offset")
	AdminGetUserRewardsCmd.Flags().String("sortBy", "", "Sort by")
	AdminGetUserRewardsCmd.Flags().String("status", "", "Status")
}

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

// PublicGetUserRewardsCmd represents the PublicGetUserRewards command
var PublicGetUserRewardsCmd = &cobra.Command{
	Use:   "publicGetUserRewards",
	Short: "Public get user rewards",
	Long:  `Public get user rewards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerRewardService := &challenge.PlayerRewardService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		status, _ := cmd.Flags().GetString("status")
		input := &player_reward.PublicGetUserRewardsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
			Status:    &status,
		}
		ok, errOK := playerRewardService.PublicGetUserRewardsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserRewardsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserRewardsCmd.MarkFlagRequired("namespace")
	PublicGetUserRewardsCmd.Flags().Int64("limit", 20, "Limit")
	PublicGetUserRewardsCmd.Flags().Int64("offset", 0, "Offset")
	PublicGetUserRewardsCmd.Flags().String("sortBy", "", "Sort by")
	PublicGetUserRewardsCmd.Flags().String("status", "", "Status")
}

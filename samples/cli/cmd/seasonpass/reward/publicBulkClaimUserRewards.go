// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicBulkClaimUserRewardsCmd represents the PublicBulkClaimUserRewards command
var PublicBulkClaimUserRewardsCmd = &cobra.Command{
	Use:   "publicBulkClaimUserRewards",
	Short: "Public bulk claim user rewards",
	Long:  `Public bulk claim user rewards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &seasonpass.RewardService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &reward.PublicBulkClaimUserRewardsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := rewardService.PublicBulkClaimUserRewardsShort(input)
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
	PublicBulkClaimUserRewardsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicBulkClaimUserRewardsCmd.MarkFlagRequired("namespace")
	PublicBulkClaimUserRewardsCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicBulkClaimUserRewardsCmd.MarkFlagRequired("userId")
}

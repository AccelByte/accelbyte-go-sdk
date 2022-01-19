// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicBulkClaimUserRewardsCmd represents the publicBulkClaimUserRewards command
var publicBulkClaimUserRewardsCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rewardService.PublicBulkClaimUserRewards(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicBulkClaimUserRewardsCmd)
	publicBulkClaimUserRewardsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicBulkClaimUserRewardsCmd.MarkFlagRequired("namespace")
	publicBulkClaimUserRewardsCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicBulkClaimUserRewardsCmd.MarkFlagRequired("userId")
}

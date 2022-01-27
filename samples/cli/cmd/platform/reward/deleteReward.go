// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package reward

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteRewardCmd represents the deleteReward command
var deleteRewardCmd = &cobra.Command{
	Use:   "deleteReward",
	Short: "Delete reward",
	Long:  `Delete reward`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &platform.RewardService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		rewardId, _ := cmd.Flags().GetString("rewardId")
		input := &reward.DeleteRewardParams{
			Namespace: namespace,
			RewardID:  rewardId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rewardService.DeleteReward(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteRewardCmd)
	deleteRewardCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = deleteRewardCmd.MarkFlagRequired("namespace")
	deleteRewardCmd.Flags().StringP("rewardId", "rd", " ", "Reward id")
	_ = deleteRewardCmd.MarkFlagRequired("rewardId")
}

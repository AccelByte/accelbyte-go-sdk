// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetRewardCmd represents the GetReward command
var GetRewardCmd = &cobra.Command{
	Use:   "getReward",
	Short: "Get reward",
	Long:  `Get reward`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &platform.RewardService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		rewardId, _ := cmd.Flags().GetString("rewardId")
		input := &reward.GetRewardParams{
			Namespace: namespace,
			RewardID:  rewardId,
		}
		ok, err := rewardService.GetRewardShort(input, nil)
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
	GetRewardCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetRewardCmd.MarkFlagRequired("namespace")
	GetRewardCmd.Flags().StringP("rewardId", "", "", "Reward id")
	_ = GetRewardCmd.MarkFlagRequired("rewardId")
}

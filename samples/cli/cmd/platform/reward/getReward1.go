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

// GetReward1Cmd represents the GetReward1 command
var GetReward1Cmd = &cobra.Command{
	Use:   "getReward1",
	Short: "Get reward 1",
	Long:  `Get reward 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &platform.RewardService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		rewardId, _ := cmd.Flags().GetString("rewardId")
		input := &reward.GetReward1Params{
			Namespace: namespace,
			RewardID:  rewardId,
		}
		ok, errOK := rewardService.GetReward1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetReward1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetReward1Cmd.MarkFlagRequired("namespace")
	GetReward1Cmd.Flags().String("rewardId", "", "Reward id")
	_ = GetReward1Cmd.MarkFlagRequired("rewardId")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package reward

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetRewardByCodeCmd represents the GetRewardByCode command
var GetRewardByCodeCmd = &cobra.Command{
	Use:   "GetRewardByCode",
	Short: "Get reward by code",
	Long:  `Get reward by code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &platform.RewardService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		rewardCode, _ := cmd.Flags().GetString("rewardCode")
		input := &reward.GetRewardByCodeParams{
			Namespace:  namespace,
			RewardCode: rewardCode,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rewardService.GetRewardByCode(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetRewardByCodeCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetRewardByCodeCmd.MarkFlagRequired("namespace")
	GetRewardByCodeCmd.Flags().StringP("rewardCode", "re", " ", "Reward code")
	_ = GetRewardByCodeCmd.MarkFlagRequired("rewardCode")
}

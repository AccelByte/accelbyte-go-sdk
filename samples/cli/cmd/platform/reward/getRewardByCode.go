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

// getRewardByCodeCmd represents the getRewardByCode command
var getRewardByCodeCmd = &cobra.Command{
	Use:   "getRewardByCode",
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
	cmd.RootCmd.AddCommand(getRewardByCodeCmd)
	getRewardByCodeCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getRewardByCodeCmd.MarkFlagRequired("namespace")
	getRewardByCodeCmd.Flags().StringP("rewardCode", "re", " ", "Reward code")
	_ = getRewardByCodeCmd.MarkFlagRequired("rewardCode")
}

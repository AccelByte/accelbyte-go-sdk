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
		ok, err := rewardService.GetRewardByCodeShort(input)
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
	GetRewardByCodeCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetRewardByCodeCmd.MarkFlagRequired("namespace")
	GetRewardByCodeCmd.Flags().StringP("rewardCode", "", "", "Reward code")
	_ = GetRewardByCodeCmd.MarkFlagRequired("rewardCode")
}

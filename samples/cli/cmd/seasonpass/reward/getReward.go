// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package reward

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetRewardCmd represents the GetReward command
var GetRewardCmd = &cobra.Command{
	Use:   "GetReward",
	Short: "Get reward",
	Long:  `Get reward`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &seasonpass.RewardService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		input := &reward.GetRewardParams{
			Code:      code,
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rewardService.GetReward(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetRewardCmd.Flags().StringP("code", "ce", " ", "Code")
	_ = GetRewardCmd.MarkFlagRequired("code")
	GetRewardCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetRewardCmd.MarkFlagRequired("namespace")
	GetRewardCmd.Flags().StringP("seasonId", "sd", " ", "Season id")
	_ = GetRewardCmd.MarkFlagRequired("seasonId")
}

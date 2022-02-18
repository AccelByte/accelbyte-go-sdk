// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package reward

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteRewardCmd represents the DeleteReward command
var DeleteRewardCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	DeleteRewardCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteRewardCmd.MarkFlagRequired("namespace")
	DeleteRewardCmd.Flags().StringP("rewardId", "", "", "Reward id")
	_ = DeleteRewardCmd.MarkFlagRequired("rewardId")
}

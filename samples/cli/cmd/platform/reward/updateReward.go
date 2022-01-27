// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package reward

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateRewardCmd represents the UpdateReward command
var UpdateRewardCmd = &cobra.Command{
	Use:   "UpdateReward",
	Short: "Update reward",
	Long:  `Update reward`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &platform.RewardService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		rewardId, _ := cmd.Flags().GetString("rewardId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.RewardUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &reward.UpdateRewardParams{
			Body:      body,
			Namespace: namespace,
			RewardID:  rewardId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rewardService.UpdateReward(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	UpdateRewardCmd.Flags().StringP("body", "by", " ", "Body")
	UpdateRewardCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = UpdateRewardCmd.MarkFlagRequired("namespace")
	UpdateRewardCmd.Flags().StringP("rewardId", "rd", " ", "Reward id")
	_ = UpdateRewardCmd.MarkFlagRequired("rewardId")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package reward

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateRewardCmd represents the updateReward command
var updateRewardCmd = &cobra.Command{
	Use:   "updateReward",
	Short: "Update reward",
	Long:  `Update reward`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &seasonpass.RewardService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		bodyString := cmd.Flag("body").Value.String()
		var body *seasonpassclientmodels.RewardUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &reward.UpdateRewardParams{
			Body:      body,
			Code:      code,
			Namespace: namespace,
			SeasonID:  seasonId,
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
	cmd.RootCmd.AddCommand(updateRewardCmd)
	updateRewardCmd.Flags().StringP("body", "by", " ", "Body")
	updateRewardCmd.Flags().StringP("code", "ce", " ", "Code")
	_ = updateRewardCmd.MarkFlagRequired("code")
	updateRewardCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = updateRewardCmd.MarkFlagRequired("namespace")
	updateRewardCmd.Flags().StringP("seasonId", "sd", " ", "Season id")
	_ = updateRewardCmd.MarkFlagRequired("seasonId")
}

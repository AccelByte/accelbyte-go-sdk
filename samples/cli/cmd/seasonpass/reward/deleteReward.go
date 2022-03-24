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

// DeleteRewardCmd represents the DeleteReward command
var DeleteRewardCmd = &cobra.Command{
	Use:   "deleteReward",
	Short: "Delete reward",
	Long:  `Delete reward`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &seasonpass.RewardService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		input := &reward.DeleteRewardParams{
			Code:      code,
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		errInput := rewardService.DeleteRewardShort(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DeleteRewardCmd.Flags().StringP("code", "", "", "Code")
	_ = DeleteRewardCmd.MarkFlagRequired("code")
	DeleteRewardCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteRewardCmd.MarkFlagRequired("namespace")
	DeleteRewardCmd.Flags().StringP("seasonId", "", "", "Season id")
	_ = DeleteRewardCmd.MarkFlagRequired("seasonId")
}

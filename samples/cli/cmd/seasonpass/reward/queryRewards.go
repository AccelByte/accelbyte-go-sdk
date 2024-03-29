// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryRewardsCmd represents the QueryRewards command
var QueryRewardsCmd = &cobra.Command{
	Use:   "queryRewards",
	Short: "Query rewards",
	Long:  `Query rewards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &seasonpass.RewardService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		q, _ := cmd.Flags().GetString("q")
		input := &reward.QueryRewardsParams{
			Namespace: namespace,
			SeasonID:  seasonId,
			Q:         &q,
		}
		ok, errOK := rewardService.QueryRewardsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryRewardsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryRewardsCmd.MarkFlagRequired("namespace")
	QueryRewardsCmd.Flags().String("seasonId", "", "Season id")
	_ = QueryRewardsCmd.MarkFlagRequired("seasonId")
	QueryRewardsCmd.Flags().String("q", "", "Q")
}

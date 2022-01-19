// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// queryRewardsCmd represents the queryRewards command
var queryRewardsCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rewardService.QueryRewards(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryRewardsCmd)
	queryRewardsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryRewardsCmd.MarkFlagRequired("namespace")
	queryRewardsCmd.Flags().StringP("seasonId", "s", " ", "Season id")
	_ = queryRewardsCmd.MarkFlagRequired("seasonId")
	queryRewardsCmd.Flags().StringP("q", "q", " ", "Q")
}

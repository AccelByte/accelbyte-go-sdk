// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getAllTimeLeaderboardRankingPublicV2Cmd represents the getAllTimeLeaderboardRankingPublicV2 command
var getAllTimeLeaderboardRankingPublicV2Cmd = &cobra.Command{
	Use:   "getAllTimeLeaderboardRankingPublicV2",
	Short: "Get all time leaderboard ranking public V2",
	Long:  `Get all time leaderboard ranking public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_data.GetAllTimeLeaderboardRankingPublicV2Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardDataService.GetAllTimeLeaderboardRankingPublicV2(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getAllTimeLeaderboardRankingPublicV2Cmd)
	getAllTimeLeaderboardRankingPublicV2Cmd.Flags().StringP("leaderboardCode", "l", " ", "Leaderboard code")
	_ = getAllTimeLeaderboardRankingPublicV2Cmd.MarkFlagRequired("leaderboardCode")
	getAllTimeLeaderboardRankingPublicV2Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getAllTimeLeaderboardRankingPublicV2Cmd.MarkFlagRequired("namespace")
	getAllTimeLeaderboardRankingPublicV2Cmd.Flags().Int64P("limit", "l", 20, "Limit")
	getAllTimeLeaderboardRankingPublicV2Cmd.Flags().Int64P("offset", "o", 0, "Offset")
}

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

// getCurrentSeasonLeaderboardRankingPublicV1Cmd represents the getCurrentSeasonLeaderboardRankingPublicV1 command
var getCurrentSeasonLeaderboardRankingPublicV1Cmd = &cobra.Command{
	Use:   "getCurrentSeasonLeaderboardRankingPublicV1",
	Short: "Get current season leaderboard ranking public V1",
	Long:  `Get current season leaderboard ranking public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_data.GetCurrentSeasonLeaderboardRankingPublicV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardDataService.GetCurrentSeasonLeaderboardRankingPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getCurrentSeasonLeaderboardRankingPublicV1Cmd)
	getCurrentSeasonLeaderboardRankingPublicV1Cmd.Flags().StringP("leaderboardCode", "l", " ", "Leaderboard code")
	_ = getCurrentSeasonLeaderboardRankingPublicV1Cmd.MarkFlagRequired("leaderboardCode")
	getCurrentSeasonLeaderboardRankingPublicV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getCurrentSeasonLeaderboardRankingPublicV1Cmd.MarkFlagRequired("namespace")
	getCurrentSeasonLeaderboardRankingPublicV1Cmd.Flags().Int64P("limit", "l", 20, "Limit")
	getCurrentSeasonLeaderboardRankingPublicV1Cmd.Flags().Int64P("offset", "o", 0, "Offset")
}

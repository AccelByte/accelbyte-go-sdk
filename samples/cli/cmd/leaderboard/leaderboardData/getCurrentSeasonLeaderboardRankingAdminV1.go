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

// getCurrentSeasonLeaderboardRankingAdminV1Cmd represents the getCurrentSeasonLeaderboardRankingAdminV1 command
var getCurrentSeasonLeaderboardRankingAdminV1Cmd = &cobra.Command{
	Use:   "getCurrentSeasonLeaderboardRankingAdminV1",
	Short: "Get current season leaderboard ranking admin V1",
	Long:  `Get current season leaderboard ranking admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_data.GetCurrentSeasonLeaderboardRankingAdminV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardDataService.GetCurrentSeasonLeaderboardRankingAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getCurrentSeasonLeaderboardRankingAdminV1Cmd)
	getCurrentSeasonLeaderboardRankingAdminV1Cmd.Flags().StringP("leaderboardCode", "l", " ", "Leaderboard code")
	_ = getCurrentSeasonLeaderboardRankingAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	getCurrentSeasonLeaderboardRankingAdminV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getCurrentSeasonLeaderboardRankingAdminV1Cmd.MarkFlagRequired("namespace")
	getCurrentSeasonLeaderboardRankingAdminV1Cmd.Flags().Int64P("limit", "l", 20, "Limit")
	getCurrentSeasonLeaderboardRankingAdminV1Cmd.Flags().Int64P("offset", "o", 0, "Offset")
}

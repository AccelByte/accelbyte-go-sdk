// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package leaderboardData

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getCurrentMonthLeaderboardRankingAdminV1Cmd represents the getCurrentMonthLeaderboardRankingAdminV1 command
var getCurrentMonthLeaderboardRankingAdminV1Cmd = &cobra.Command{
	Use:   "getCurrentMonthLeaderboardRankingAdminV1",
	Short: "Get current month leaderboard ranking admin V1",
	Long:  `Get current month leaderboard ranking admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_data.GetCurrentMonthLeaderboardRankingAdminV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardDataService.GetCurrentMonthLeaderboardRankingAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getCurrentMonthLeaderboardRankingAdminV1Cmd)
	getCurrentMonthLeaderboardRankingAdminV1Cmd.Flags().StringP("leaderboardCode", "le", " ", "Leaderboard code")
	_ = getCurrentMonthLeaderboardRankingAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	getCurrentMonthLeaderboardRankingAdminV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getCurrentMonthLeaderboardRankingAdminV1Cmd.MarkFlagRequired("namespace")
	getCurrentMonthLeaderboardRankingAdminV1Cmd.Flags().Int64P("limit", "lt", 20, "Limit")
	getCurrentMonthLeaderboardRankingAdminV1Cmd.Flags().Int64P("offset", "ot", 0, "Offset")
}

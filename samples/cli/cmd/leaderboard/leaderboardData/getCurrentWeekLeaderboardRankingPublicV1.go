// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package leaderboardData

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetCurrentWeekLeaderboardRankingPublicV1Cmd represents the GetCurrentWeekLeaderboardRankingPublicV1 command
var GetCurrentWeekLeaderboardRankingPublicV1Cmd = &cobra.Command{
	Use:   "GetCurrentWeekLeaderboardRankingPublicV1",
	Short: "Get current week leaderboard ranking public V1",
	Long:  `Get current week leaderboard ranking public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_data.GetCurrentWeekLeaderboardRankingPublicV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardDataService.GetCurrentWeekLeaderboardRankingPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetCurrentWeekLeaderboardRankingPublicV1Cmd.Flags().StringP("leaderboardCode", "le", " ", "Leaderboard code")
	_ = GetCurrentWeekLeaderboardRankingPublicV1Cmd.MarkFlagRequired("leaderboardCode")
	GetCurrentWeekLeaderboardRankingPublicV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetCurrentWeekLeaderboardRankingPublicV1Cmd.MarkFlagRequired("namespace")
	GetCurrentWeekLeaderboardRankingPublicV1Cmd.Flags().Int64P("limit", "lt", 20, "Limit")
	GetCurrentWeekLeaderboardRankingPublicV1Cmd.Flags().Int64P("offset", "ot", 0, "Offset")
}

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

// GetTodayLeaderboardRankingPublicV1Cmd represents the GetTodayLeaderboardRankingPublicV1 command
var GetTodayLeaderboardRankingPublicV1Cmd = &cobra.Command{
	Use:   "getTodayLeaderboardRankingPublicV1",
	Short: "Get today leaderboard ranking public V1",
	Long:  `Get today leaderboard ranking public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_data.GetTodayLeaderboardRankingPublicV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardDataService.GetTodayLeaderboardRankingPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetTodayLeaderboardRankingPublicV1Cmd.Flags().StringP("leaderboardCode", "", "", "Leaderboard code")
	_ = GetTodayLeaderboardRankingPublicV1Cmd.MarkFlagRequired("leaderboardCode")
	GetTodayLeaderboardRankingPublicV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetTodayLeaderboardRankingPublicV1Cmd.MarkFlagRequired("namespace")
	GetTodayLeaderboardRankingPublicV1Cmd.Flags().Int64P("limit", "", 20, "Limit")
	GetTodayLeaderboardRankingPublicV1Cmd.Flags().Int64P("offset", "", 0, "Offset")
}

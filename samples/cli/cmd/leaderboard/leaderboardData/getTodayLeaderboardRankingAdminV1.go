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

// GetTodayLeaderboardRankingAdminV1Cmd represents the GetTodayLeaderboardRankingAdminV1 command
var GetTodayLeaderboardRankingAdminV1Cmd = &cobra.Command{
	Use:   "getTodayLeaderboardRankingAdminV1",
	Short: "Get today leaderboard ranking admin V1",
	Long:  `Get today leaderboard ranking admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_data.GetTodayLeaderboardRankingAdminV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
		}
		ok, err := leaderboardDataService.GetTodayLeaderboardRankingAdminV1Short(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	GetTodayLeaderboardRankingAdminV1Cmd.Flags().StringP("leaderboardCode", "", "", "Leaderboard code")
	_ = GetTodayLeaderboardRankingAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	GetTodayLeaderboardRankingAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetTodayLeaderboardRankingAdminV1Cmd.MarkFlagRequired("namespace")
	GetTodayLeaderboardRankingAdminV1Cmd.Flags().Int64P("limit", "", 20, "Limit")
	GetTodayLeaderboardRankingAdminV1Cmd.Flags().Int64P("offset", "", 0, "Offset")
}

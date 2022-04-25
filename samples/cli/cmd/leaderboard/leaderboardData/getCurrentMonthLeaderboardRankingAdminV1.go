// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardData

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetCurrentMonthLeaderboardRankingAdminV1Cmd represents the GetCurrentMonthLeaderboardRankingAdminV1 command
var GetCurrentMonthLeaderboardRankingAdminV1Cmd = &cobra.Command{
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
		ok, err := leaderboardDataService.GetCurrentMonthLeaderboardRankingAdminV1Short(input, nil)
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
	GetCurrentMonthLeaderboardRankingAdminV1Cmd.Flags().StringP("leaderboardCode", "", "", "Leaderboard code")
	_ = GetCurrentMonthLeaderboardRankingAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	GetCurrentMonthLeaderboardRankingAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetCurrentMonthLeaderboardRankingAdminV1Cmd.MarkFlagRequired("namespace")
	GetCurrentMonthLeaderboardRankingAdminV1Cmd.Flags().Int64P("limit", "", 20, "Limit")
	GetCurrentMonthLeaderboardRankingAdminV1Cmd.Flags().Int64P("offset", "", 0, "Offset")
}

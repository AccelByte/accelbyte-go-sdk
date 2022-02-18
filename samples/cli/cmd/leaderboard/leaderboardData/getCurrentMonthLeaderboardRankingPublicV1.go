// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package leaderboardData

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetCurrentMonthLeaderboardRankingPublicV1Cmd represents the GetCurrentMonthLeaderboardRankingPublicV1 command
var GetCurrentMonthLeaderboardRankingPublicV1Cmd = &cobra.Command{
	Use:   "getCurrentMonthLeaderboardRankingPublicV1",
	Short: "Get current month leaderboard ranking public V1",
	Long:  `Get current month leaderboard ranking public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_data.GetCurrentMonthLeaderboardRankingPublicV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardDataService.GetCurrentMonthLeaderboardRankingPublicV1(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	GetCurrentMonthLeaderboardRankingPublicV1Cmd.Flags().StringP("leaderboardCode", "", "", "Leaderboard code")
	_ = GetCurrentMonthLeaderboardRankingPublicV1Cmd.MarkFlagRequired("leaderboardCode")
	GetCurrentMonthLeaderboardRankingPublicV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetCurrentMonthLeaderboardRankingPublicV1Cmd.MarkFlagRequired("namespace")
	GetCurrentMonthLeaderboardRankingPublicV1Cmd.Flags().Int64P("limit", "", 20, "Limit")
	GetCurrentMonthLeaderboardRankingPublicV1Cmd.Flags().Int64P("offset", "", 0, "Offset")
}

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

// GetAllTimeLeaderboardRankingPublicV2Cmd represents the GetAllTimeLeaderboardRankingPublicV2 command
var GetAllTimeLeaderboardRankingPublicV2Cmd = &cobra.Command{
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
		ok, errOK := leaderboardDataService.GetAllTimeLeaderboardRankingPublicV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAllTimeLeaderboardRankingPublicV2Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = GetAllTimeLeaderboardRankingPublicV2Cmd.MarkFlagRequired("leaderboardCode")
	GetAllTimeLeaderboardRankingPublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetAllTimeLeaderboardRankingPublicV2Cmd.MarkFlagRequired("namespace")
	GetAllTimeLeaderboardRankingPublicV2Cmd.Flags().Int64("limit", 20, "Limit")
	GetAllTimeLeaderboardRankingPublicV2Cmd.Flags().Int64("offset", 0, "Offset")
}

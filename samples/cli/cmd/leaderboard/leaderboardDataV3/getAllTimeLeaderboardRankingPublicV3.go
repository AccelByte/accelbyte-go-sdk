// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardDataV3

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data_v3"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAllTimeLeaderboardRankingPublicV3Cmd represents the GetAllTimeLeaderboardRankingPublicV3 command
var GetAllTimeLeaderboardRankingPublicV3Cmd = &cobra.Command{
	Use:   "getAllTimeLeaderboardRankingPublicV3",
	Short: "Get all time leaderboard ranking public V3",
	Long:  `Get all time leaderboard ranking public V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataV3Service := &leaderboard.LeaderboardDataV3Service{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_data_v3.GetAllTimeLeaderboardRankingPublicV3Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
		}
		ok, errOK := leaderboardDataV3Service.GetAllTimeLeaderboardRankingPublicV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAllTimeLeaderboardRankingPublicV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = GetAllTimeLeaderboardRankingPublicV3Cmd.MarkFlagRequired("leaderboardCode")
	GetAllTimeLeaderboardRankingPublicV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetAllTimeLeaderboardRankingPublicV3Cmd.MarkFlagRequired("namespace")
	GetAllTimeLeaderboardRankingPublicV3Cmd.Flags().Int64("limit", 20, "Limit")
	GetAllTimeLeaderboardRankingPublicV3Cmd.Flags().Int64("offset", 0, "Offset")
}

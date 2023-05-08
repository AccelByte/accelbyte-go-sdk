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

// GetAllTimeLeaderboardRankingAdminV3Cmd represents the GetAllTimeLeaderboardRankingAdminV3 command
var GetAllTimeLeaderboardRankingAdminV3Cmd = &cobra.Command{
	Use:   "getAllTimeLeaderboardRankingAdminV3",
	Short: "Get all time leaderboard ranking admin V3",
	Long:  `Get all time leaderboard ranking admin V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataV3Service := &leaderboard.LeaderboardDataV3Service{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_data_v3.GetAllTimeLeaderboardRankingAdminV3Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
		}
		ok, errOK := leaderboardDataV3Service.GetAllTimeLeaderboardRankingAdminV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAllTimeLeaderboardRankingAdminV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = GetAllTimeLeaderboardRankingAdminV3Cmd.MarkFlagRequired("leaderboardCode")
	GetAllTimeLeaderboardRankingAdminV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetAllTimeLeaderboardRankingAdminV3Cmd.MarkFlagRequired("namespace")
	GetAllTimeLeaderboardRankingAdminV3Cmd.Flags().Int64("limit", 20, "Limit")
	GetAllTimeLeaderboardRankingAdminV3Cmd.Flags().Int64("offset", 0, "Offset")
}

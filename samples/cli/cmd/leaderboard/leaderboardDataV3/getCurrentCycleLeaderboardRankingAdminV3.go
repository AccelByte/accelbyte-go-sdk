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

// GetCurrentCycleLeaderboardRankingAdminV3Cmd represents the GetCurrentCycleLeaderboardRankingAdminV3 command
var GetCurrentCycleLeaderboardRankingAdminV3Cmd = &cobra.Command{
	Use:   "getCurrentCycleLeaderboardRankingAdminV3",
	Short: "Get current cycle leaderboard ranking admin V3",
	Long:  `Get current cycle leaderboard ranking admin V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataV3Service := &leaderboard.LeaderboardDataV3Service{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		cycleId, _ := cmd.Flags().GetString("cycleId")
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_data_v3.GetCurrentCycleLeaderboardRankingAdminV3Params{
			CycleID:         cycleId,
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
		}
		ok, errOK := leaderboardDataV3Service.GetCurrentCycleLeaderboardRankingAdminV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetCurrentCycleLeaderboardRankingAdminV3Cmd.Flags().String("cycleId", "", "Cycle id")
	_ = GetCurrentCycleLeaderboardRankingAdminV3Cmd.MarkFlagRequired("cycleId")
	GetCurrentCycleLeaderboardRankingAdminV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = GetCurrentCycleLeaderboardRankingAdminV3Cmd.MarkFlagRequired("leaderboardCode")
	GetCurrentCycleLeaderboardRankingAdminV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetCurrentCycleLeaderboardRankingAdminV3Cmd.MarkFlagRequired("namespace")
	GetCurrentCycleLeaderboardRankingAdminV3Cmd.Flags().Int64("limit", 20, "Limit")
	GetCurrentCycleLeaderboardRankingAdminV3Cmd.Flags().Int64("offset", 0, "Offset")
}

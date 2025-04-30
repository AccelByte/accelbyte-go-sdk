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

// GetUserRankingAdminV3Cmd represents the GetUserRankingAdminV3 command
var GetUserRankingAdminV3Cmd = &cobra.Command{
	Use:   "getUserRankingAdminV3",
	Short: "Get user ranking admin V3",
	Long:  `Get user ranking admin V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataV3Service := &leaderboard.LeaderboardDataV3Service{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		previousVersion, _ := cmd.Flags().GetInt64("previousVersion")
		input := &leaderboard_data_v3.GetUserRankingAdminV3Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
			PreviousVersion: &previousVersion,
		}
		ok, errOK := leaderboardDataV3Service.GetUserRankingAdminV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserRankingAdminV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = GetUserRankingAdminV3Cmd.MarkFlagRequired("leaderboardCode")
	GetUserRankingAdminV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserRankingAdminV3Cmd.MarkFlagRequired("namespace")
	GetUserRankingAdminV3Cmd.Flags().String("userId", "", "User id")
	_ = GetUserRankingAdminV3Cmd.MarkFlagRequired("userId")
	GetUserRankingAdminV3Cmd.Flags().Int64("previousVersion", 0, "Previous version")
}

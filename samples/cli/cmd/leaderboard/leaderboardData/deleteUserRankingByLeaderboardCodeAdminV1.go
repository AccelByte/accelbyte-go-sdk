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

// DeleteUserRankingByLeaderboardCodeAdminV1Cmd represents the DeleteUserRankingByLeaderboardCodeAdminV1 command
var DeleteUserRankingByLeaderboardCodeAdminV1Cmd = &cobra.Command{
	Use:   "deleteUserRankingByLeaderboardCodeAdminV1",
	Short: "Delete user ranking by leaderboard code admin V1",
	Long:  `Delete user ranking by leaderboard code admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_data.DeleteUserRankingByLeaderboardCodeAdminV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
		}
		errNoContent := leaderboardDataService.DeleteUserRankingByLeaderboardCodeAdminV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteUserRankingByLeaderboardCodeAdminV1Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = DeleteUserRankingByLeaderboardCodeAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	DeleteUserRankingByLeaderboardCodeAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteUserRankingByLeaderboardCodeAdminV1Cmd.MarkFlagRequired("namespace")
}

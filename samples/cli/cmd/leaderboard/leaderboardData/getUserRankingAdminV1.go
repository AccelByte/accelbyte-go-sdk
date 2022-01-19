// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserRankingAdminV1Cmd represents the getUserRankingAdminV1 command
var getUserRankingAdminV1Cmd = &cobra.Command{
	Use:   "getUserRankingAdminV1",
	Short: "Get user ranking admin V1",
	Long:  `Get user ranking admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &leaderboard_data.GetUserRankingAdminV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardDataService.GetUserRankingAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserRankingAdminV1Cmd)
	getUserRankingAdminV1Cmd.Flags().StringP("leaderboardCode", "l", " ", "Leaderboard code")
	_ = getUserRankingAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	getUserRankingAdminV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserRankingAdminV1Cmd.MarkFlagRequired("namespace")
	getUserRankingAdminV1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getUserRankingAdminV1Cmd.MarkFlagRequired("userId")
}

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

// deleteUserRankingAdminV1Cmd represents the deleteUserRankingAdminV1 command
var deleteUserRankingAdminV1Cmd = &cobra.Command{
	Use:   "deleteUserRankingAdminV1",
	Short: "Delete user ranking admin V1",
	Long:  `Delete user ranking admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &leaderboard_data.DeleteUserRankingAdminV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := leaderboardDataService.DeleteUserRankingAdminV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteUserRankingAdminV1Cmd)
	deleteUserRankingAdminV1Cmd.Flags().StringP("leaderboardCode", "l", " ", "Leaderboard code")
	_ = deleteUserRankingAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	deleteUserRankingAdminV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteUserRankingAdminV1Cmd.MarkFlagRequired("namespace")
	deleteUserRankingAdminV1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = deleteUserRankingAdminV1Cmd.MarkFlagRequired("userId")
}

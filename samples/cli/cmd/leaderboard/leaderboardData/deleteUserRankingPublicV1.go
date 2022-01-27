// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package leaderboardData

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteUserRankingPublicV1Cmd represents the deleteUserRankingPublicV1 command
var deleteUserRankingPublicV1Cmd = &cobra.Command{
	Use:   "deleteUserRankingPublicV1",
	Short: "Delete user ranking public V1",
	Long:  `Delete user ranking public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &leaderboard_data.DeleteUserRankingPublicV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := leaderboardDataService.DeleteUserRankingPublicV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteUserRankingPublicV1Cmd)
	deleteUserRankingPublicV1Cmd.Flags().StringP("leaderboardCode", "le", " ", "Leaderboard code")
	_ = deleteUserRankingPublicV1Cmd.MarkFlagRequired("leaderboardCode")
	deleteUserRankingPublicV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = deleteUserRankingPublicV1Cmd.MarkFlagRequired("namespace")
	deleteUserRankingPublicV1Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = deleteUserRankingPublicV1Cmd.MarkFlagRequired("userId")
}

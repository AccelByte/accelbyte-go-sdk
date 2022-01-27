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

// getUserRankingPublicV1Cmd represents the getUserRankingPublicV1 command
var getUserRankingPublicV1Cmd = &cobra.Command{
	Use:   "getUserRankingPublicV1",
	Short: "Get user ranking public V1",
	Long:  `Get user ranking public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &leaderboard_data.GetUserRankingPublicV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardDataService.GetUserRankingPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserRankingPublicV1Cmd)
	getUserRankingPublicV1Cmd.Flags().StringP("leaderboardCode", "le", " ", "Leaderboard code")
	_ = getUserRankingPublicV1Cmd.MarkFlagRequired("leaderboardCode")
	getUserRankingPublicV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getUserRankingPublicV1Cmd.MarkFlagRequired("namespace")
	getUserRankingPublicV1Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = getUserRankingPublicV1Cmd.MarkFlagRequired("userId")
}

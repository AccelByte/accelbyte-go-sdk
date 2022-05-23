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

// DeleteUserRankingPublicV1Cmd represents the DeleteUserRankingPublicV1 command
var DeleteUserRankingPublicV1Cmd = &cobra.Command{
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
		errInput := leaderboardDataService.DeleteUserRankingPublicV1Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteUserRankingPublicV1Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = DeleteUserRankingPublicV1Cmd.MarkFlagRequired("leaderboardCode")
	DeleteUserRankingPublicV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteUserRankingPublicV1Cmd.MarkFlagRequired("namespace")
	DeleteUserRankingPublicV1Cmd.Flags().String("userId", "", "User id")
	_ = DeleteUserRankingPublicV1Cmd.MarkFlagRequired("userId")
}

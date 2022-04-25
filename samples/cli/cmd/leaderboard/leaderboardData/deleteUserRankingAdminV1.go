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

// DeleteUserRankingAdminV1Cmd represents the DeleteUserRankingAdminV1 command
var DeleteUserRankingAdminV1Cmd = &cobra.Command{
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
		errInput := leaderboardDataService.DeleteUserRankingAdminV1Short(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteUserRankingAdminV1Cmd.Flags().StringP("leaderboardCode", "", "", "Leaderboard code")
	_ = DeleteUserRankingAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	DeleteUserRankingAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteUserRankingAdminV1Cmd.MarkFlagRequired("namespace")
	DeleteUserRankingAdminV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = DeleteUserRankingAdminV1Cmd.MarkFlagRequired("userId")
}

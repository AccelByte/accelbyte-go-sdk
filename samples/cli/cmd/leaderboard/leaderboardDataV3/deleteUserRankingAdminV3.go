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

// DeleteUserRankingAdminV3Cmd represents the DeleteUserRankingAdminV3 command
var DeleteUserRankingAdminV3Cmd = &cobra.Command{
	Use:   "deleteUserRankingAdminV3",
	Short: "Delete user ranking admin V3",
	Long:  `Delete user ranking admin V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataV3Service := &leaderboard.LeaderboardDataV3Service{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &leaderboard_data_v3.DeleteUserRankingAdminV3Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		errNoContent := leaderboardDataV3Service.DeleteUserRankingAdminV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteUserRankingAdminV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = DeleteUserRankingAdminV3Cmd.MarkFlagRequired("leaderboardCode")
	DeleteUserRankingAdminV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteUserRankingAdminV3Cmd.MarkFlagRequired("namespace")
	DeleteUserRankingAdminV3Cmd.Flags().String("userId", "", "User id")
	_ = DeleteUserRankingAdminV3Cmd.MarkFlagRequired("userId")
}

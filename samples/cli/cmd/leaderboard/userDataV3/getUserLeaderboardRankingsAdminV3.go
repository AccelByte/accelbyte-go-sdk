// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userDataV3

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/user_data_v3"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserLeaderboardRankingsAdminV3Cmd represents the GetUserLeaderboardRankingsAdminV3 command
var GetUserLeaderboardRankingsAdminV3Cmd = &cobra.Command{
	Use:   "getUserLeaderboardRankingsAdminV3",
	Short: "Get user leaderboard rankings admin V3",
	Long:  `Get user leaderboard rankings admin V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userDataV3Service := &leaderboard.UserDataV3Service{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		previousVersion, _ := cmd.Flags().GetInt64("previousVersion")
		input := &user_data_v3.GetUserLeaderboardRankingsAdminV3Params{
			Namespace:       namespace,
			UserID:          userId,
			Limit:           &limit,
			Offset:          &offset,
			PreviousVersion: &previousVersion,
		}
		ok, errOK := userDataV3Service.GetUserLeaderboardRankingsAdminV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserLeaderboardRankingsAdminV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserLeaderboardRankingsAdminV3Cmd.MarkFlagRequired("namespace")
	GetUserLeaderboardRankingsAdminV3Cmd.Flags().String("userId", "", "User id")
	_ = GetUserLeaderboardRankingsAdminV3Cmd.MarkFlagRequired("userId")
	GetUserLeaderboardRankingsAdminV3Cmd.Flags().Int64("limit", 20, "Limit")
	GetUserLeaderboardRankingsAdminV3Cmd.Flags().Int64("offset", 0, "Offset")
	GetUserLeaderboardRankingsAdminV3Cmd.Flags().Int64("previousVersion", 0, "Previous version")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/user_data"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserLeaderboardRankingsAdminV1Cmd represents the getUserLeaderboardRankingsAdminV1 command
var getUserLeaderboardRankingsAdminV1Cmd = &cobra.Command{
	Use:   "getUserLeaderboardRankingsAdminV1",
	Short: "Get user leaderboard rankings admin V1",
	Long:  `Get user leaderboard rankings admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userDataService := &leaderboard.UserDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &user_data.GetUserLeaderboardRankingsAdminV1Params{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userDataService.GetUserLeaderboardRankingsAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserLeaderboardRankingsAdminV1Cmd)
	getUserLeaderboardRankingsAdminV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserLeaderboardRankingsAdminV1Cmd.MarkFlagRequired("namespace")
	getUserLeaderboardRankingsAdminV1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getUserLeaderboardRankingsAdminV1Cmd.MarkFlagRequired("userId")
	getUserLeaderboardRankingsAdminV1Cmd.Flags().Int64P("limit", "l", 20, "Limit")
	getUserLeaderboardRankingsAdminV1Cmd.Flags().Int64P("offset", "o", 0, "Offset")
}

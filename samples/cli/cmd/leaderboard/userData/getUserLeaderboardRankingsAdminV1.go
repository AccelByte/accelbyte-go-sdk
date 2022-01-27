// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package userData

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/user_data"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserLeaderboardRankingsAdminV1Cmd represents the GetUserLeaderboardRankingsAdminV1 command
var GetUserLeaderboardRankingsAdminV1Cmd = &cobra.Command{
	Use:   "GetUserLeaderboardRankingsAdminV1",
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
	GetUserLeaderboardRankingsAdminV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetUserLeaderboardRankingsAdminV1Cmd.MarkFlagRequired("namespace")
	GetUserLeaderboardRankingsAdminV1Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = GetUserLeaderboardRankingsAdminV1Cmd.MarkFlagRequired("userId")
	GetUserLeaderboardRankingsAdminV1Cmd.Flags().Int64P("limit", "lt", 20, "Limit")
	GetUserLeaderboardRankingsAdminV1Cmd.Flags().Int64P("offset", "ot", 0, "Offset")
}

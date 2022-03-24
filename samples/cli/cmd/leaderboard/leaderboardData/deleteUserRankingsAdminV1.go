// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package leaderboardData

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteUserRankingsAdminV1Cmd represents the DeleteUserRankingsAdminV1 command
var DeleteUserRankingsAdminV1Cmd = &cobra.Command{
	Use:   "deleteUserRankingsAdminV1",
	Short: "Delete user rankings admin V1",
	Long:  `Delete user rankings admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		leaderboardCodeString := cmd.Flag("leaderboardCode").Value.String()
		var leaderboardCode []string
		errLeaderboardCode := json.Unmarshal([]byte(leaderboardCodeString), &leaderboardCode)
		if errLeaderboardCode != nil {
			return errLeaderboardCode
		}
		input := &leaderboard_data.DeleteUserRankingsAdminV1Params{
			Namespace:       namespace,
			UserID:          userId,
			LeaderboardCode: leaderboardCode,
		}
		errInput := leaderboardDataService.DeleteUserRankingsAdminV1Short(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DeleteUserRankingsAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteUserRankingsAdminV1Cmd.MarkFlagRequired("namespace")
	DeleteUserRankingsAdminV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = DeleteUserRankingsAdminV1Cmd.MarkFlagRequired("userId")
	DeleteUserRankingsAdminV1Cmd.Flags().StringP("leaderboardCode", "", "", "Leaderboard code")
	_ = DeleteUserRankingsAdminV1Cmd.MarkFlagRequired("leaderboardCode")
}

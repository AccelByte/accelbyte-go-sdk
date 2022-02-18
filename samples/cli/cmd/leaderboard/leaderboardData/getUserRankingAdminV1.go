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

// GetUserRankingAdminV1Cmd represents the GetUserRankingAdminV1 command
var GetUserRankingAdminV1Cmd = &cobra.Command{
	Use:   "getUserRankingAdminV1",
	Short: "Get user ranking admin V1",
	Long:  `Get user ranking admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &leaderboard_data.GetUserRankingAdminV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardDataService.GetUserRankingAdminV1(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	GetUserRankingAdminV1Cmd.Flags().StringP("leaderboardCode", "", "", "Leaderboard code")
	_ = GetUserRankingAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	GetUserRankingAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserRankingAdminV1Cmd.MarkFlagRequired("namespace")
	GetUserRankingAdminV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserRankingAdminV1Cmd.MarkFlagRequired("userId")
}

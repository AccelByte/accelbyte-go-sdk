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

// GetUserRankingPublicV1Cmd represents the GetUserRankingPublicV1 command
var GetUserRankingPublicV1Cmd = &cobra.Command{
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
		ok, err := leaderboardDataService.GetUserRankingPublicV1Short(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetUserRankingPublicV1Cmd.Flags().StringP("leaderboardCode", "", "", "Leaderboard code")
	_ = GetUserRankingPublicV1Cmd.MarkFlagRequired("leaderboardCode")
	GetUserRankingPublicV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserRankingPublicV1Cmd.MarkFlagRequired("namespace")
	GetUserRankingPublicV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserRankingPublicV1Cmd.MarkFlagRequired("userId")
}

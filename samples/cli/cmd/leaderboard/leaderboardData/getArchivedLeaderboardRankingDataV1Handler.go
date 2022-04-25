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

// GetArchivedLeaderboardRankingDataV1HandlerCmd represents the GetArchivedLeaderboardRankingDataV1Handler command
var GetArchivedLeaderboardRankingDataV1HandlerCmd = &cobra.Command{
	Use:   "getArchivedLeaderboardRankingDataV1Handler",
	Short: "Get archived leaderboard ranking data V1 handler",
	Long:  `Get archived leaderboard ranking data V1 handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		leaderboardCodes, _ := cmd.Flags().GetString("leaderboardCodes")
		slug, _ := cmd.Flags().GetString("slug")
		input := &leaderboard_data.GetArchivedLeaderboardRankingDataV1HandlerParams{
			LeaderboardCode:  leaderboardCode,
			Namespace:        namespace,
			Slug:             &slug,
			LeaderboardCodes: leaderboardCodes,
		}
		ok, err := leaderboardDataService.GetArchivedLeaderboardRankingDataV1HandlerShort(input, nil)
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
	GetArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("leaderboardCode", "", "", "Leaderboard code")
	_ = GetArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("leaderboardCode")
	GetArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("namespace")
	GetArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("slug", "", "", "Slug")
	GetArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("leaderboardCodes", "", "", "Leaderboard codes")
	_ = GetArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("leaderboardCodes")
}

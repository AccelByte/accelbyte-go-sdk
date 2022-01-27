// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package leaderboardData

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetArchivedLeaderboardRankingDataV1HandlerCmd represents the AdminGetArchivedLeaderboardRankingDataV1Handler command
var AdminGetArchivedLeaderboardRankingDataV1HandlerCmd = &cobra.Command{
	Use:   "AdminGetArchivedLeaderboardRankingDataV1Handler",
	Short: "Admin get archived leaderboard ranking data V1 handler",
	Long:  `Admin get archived leaderboard ranking data V1 handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		leaderboardCodes, _ := cmd.Flags().GetString("leaderboardCodes")
		slug, _ := cmd.Flags().GetString("slug")
		input := &leaderboard_data.AdminGetArchivedLeaderboardRankingDataV1HandlerParams{
			Namespace:        namespace,
			Slug:             &slug,
			LeaderboardCodes: leaderboardCodes,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardDataService.AdminGetArchivedLeaderboardRankingDataV1Handler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminGetArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminGetArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("namespace")
	AdminGetArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("slug", "sg", " ", "Slug")
	AdminGetArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("leaderboardCodes", "ls", " ", "Leaderboard codes")
	_ = AdminGetArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("leaderboardCodes")
}

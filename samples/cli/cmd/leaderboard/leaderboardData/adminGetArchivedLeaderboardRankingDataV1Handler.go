// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package leaderboardData

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetArchivedLeaderboardRankingDataV1HandlerCmd represents the adminGetArchivedLeaderboardRankingDataV1Handler command
var adminGetArchivedLeaderboardRankingDataV1HandlerCmd = &cobra.Command{
	Use:   "adminGetArchivedLeaderboardRankingDataV1Handler",
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
	cmd.RootCmd.AddCommand(adminGetArchivedLeaderboardRankingDataV1HandlerCmd)
	adminGetArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminGetArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("namespace")
	adminGetArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("slug", "sg", " ", "Slug")
	adminGetArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("leaderboardCodes", "ls", " ", "Leaderboard codes")
	_ = adminGetArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("leaderboardCodes")
}

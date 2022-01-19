// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getArchivedLeaderboardRankingDataV1HandlerCmd represents the getArchivedLeaderboardRankingDataV1Handler command
var getArchivedLeaderboardRankingDataV1HandlerCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardDataService.GetArchivedLeaderboardRankingDataV1Handler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getArchivedLeaderboardRankingDataV1HandlerCmd)
	getArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("leaderboardCode", "l", " ", "Leaderboard code")
	_ = getArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("leaderboardCode")
	getArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("namespace")
	getArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("slug", "s", " ", "Slug")
	getArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("leaderboardCodes", "l", " ", "Leaderboard codes")
	_ = getArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("leaderboardCodes")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package leaderboardData

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// createArchivedLeaderboardRankingDataV1HandlerCmd represents the createArchivedLeaderboardRankingDataV1Handler command
var createArchivedLeaderboardRankingDataV1HandlerCmd = &cobra.Command{
	Use:   "createArchivedLeaderboardRankingDataV1Handler",
	Short: "Create archived leaderboard ranking data V1 handler",
	Long:  `Create archived leaderboard ranking data V1 handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *leaderboardclientmodels.ModelsArchiveLeaderboardReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_data.CreateArchivedLeaderboardRankingDataV1HandlerParams{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := leaderboardDataService.CreateArchivedLeaderboardRankingDataV1Handler(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(createArchivedLeaderboardRankingDataV1HandlerCmd)
	createArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("body", "by", " ", "Body")
	_ = createArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("body")
	createArchivedLeaderboardRankingDataV1HandlerCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = createArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("namespace")
}

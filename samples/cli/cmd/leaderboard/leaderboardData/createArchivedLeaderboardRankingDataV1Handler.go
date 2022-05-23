// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardData

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateArchivedLeaderboardRankingDataV1HandlerCmd represents the CreateArchivedLeaderboardRankingDataV1Handler command
var CreateArchivedLeaderboardRankingDataV1HandlerCmd = &cobra.Command{
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
		errInput := leaderboardDataService.CreateArchivedLeaderboardRankingDataV1HandlerShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	CreateArchivedLeaderboardRankingDataV1HandlerCmd.Flags().String("body", "", "Body")
	_ = CreateArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("body")
	CreateArchivedLeaderboardRankingDataV1HandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateArchivedLeaderboardRankingDataV1HandlerCmd.MarkFlagRequired("namespace")
}

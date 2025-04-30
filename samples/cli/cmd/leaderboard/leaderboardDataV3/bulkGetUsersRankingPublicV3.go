// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardDataV3

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_data_v3"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// BulkGetUsersRankingPublicV3Cmd represents the BulkGetUsersRankingPublicV3 command
var BulkGetUsersRankingPublicV3Cmd = &cobra.Command{
	Use:   "bulkGetUsersRankingPublicV3",
	Short: "Bulk get users ranking public V3",
	Long:  `Bulk get users ranking public V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataV3Service := &leaderboard.LeaderboardDataV3Service{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *leaderboardclientmodels.ModelsBulkUserIDsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		previousVersion, _ := cmd.Flags().GetInt64("previousVersion")
		input := &leaderboard_data_v3.BulkGetUsersRankingPublicV3Params{
			Body:            body,
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			PreviousVersion: &previousVersion,
		}
		ok, errOK := leaderboardDataV3Service.BulkGetUsersRankingPublicV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkGetUsersRankingPublicV3Cmd.Flags().String("body", "", "Body")
	_ = BulkGetUsersRankingPublicV3Cmd.MarkFlagRequired("body")
	BulkGetUsersRankingPublicV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = BulkGetUsersRankingPublicV3Cmd.MarkFlagRequired("leaderboardCode")
	BulkGetUsersRankingPublicV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = BulkGetUsersRankingPublicV3Cmd.MarkFlagRequired("namespace")
	BulkGetUsersRankingPublicV3Cmd.Flags().Int64("previousVersion", 0, "Previous version")
}

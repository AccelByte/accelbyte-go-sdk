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

// updateUserPointAdminV1Cmd represents the updateUserPointAdminV1 command
var updateUserPointAdminV1Cmd = &cobra.Command{
	Use:   "updateUserPointAdminV1",
	Short: "Update user point admin V1",
	Long:  `Update user point admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardDataService := &leaderboard.LeaderboardDataService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *leaderboardclientmodels.ModelsUpdateUserPointAdminV1Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &leaderboard_data.UpdateUserPointAdminV1Params{
			Body:            body,
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardDataService.UpdateUserPointAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateUserPointAdminV1Cmd)
	updateUserPointAdminV1Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = updateUserPointAdminV1Cmd.MarkFlagRequired("body")
	updateUserPointAdminV1Cmd.Flags().StringP("leaderboardCode", "le", " ", "Leaderboard code")
	_ = updateUserPointAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	updateUserPointAdminV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = updateUserPointAdminV1Cmd.MarkFlagRequired("namespace")
	updateUserPointAdminV1Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = updateUserPointAdminV1Cmd.MarkFlagRequired("userId")
}

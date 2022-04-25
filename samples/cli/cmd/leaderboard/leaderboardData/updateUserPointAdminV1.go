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

// UpdateUserPointAdminV1Cmd represents the UpdateUserPointAdminV1 command
var UpdateUserPointAdminV1Cmd = &cobra.Command{
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
		ok, err := leaderboardDataService.UpdateUserPointAdminV1Short(input, nil)
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
	UpdateUserPointAdminV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateUserPointAdminV1Cmd.MarkFlagRequired("body")
	UpdateUserPointAdminV1Cmd.Flags().StringP("leaderboardCode", "", "", "Leaderboard code")
	_ = UpdateUserPointAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	UpdateUserPointAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateUserPointAdminV1Cmd.MarkFlagRequired("namespace")
	UpdateUserPointAdminV1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = UpdateUserPointAdminV1Cmd.MarkFlagRequired("userId")
}

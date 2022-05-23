// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardConfiguration

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteBulkLeaderboardConfigurationAdminV1Cmd represents the DeleteBulkLeaderboardConfigurationAdminV1 command
var DeleteBulkLeaderboardConfigurationAdminV1Cmd = &cobra.Command{
	Use:   "deleteBulkLeaderboardConfigurationAdminV1",
	Short: "Delete bulk leaderboard configuration admin V1",
	Long:  `Delete bulk leaderboard configuration admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationService := &leaderboard.LeaderboardConfigurationService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *leaderboardclientmodels.ModelsDeleteBulkLeaderboardsReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_configuration.DeleteBulkLeaderboardConfigurationAdminV1Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := leaderboardConfigurationService.DeleteBulkLeaderboardConfigurationAdminV1Short(input)
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
	DeleteBulkLeaderboardConfigurationAdminV1Cmd.Flags().String("body", "", "Body")
	_ = DeleteBulkLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("body")
	DeleteBulkLeaderboardConfigurationAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteBulkLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}

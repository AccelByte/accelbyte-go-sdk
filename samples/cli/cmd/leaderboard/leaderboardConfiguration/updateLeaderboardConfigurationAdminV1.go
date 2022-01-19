// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateLeaderboardConfigurationAdminV1Cmd represents the updateLeaderboardConfigurationAdminV1 command
var updateLeaderboardConfigurationAdminV1Cmd = &cobra.Command{
	Use:   "updateLeaderboardConfigurationAdminV1",
	Short: "Update leaderboard configuration admin V1",
	Long:  `Update leaderboard configuration admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationService := &leaderboard.LeaderboardConfigurationService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *leaderboardclientmodels.ModelsUpdateLeaderboardConfigReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_configuration.UpdateLeaderboardConfigurationAdminV1Params{
			Body:            body,
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardConfigurationService.UpdateLeaderboardConfigurationAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateLeaderboardConfigurationAdminV1Cmd)
	updateLeaderboardConfigurationAdminV1Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = updateLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("body")
	updateLeaderboardConfigurationAdminV1Cmd.Flags().StringP("leaderboardCode", "l", " ", "Leaderboard code")
	_ = updateLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	updateLeaderboardConfigurationAdminV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}

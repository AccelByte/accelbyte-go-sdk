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

// createLeaderboardConfigurationAdminV1Cmd represents the createLeaderboardConfigurationAdminV1 command
var createLeaderboardConfigurationAdminV1Cmd = &cobra.Command{
	Use:   "createLeaderboardConfigurationAdminV1",
	Short: "Create leaderboard configuration admin V1",
	Long:  `Create leaderboard configuration admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationService := &leaderboard.LeaderboardConfigurationService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *leaderboardclientmodels.ModelsLeaderboardConfigReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_configuration.CreateLeaderboardConfigurationAdminV1Params{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardConfigurationService.CreateLeaderboardConfigurationAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(createLeaderboardConfigurationAdminV1Cmd)
	createLeaderboardConfigurationAdminV1Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = createLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("body")
	createLeaderboardConfigurationAdminV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = createLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}

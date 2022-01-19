// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getLeaderboardConfigurationAdminV1Cmd represents the getLeaderboardConfigurationAdminV1 command
var getLeaderboardConfigurationAdminV1Cmd = &cobra.Command{
	Use:   "getLeaderboardConfigurationAdminV1",
	Short: "Get leaderboard configuration admin V1",
	Long:  `Get leaderboard configuration admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationService := &leaderboard.LeaderboardConfigurationService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_configuration.GetLeaderboardConfigurationAdminV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardConfigurationService.GetLeaderboardConfigurationAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getLeaderboardConfigurationAdminV1Cmd)
	getLeaderboardConfigurationAdminV1Cmd.Flags().StringP("leaderboardCode", "l", " ", "Leaderboard code")
	_ = getLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	getLeaderboardConfigurationAdminV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}

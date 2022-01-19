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

// deleteLeaderboardConfigurationAdminV1Cmd represents the deleteLeaderboardConfigurationAdminV1 command
var deleteLeaderboardConfigurationAdminV1Cmd = &cobra.Command{
	Use:   "deleteLeaderboardConfigurationAdminV1",
	Short: "Delete leaderboard configuration admin V1",
	Long:  `Delete leaderboard configuration admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationService := &leaderboard.LeaderboardConfigurationService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_configuration.DeleteLeaderboardConfigurationAdminV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := leaderboardConfigurationService.DeleteLeaderboardConfigurationAdminV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteLeaderboardConfigurationAdminV1Cmd)
	deleteLeaderboardConfigurationAdminV1Cmd.Flags().StringP("leaderboardCode", "l", " ", "Leaderboard code")
	_ = deleteLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	deleteLeaderboardConfigurationAdminV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}

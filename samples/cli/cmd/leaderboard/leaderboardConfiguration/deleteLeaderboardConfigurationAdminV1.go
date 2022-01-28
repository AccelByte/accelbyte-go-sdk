// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package leaderboardConfiguration

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteLeaderboardConfigurationAdminV1Cmd represents the DeleteLeaderboardConfigurationAdminV1 command
var DeleteLeaderboardConfigurationAdminV1Cmd = &cobra.Command{
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
	DeleteLeaderboardConfigurationAdminV1Cmd.Flags().StringP("leaderboardCode", "", " ", "Leaderboard code")
	_ = DeleteLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	DeleteLeaderboardConfigurationAdminV1Cmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = DeleteLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}

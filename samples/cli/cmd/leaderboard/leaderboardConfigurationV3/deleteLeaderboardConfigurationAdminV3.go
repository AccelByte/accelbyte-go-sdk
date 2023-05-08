// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardConfigurationV3

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration_v3"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteLeaderboardConfigurationAdminV3Cmd represents the DeleteLeaderboardConfigurationAdminV3 command
var DeleteLeaderboardConfigurationAdminV3Cmd = &cobra.Command{
	Use:   "deleteLeaderboardConfigurationAdminV3",
	Short: "Delete leaderboard configuration admin V3",
	Long:  `Delete leaderboard configuration admin V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationV3Service := &leaderboard.LeaderboardConfigurationV3Service{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_configuration_v3.DeleteLeaderboardConfigurationAdminV3Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
		}
		errNoContent := leaderboardConfigurationV3Service.DeleteLeaderboardConfigurationAdminV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteLeaderboardConfigurationAdminV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = DeleteLeaderboardConfigurationAdminV3Cmd.MarkFlagRequired("leaderboardCode")
	DeleteLeaderboardConfigurationAdminV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteLeaderboardConfigurationAdminV3Cmd.MarkFlagRequired("namespace")
}

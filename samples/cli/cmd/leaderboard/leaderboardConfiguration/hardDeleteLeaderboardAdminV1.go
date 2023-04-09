// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardConfiguration

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// HardDeleteLeaderboardAdminV1Cmd represents the HardDeleteLeaderboardAdminV1 command
var HardDeleteLeaderboardAdminV1Cmd = &cobra.Command{
	Use:   "hardDeleteLeaderboardAdminV1",
	Short: "Hard delete leaderboard admin V1",
	Long:  `Hard delete leaderboard admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationService := &leaderboard.LeaderboardConfigurationService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_configuration.HardDeleteLeaderboardAdminV1Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
		}
		errNoContent := leaderboardConfigurationService.HardDeleteLeaderboardAdminV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	HardDeleteLeaderboardAdminV1Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = HardDeleteLeaderboardAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	HardDeleteLeaderboardAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = HardDeleteLeaderboardAdminV1Cmd.MarkFlagRequired("namespace")
}

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

// GetLeaderboardConfigurationAdminV1Cmd represents the GetLeaderboardConfigurationAdminV1 command
var GetLeaderboardConfigurationAdminV1Cmd = &cobra.Command{
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
		ok, err := leaderboardConfigurationService.GetLeaderboardConfigurationAdminV1Short(input, nil)
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
	GetLeaderboardConfigurationAdminV1Cmd.Flags().StringP("leaderboardCode", "", "", "Leaderboard code")
	_ = GetLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("leaderboardCode")
	GetLeaderboardConfigurationAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}

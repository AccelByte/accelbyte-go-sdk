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

// GetLeaderboardConfigurationPublicV3Cmd represents the GetLeaderboardConfigurationPublicV3 command
var GetLeaderboardConfigurationPublicV3Cmd = &cobra.Command{
	Use:   "getLeaderboardConfigurationPublicV3",
	Short: "Get leaderboard configuration public V3",
	Long:  `Get leaderboard configuration public V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationV3Service := &leaderboard.LeaderboardConfigurationV3Service{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_configuration_v3.GetLeaderboardConfigurationPublicV3Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
		}
		ok, errOK := leaderboardConfigurationV3Service.GetLeaderboardConfigurationPublicV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetLeaderboardConfigurationPublicV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = GetLeaderboardConfigurationPublicV3Cmd.MarkFlagRequired("leaderboardCode")
	GetLeaderboardConfigurationPublicV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetLeaderboardConfigurationPublicV3Cmd.MarkFlagRequired("namespace")
}

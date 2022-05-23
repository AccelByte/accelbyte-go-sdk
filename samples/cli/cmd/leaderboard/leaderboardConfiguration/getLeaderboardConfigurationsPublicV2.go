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

// GetLeaderboardConfigurationsPublicV2Cmd represents the GetLeaderboardConfigurationsPublicV2 command
var GetLeaderboardConfigurationsPublicV2Cmd = &cobra.Command{
	Use:   "getLeaderboardConfigurationsPublicV2",
	Short: "Get leaderboard configurations public V2",
	Long:  `Get leaderboard configurations public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationService := &leaderboard.LeaderboardConfigurationService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_configuration.GetLeaderboardConfigurationsPublicV2Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := leaderboardConfigurationService.GetLeaderboardConfigurationsPublicV2Short(input)
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
	GetLeaderboardConfigurationsPublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetLeaderboardConfigurationsPublicV2Cmd.MarkFlagRequired("namespace")
	GetLeaderboardConfigurationsPublicV2Cmd.Flags().Int64("limit", 20, "Limit")
	GetLeaderboardConfigurationsPublicV2Cmd.Flags().Int64("offset", 0, "Offset")
}

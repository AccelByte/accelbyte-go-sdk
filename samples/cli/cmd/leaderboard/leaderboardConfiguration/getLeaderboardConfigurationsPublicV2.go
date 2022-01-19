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

// getLeaderboardConfigurationsPublicV2Cmd represents the getLeaderboardConfigurationsPublicV2 command
var getLeaderboardConfigurationsPublicV2Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardConfigurationService.GetLeaderboardConfigurationsPublicV2(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getLeaderboardConfigurationsPublicV2Cmd)
	getLeaderboardConfigurationsPublicV2Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getLeaderboardConfigurationsPublicV2Cmd.MarkFlagRequired("namespace")
	getLeaderboardConfigurationsPublicV2Cmd.Flags().Int64P("limit", "l", 20, "Limit")
	getLeaderboardConfigurationsPublicV2Cmd.Flags().Int64P("offset", "o", 0, "Offset")
}

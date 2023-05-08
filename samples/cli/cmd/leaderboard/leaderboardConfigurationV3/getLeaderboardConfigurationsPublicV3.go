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

// GetLeaderboardConfigurationsPublicV3Cmd represents the GetLeaderboardConfigurationsPublicV3 command
var GetLeaderboardConfigurationsPublicV3Cmd = &cobra.Command{
	Use:   "getLeaderboardConfigurationsPublicV3",
	Short: "Get leaderboard configurations public V3",
	Long:  `Get leaderboard configurations public V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationV3Service := &leaderboard.LeaderboardConfigurationV3Service{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		isDeleted, _ := cmd.Flags().GetBool("isDeleted")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_configuration_v3.GetLeaderboardConfigurationsPublicV3Params{
			Namespace: namespace,
			IsDeleted: &isDeleted,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := leaderboardConfigurationV3Service.GetLeaderboardConfigurationsPublicV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetLeaderboardConfigurationsPublicV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetLeaderboardConfigurationsPublicV3Cmd.MarkFlagRequired("namespace")
	GetLeaderboardConfigurationsPublicV3Cmd.Flags().Bool("isDeleted", false, "Is deleted")
	GetLeaderboardConfigurationsPublicV3Cmd.Flags().Int64("limit", 20, "Limit")
	GetLeaderboardConfigurationsPublicV3Cmd.Flags().Int64("offset", 0, "Offset")
}

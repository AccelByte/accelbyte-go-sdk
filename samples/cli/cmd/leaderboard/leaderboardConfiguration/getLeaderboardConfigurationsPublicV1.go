// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package leaderboardConfiguration

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getLeaderboardConfigurationsPublicV1Cmd represents the getLeaderboardConfigurationsPublicV1 command
var getLeaderboardConfigurationsPublicV1Cmd = &cobra.Command{
	Use:   "getLeaderboardConfigurationsPublicV1",
	Short: "Get leaderboard configurations public V1",
	Long:  `Get leaderboard configurations public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationService := &leaderboard.LeaderboardConfigurationService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		isArchived, _ := cmd.Flags().GetBool("isArchived")
		isDeleted, _ := cmd.Flags().GetBool("isDeleted")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_configuration.GetLeaderboardConfigurationsPublicV1Params{
			Namespace:  namespace,
			IsArchived: &isArchived,
			IsDeleted:  &isDeleted,
			Limit:      &limit,
			Offset:     &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardConfigurationService.GetLeaderboardConfigurationsPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getLeaderboardConfigurationsPublicV1Cmd)
	getLeaderboardConfigurationsPublicV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getLeaderboardConfigurationsPublicV1Cmd.MarkFlagRequired("namespace")
	getLeaderboardConfigurationsPublicV1Cmd.Flags().BoolP("isArchived", "id", false, "Is archived")
	getLeaderboardConfigurationsPublicV1Cmd.Flags().BoolP("isDeleted", "id", false, "Is deleted")
	getLeaderboardConfigurationsPublicV1Cmd.Flags().Int64P("limit", "lt", 20, "Limit")
	getLeaderboardConfigurationsPublicV1Cmd.Flags().Int64P("offset", "ot", 0, "Offset")
}

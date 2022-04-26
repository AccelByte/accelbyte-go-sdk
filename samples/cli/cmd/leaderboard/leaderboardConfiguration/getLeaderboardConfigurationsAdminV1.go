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

// GetLeaderboardConfigurationsAdminV1Cmd represents the GetLeaderboardConfigurationsAdminV1 command
var GetLeaderboardConfigurationsAdminV1Cmd = &cobra.Command{
	Use:   "getLeaderboardConfigurationsAdminV1",
	Short: "Get leaderboard configurations admin V1",
	Long:  `Get leaderboard configurations admin V1`,
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
		input := &leaderboard_configuration.GetLeaderboardConfigurationsAdminV1Params{
			Namespace:  namespace,
			IsArchived: &isArchived,
			IsDeleted:  &isDeleted,
			Limit:      &limit,
			Offset:     &offset,
		}
		ok, err := leaderboardConfigurationService.GetLeaderboardConfigurationsAdminV1Short(input)
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
	GetLeaderboardConfigurationsAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetLeaderboardConfigurationsAdminV1Cmd.MarkFlagRequired("namespace")
	GetLeaderboardConfigurationsAdminV1Cmd.Flags().BoolP("isArchived", "", false, "Is archived")
	GetLeaderboardConfigurationsAdminV1Cmd.Flags().BoolP("isDeleted", "", false, "Is deleted")
	GetLeaderboardConfigurationsAdminV1Cmd.Flags().Int64P("limit", "", 20, "Limit")
	GetLeaderboardConfigurationsAdminV1Cmd.Flags().Int64P("offset", "", 0, "Offset")
}

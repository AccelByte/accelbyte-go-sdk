// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package userVisibility

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/user_visibility"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetHiddenUsersV2Cmd represents the GetHiddenUsersV2 command
var GetHiddenUsersV2Cmd = &cobra.Command{
	Use:   "getHiddenUsersV2",
	Short: "Get hidden users V2",
	Long:  `Get hidden users V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userVisibilityService := &leaderboard.UserVisibilityService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &user_visibility.GetHiddenUsersV2Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userVisibilityService.GetHiddenUsersV2(input)
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
	GetHiddenUsersV2Cmd.Flags().StringP("leaderboardCode", "", "", "Leaderboard code")
	_ = GetHiddenUsersV2Cmd.MarkFlagRequired("leaderboardCode")
	GetHiddenUsersV2Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetHiddenUsersV2Cmd.MarkFlagRequired("namespace")
	GetHiddenUsersV2Cmd.Flags().Int64P("limit", "", 20, "Limit")
	GetHiddenUsersV2Cmd.Flags().Int64P("offset", "", 0, "Offset")
}

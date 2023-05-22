// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userVisibilityV3

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/user_visibility_v3"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetHiddenUsersV3Cmd represents the GetHiddenUsersV3 command
var GetHiddenUsersV3Cmd = &cobra.Command{
	Use:   "getHiddenUsersV3",
	Short: "Get hidden users V3",
	Long:  `Get hidden users V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userVisibilityV3Service := &leaderboard.UserVisibilityV3Service{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &user_visibility_v3.GetHiddenUsersV3Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			Limit:           &limit,
			Offset:          &offset,
		}
		ok, errOK := userVisibilityV3Service.GetHiddenUsersV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetHiddenUsersV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = GetHiddenUsersV3Cmd.MarkFlagRequired("leaderboardCode")
	GetHiddenUsersV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetHiddenUsersV3Cmd.MarkFlagRequired("namespace")
	GetHiddenUsersV3Cmd.Flags().Int64("limit", 20, "Limit")
	GetHiddenUsersV3Cmd.Flags().Int64("offset", 0, "Offset")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/user_visibility"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserVisibilityStatusV2Cmd represents the getUserVisibilityStatusV2 command
var getUserVisibilityStatusV2Cmd = &cobra.Command{
	Use:   "getUserVisibilityStatusV2",
	Short: "Get user visibility status V2",
	Long:  `Get user visibility status V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userVisibilityService := &leaderboard.UserVisibilityService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_visibility.GetUserVisibilityStatusV2Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userVisibilityService.GetUserVisibilityStatusV2(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserVisibilityStatusV2Cmd)
	getUserVisibilityStatusV2Cmd.Flags().StringP("leaderboardCode", "l", " ", "Leaderboard code")
	_ = getUserVisibilityStatusV2Cmd.MarkFlagRequired("leaderboardCode")
	getUserVisibilityStatusV2Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserVisibilityStatusV2Cmd.MarkFlagRequired("namespace")
	getUserVisibilityStatusV2Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getUserVisibilityStatusV2Cmd.MarkFlagRequired("userId")
}

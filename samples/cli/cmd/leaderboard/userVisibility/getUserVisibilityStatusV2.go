// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userVisibility

import (
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/user_visibility"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserVisibilityStatusV2Cmd represents the GetUserVisibilityStatusV2 command
var GetUserVisibilityStatusV2Cmd = &cobra.Command{
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
		ok, errOK := userVisibilityService.GetUserVisibilityStatusV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserVisibilityStatusV2Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = GetUserVisibilityStatusV2Cmd.MarkFlagRequired("leaderboardCode")
	GetUserVisibilityStatusV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserVisibilityStatusV2Cmd.MarkFlagRequired("namespace")
	GetUserVisibilityStatusV2Cmd.Flags().String("userId", "", "User id")
	_ = GetUserVisibilityStatusV2Cmd.MarkFlagRequired("userId")
}

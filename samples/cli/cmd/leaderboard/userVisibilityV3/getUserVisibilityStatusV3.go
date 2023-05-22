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

// GetUserVisibilityStatusV3Cmd represents the GetUserVisibilityStatusV3 command
var GetUserVisibilityStatusV3Cmd = &cobra.Command{
	Use:   "getUserVisibilityStatusV3",
	Short: "Get user visibility status V3",
	Long:  `Get user visibility status V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userVisibilityV3Service := &leaderboard.UserVisibilityV3Service{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_visibility_v3.GetUserVisibilityStatusV3Params{
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		ok, errOK := userVisibilityV3Service.GetUserVisibilityStatusV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserVisibilityStatusV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = GetUserVisibilityStatusV3Cmd.MarkFlagRequired("leaderboardCode")
	GetUserVisibilityStatusV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserVisibilityStatusV3Cmd.MarkFlagRequired("namespace")
	GetUserVisibilityStatusV3Cmd.Flags().String("userId", "", "User id")
	_ = GetUserVisibilityStatusV3Cmd.MarkFlagRequired("userId")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package friends

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/friends"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserFriendsWithPlatformCmd represents the GetUserFriendsWithPlatform command
var GetUserFriendsWithPlatformCmd = &cobra.Command{
	Use:   "getUserFriendsWithPlatform",
	Short: "Get user friends with platform",
	Long:  `Get user friends with platform`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &friends.GetUserFriendsWithPlatformParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := friendsService.GetUserFriendsWithPlatformShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserFriendsWithPlatformCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserFriendsWithPlatformCmd.MarkFlagRequired("namespace")
	GetUserFriendsWithPlatformCmd.Flags().Int64("limit", 20, "Limit")
	GetUserFriendsWithPlatformCmd.Flags().Int64("offset", 0, "Offset")
}

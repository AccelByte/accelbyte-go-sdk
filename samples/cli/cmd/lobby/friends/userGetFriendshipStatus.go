// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package friends

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/friends"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UserGetFriendshipStatusCmd represents the UserGetFriendshipStatus command
var UserGetFriendshipStatusCmd = &cobra.Command{
	Use:   "userGetFriendshipStatus",
	Short: "User get friendship status",
	Long:  `User get friendship status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		friendId, _ := cmd.Flags().GetString("friendId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &friends.UserGetFriendshipStatusParams{
			FriendID:  friendId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := friendsService.UserGetFriendshipStatus(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	UserGetFriendshipStatusCmd.Flags().StringP("friendId", "", " ", "Friend id")
	_ = UserGetFriendshipStatusCmd.MarkFlagRequired("friendId")
	UserGetFriendshipStatusCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = UserGetFriendshipStatusCmd.MarkFlagRequired("namespace")
}

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

// AdminListFriendsOfFriendsCmd represents the AdminListFriendsOfFriends command
var AdminListFriendsOfFriendsCmd = &cobra.Command{
	Use:   "adminListFriendsOfFriends",
	Short: "Admin list friends of friends",
	Long:  `Admin list friends of friends`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		friendId, _ := cmd.Flags().GetString("friendId")
		limit, _ := cmd.Flags().GetInt64("limit")
		nopaging, _ := cmd.Flags().GetBool("nopaging")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &friends.AdminListFriendsOfFriendsParams{
			Namespace: namespace,
			UserID:    userId,
			FriendID:  &friendId,
			Limit:     &limit,
			Nopaging:  &nopaging,
			Offset:    &offset,
		}
		ok, errOK := friendsService.AdminListFriendsOfFriendsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListFriendsOfFriendsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListFriendsOfFriendsCmd.MarkFlagRequired("namespace")
	AdminListFriendsOfFriendsCmd.Flags().String("userId", "", "User id")
	_ = AdminListFriendsOfFriendsCmd.MarkFlagRequired("userId")
	AdminListFriendsOfFriendsCmd.Flags().String("friendId", "", "Friend id")
	AdminListFriendsOfFriendsCmd.Flags().Int64("limit", 20, "Limit")
	AdminListFriendsOfFriendsCmd.Flags().Bool("nopaging", false, "Nopaging")
	AdminListFriendsOfFriendsCmd.Flags().Int64("offset", 0, "Offset")
}

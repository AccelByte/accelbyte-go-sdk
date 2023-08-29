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

// GetListOfFriendsCmd represents the GetListOfFriends command
var GetListOfFriendsCmd = &cobra.Command{
	Use:   "getListOfFriends",
	Short: "Get list of friends",
	Long:  `Get list of friends`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		friendId, _ := cmd.Flags().GetString("friendId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &friends.GetListOfFriendsParams{
			Namespace: namespace,
			UserID:    userId,
			FriendID:  &friendId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := friendsService.GetListOfFriendsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetListOfFriendsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetListOfFriendsCmd.MarkFlagRequired("namespace")
	GetListOfFriendsCmd.Flags().String("userId", "", "User id")
	_ = GetListOfFriendsCmd.MarkFlagRequired("userId")
	GetListOfFriendsCmd.Flags().String("friendId", "", "Friend id")
	GetListOfFriendsCmd.Flags().Int64("limit", 20, "Limit")
	GetListOfFriendsCmd.Flags().Int64("offset", 0, "Offset")
}

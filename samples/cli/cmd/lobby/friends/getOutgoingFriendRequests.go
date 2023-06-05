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

// GetOutgoingFriendRequestsCmd represents the GetOutgoingFriendRequests command
var GetOutgoingFriendRequestsCmd = &cobra.Command{
	Use:   "getOutgoingFriendRequests",
	Short: "Get outgoing friend requests",
	Long:  `Get outgoing friend requests`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &friends.GetOutgoingFriendRequestsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := friendsService.GetOutgoingFriendRequestsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetOutgoingFriendRequestsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetOutgoingFriendRequestsCmd.MarkFlagRequired("namespace")
	GetOutgoingFriendRequestsCmd.Flags().String("userId", "", "User id")
	_ = GetOutgoingFriendRequestsCmd.MarkFlagRequired("userId")
	GetOutgoingFriendRequestsCmd.Flags().Int64("limit", 20, "Limit")
	GetOutgoingFriendRequestsCmd.Flags().Int64("offset", 0, "Offset")
}

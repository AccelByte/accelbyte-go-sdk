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
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &friends.GetListOfFriendsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := friendsService.GetListOfFriends(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetListOfFriendsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetListOfFriendsCmd.MarkFlagRequired("namespace")
	GetListOfFriendsCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetListOfFriendsCmd.MarkFlagRequired("userId")
	GetListOfFriendsCmd.Flags().StringP("limit", "", "20", "Limit")
	GetListOfFriendsCmd.Flags().StringP("offset", "", "0", "Offset")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/friends"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getListOfFriendsCmd represents the getListOfFriends command
var getListOfFriendsCmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(getListOfFriendsCmd)
	getListOfFriendsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getListOfFriendsCmd.MarkFlagRequired("namespace")
	getListOfFriendsCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getListOfFriendsCmd.MarkFlagRequired("userId")
	getListOfFriendsCmd.Flags().StringP("limit", "l", "20", "Limit")
	getListOfFriendsCmd.Flags().StringP("offset", "o", "0", "Offset")
}

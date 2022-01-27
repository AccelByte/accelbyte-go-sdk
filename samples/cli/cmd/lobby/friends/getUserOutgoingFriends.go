// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package friends

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/friends"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserOutgoingFriendsCmd represents the getUserOutgoingFriends command
var getUserOutgoingFriendsCmd = &cobra.Command{
	Use:   "getUserOutgoingFriends",
	Short: "Get user outgoing friends",
	Long:  `Get user outgoing friends`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &friends.GetUserOutgoingFriendsParams{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := friendsService.GetUserOutgoingFriends(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserOutgoingFriendsCmd)
	getUserOutgoingFriendsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getUserOutgoingFriendsCmd.MarkFlagRequired("namespace")
}

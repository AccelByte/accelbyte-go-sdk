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

// getUserFriendsUpdatedCmd represents the getUserFriendsUpdated command
var getUserFriendsUpdatedCmd = &cobra.Command{
	Use:   "getUserFriendsUpdated",
	Short: "Get user friends updated",
	Long:  `Get user friends updated`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendsService := &lobby.FriendsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &friends.GetUserFriendsUpdatedParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := friendsService.GetUserFriendsUpdated(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserFriendsUpdatedCmd)
	getUserFriendsUpdatedCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserFriendsUpdatedCmd.MarkFlagRequired("namespace")
	getUserFriendsUpdatedCmd.Flags().StringP("limit", "l", "20", "Limit")
	getUserFriendsUpdatedCmd.Flags().StringP("offset", "o", "0", "Offset")
}
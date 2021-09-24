// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// addFriendCmd represents the addFriend command
var addFriendCmd = &cobra.Command{
	Use:   "addFriends",
	Short: "Add multiple friend",
	Long:  `Add multiple friend`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendService := &service.FriendService{
			LobbyClient:     factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userId := cmd.Flag("userId").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		friendIdsString := cmd.Flag("friendIds").Value.String()
		var friendIds []string
		err := json.Unmarshal([]byte(friendIdsString), &friendIds)
		if err != nil {
			return err
		}
		err = friendService.AddFriends(friendIds, namespace, userId)
		if err != nil {
			return err
		}
		logrus.Infof("Friends successfully added")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(addFriendCmd)
	addFriendCmd.Flags().StringP("userId", "u", "", "User ID")
	addFriendCmd.MarkFlagRequired("userId")
	addFriendCmd.Flags().StringP("namespace", "n", "", "User namespace")
	addFriendCmd.MarkFlagRequired("namespace")
	addFriendCmd.Flags().StringP("friendIds", "f", "", "Friend user IDs, value in json. example: '[\"12345\", \"12346\", \"12347\"]'")
	addFriendCmd.MarkFlagRequired("friendIds")
}
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

// getFriendsCmd represents the getFriends command
var getFriendsCmd = &cobra.Command{
	Use:   "getFriends",
	Short: "Get list of friends",
	Long:  `Get list of friends`,
	RunE: func(cmd *cobra.Command, args []string) error {
		friendService := &service.FriendService{
			LobbyClient:     factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userId := cmd.Flag("userId").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		limit := cmd.Flag("limit").Value.String()
		offset := cmd.Flag("offset").Value.String()
		friendList, err := friendService.GetFriends(namespace, userId, limit, offset)
		if err != nil {
			return err
		}
		response, err := json.Marshal(friendList)
		if err != nil {
			return err
		}
		logrus.Infof("Response: %s", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getFriendsCmd)
	getFriendsCmd.Flags().StringP("userId", "u", "", "User ID")
	getFriendsCmd.MarkFlagRequired("userId")
	getFriendsCmd.Flags().StringP("namespace", "n", "", "User namespace")
	getFriendsCmd.MarkFlagRequired("namespace")
	getFriendsCmd.Flags().StringP("limit", "l", "10", "Pagination limit. Default 10")
	getFriendsCmd.Flags().StringP("offset", "o", "0", "Pagination offset. Default 0")
}

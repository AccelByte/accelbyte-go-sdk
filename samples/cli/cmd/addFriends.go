// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/friends"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
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
		friendService := &lobby.FriendsService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
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
		input := &friends.AddFriendsWithoutConfirmationParams{
			Namespace: namespace,
			UserID:    userId,
			Body: &lobbyclientmodels.ModelBulkAddFriendsRequest{
				FriendIds: friendIds,
			},
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		err = friendService.AddFriendsWithoutConfirmation(input)
		if err != nil {
			return err
		}
		logrus.Infof("Friends successfully added")
		return nil
	},
}

func init() {
	RootCmd.AddCommand(addFriendCmd)
	addFriendCmd.Flags().StringP("userId", "u", "", "User ID")
	_ = addFriendCmd.MarkFlagRequired("userId")
	addFriendCmd.Flags().StringP("namespace", "n", "", "User namespace")
	_ = addFriendCmd.MarkFlagRequired("namespace")
	addFriendCmd.Flags().StringP("friendIds", "f", "", "Friend user IDs, value in json. example: '[\"12345\", \"12346\", \"12347\"]'")
	_ = addFriendCmd.MarkFlagRequired("friendIds")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/chat"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminChatHistoryCmd represents the adminChatHistory command
var adminChatHistoryCmd = &cobra.Command{
	Use:   "adminChatHistory",
	Short: "Admin chat history",
	Long:  `Admin chat history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		chatService := &lobby.ChatService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		friendId, _ := cmd.Flags().GetString("friendId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &chat.AdminChatHistoryParams{
			FriendID:  friendId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := chatService.AdminChatHistory(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminChatHistoryCmd)
	adminChatHistoryCmd.Flags().StringP("friendId", "f", " ", "Friend id")
	_ = adminChatHistoryCmd.MarkFlagRequired("friendId")
	adminChatHistoryCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminChatHistoryCmd.MarkFlagRequired("namespace")
	adminChatHistoryCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminChatHistoryCmd.MarkFlagRequired("userId")
}

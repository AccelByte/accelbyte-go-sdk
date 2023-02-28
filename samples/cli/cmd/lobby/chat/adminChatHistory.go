// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package chat

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/chat"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminChatHistoryCmd represents the AdminChatHistory command
var AdminChatHistoryCmd = &cobra.Command{
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
		ok, errOK := chatService.AdminChatHistoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminChatHistoryCmd.Flags().String("friendId", "", "Friend id")
	_ = AdminChatHistoryCmd.MarkFlagRequired("friendId")
	AdminChatHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminChatHistoryCmd.MarkFlagRequired("namespace")
	AdminChatHistoryCmd.Flags().String("userId", "", "User id")
	_ = AdminChatHistoryCmd.MarkFlagRequired("userId")
}

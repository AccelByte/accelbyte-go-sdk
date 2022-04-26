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

// PersonalChatHistoryCmd represents the PersonalChatHistory command
var PersonalChatHistoryCmd = &cobra.Command{
	Use:   "personalChatHistory",
	Short: "Personal chat history",
	Long:  `Personal chat history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		chatService := &lobby.ChatService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		friendId, _ := cmd.Flags().GetString("friendId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &chat.PersonalChatHistoryParams{
			FriendID:  friendId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := chatService.PersonalChatHistoryShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	PersonalChatHistoryCmd.Flags().StringP("friendId", "", "", "Friend id")
	_ = PersonalChatHistoryCmd.MarkFlagRequired("friendId")
	PersonalChatHistoryCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PersonalChatHistoryCmd.MarkFlagRequired("namespace")
	PersonalChatHistoryCmd.Flags().StringP("userId", "", "", "User id")
	_ = PersonalChatHistoryCmd.MarkFlagRequired("userId")
}

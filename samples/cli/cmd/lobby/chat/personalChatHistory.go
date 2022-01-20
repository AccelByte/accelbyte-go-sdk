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

// personalChatHistoryCmd represents the personalChatHistory command
var personalChatHistoryCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := chatService.PersonalChatHistory(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(personalChatHistoryCmd)
	personalChatHistoryCmd.Flags().StringP("friendId", "f", " ", "Friend id")
	_ = personalChatHistoryCmd.MarkFlagRequired("friendId")
	personalChatHistoryCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = personalChatHistoryCmd.MarkFlagRequired("namespace")
	personalChatHistoryCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = personalChatHistoryCmd.MarkFlagRequired("userId")
}
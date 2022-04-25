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

// GetPersonalChatHistoryV1PublicCmd represents the GetPersonalChatHistoryV1Public command
var GetPersonalChatHistoryV1PublicCmd = &cobra.Command{
	Use:   "getPersonalChatHistoryV1Public",
	Short: "Get personal chat history V1 public",
	Long:  `Get personal chat history V1 public`,
	RunE: func(cmd *cobra.Command, args []string) error {
		chatService := &lobby.ChatService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		friendId, _ := cmd.Flags().GetString("friendId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &chat.GetPersonalChatHistoryV1PublicParams{
			FriendID:  friendId,
			Namespace: namespace,
		}
		ok, err := chatService.GetPersonalChatHistoryV1PublicShort(input, nil)
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
	GetPersonalChatHistoryV1PublicCmd.Flags().StringP("friendId", "", "", "Friend id")
	_ = GetPersonalChatHistoryV1PublicCmd.MarkFlagRequired("friendId")
	GetPersonalChatHistoryV1PublicCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetPersonalChatHistoryV1PublicCmd.MarkFlagRequired("namespace")
}

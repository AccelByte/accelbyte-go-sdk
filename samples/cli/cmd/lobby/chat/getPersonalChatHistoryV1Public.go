// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package chat

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/chat"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getPersonalChatHistoryV1PublicCmd represents the getPersonalChatHistoryV1Public command
var getPersonalChatHistoryV1PublicCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := chatService.GetPersonalChatHistoryV1Public(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getPersonalChatHistoryV1PublicCmd)
	getPersonalChatHistoryV1PublicCmd.Flags().StringP("friendId", "fd", " ", "Friend id")
	_ = getPersonalChatHistoryV1PublicCmd.MarkFlagRequired("friendId")
	getPersonalChatHistoryV1PublicCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getPersonalChatHistoryV1PublicCmd.MarkFlagRequired("namespace")
}

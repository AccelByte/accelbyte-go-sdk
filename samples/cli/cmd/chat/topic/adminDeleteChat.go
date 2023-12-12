// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

import (
	topic_ "github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/topic"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteChatCmd represents the AdminDeleteChat command
var AdminDeleteChatCmd = &cobra.Command{
	Use:   "adminDeleteChat",
	Short: "Admin delete chat",
	Long:  `Admin delete chat`,
	RunE: func(cmd *cobra.Command, args []string) error {
		topicService := &chat.TopicService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		chatId, _ := cmd.Flags().GetString("chatId")
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &topic_.AdminDeleteChatParams{
			ChatID:    chatId,
			Namespace: namespace,
			Topic:     topic,
		}
		errNoContent := topicService.AdminDeleteChatShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteChatCmd.Flags().String("chatId", "", "Chat id")
	_ = AdminDeleteChatCmd.MarkFlagRequired("chatId")
	AdminDeleteChatCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteChatCmd.MarkFlagRequired("namespace")
	AdminDeleteChatCmd.Flags().String("topic", "", "Topic")
	_ = AdminDeleteChatCmd.MarkFlagRequired("topic")
}

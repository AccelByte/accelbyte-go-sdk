// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package moderation

import (
	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/moderation"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetChatSnapshotCmd represents the PublicGetChatSnapshot command
var PublicGetChatSnapshotCmd = &cobra.Command{
	Use:   "publicGetChatSnapshot",
	Short: "Public get chat snapshot",
	Long:  `Public get chat snapshot`,
	RunE: func(cmd *cobra.Command, args []string) error {
		moderationService := &chat.ModerationService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		chatId, _ := cmd.Flags().GetString("chatId")
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &moderation.PublicGetChatSnapshotParams{
			ChatID:    chatId,
			Namespace: namespace,
			Topic:     topic,
		}
		ok, errOK := moderationService.PublicGetChatSnapshotShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetChatSnapshotCmd.Flags().String("chatId", "", "Chat id")
	_ = PublicGetChatSnapshotCmd.MarkFlagRequired("chatId")
	PublicGetChatSnapshotCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetChatSnapshotCmd.MarkFlagRequired("namespace")
	PublicGetChatSnapshotCmd.Flags().String("topic", "", "Topic")
	_ = PublicGetChatSnapshotCmd.MarkFlagRequired("topic")
}

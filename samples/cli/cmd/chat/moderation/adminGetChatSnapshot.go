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

// AdminGetChatSnapshotCmd represents the AdminGetChatSnapshot command
var AdminGetChatSnapshotCmd = &cobra.Command{
	Use:   "adminGetChatSnapshot",
	Short: "Admin get chat snapshot",
	Long:  `Admin get chat snapshot`,
	RunE: func(cmd *cobra.Command, args []string) error {
		moderationService := &chat.ModerationService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		chatId, _ := cmd.Flags().GetString("chatId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &moderation.AdminGetChatSnapshotParams{
			ChatID:    chatId,
			Namespace: namespace,
		}
		ok, errOK := moderationService.AdminGetChatSnapshotShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetChatSnapshotCmd.Flags().String("chatId", "", "Chat id")
	_ = AdminGetChatSnapshotCmd.MarkFlagRequired("chatId")
	AdminGetChatSnapshotCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetChatSnapshotCmd.MarkFlagRequired("namespace")
}

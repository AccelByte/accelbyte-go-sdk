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

// AdminDeleteChatSnapshotCmd represents the AdminDeleteChatSnapshot command
var AdminDeleteChatSnapshotCmd = &cobra.Command{
	Use:   "adminDeleteChatSnapshot",
	Short: "Admin delete chat snapshot",
	Long:  `Admin delete chat snapshot`,
	RunE: func(cmd *cobra.Command, args []string) error {
		moderationService := &chat.ModerationService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		chatId, _ := cmd.Flags().GetString("chatId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &moderation.AdminDeleteChatSnapshotParams{
			ChatID:    chatId,
			Namespace: namespace,
		}
		errNoContent := moderationService.AdminDeleteChatSnapshotShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteChatSnapshotCmd.Flags().String("chatId", "", "Chat id")
	_ = AdminDeleteChatSnapshotCmd.MarkFlagRequired("chatId")
	AdminDeleteChatSnapshotCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteChatSnapshotCmd.MarkFlagRequired("namespace")
}

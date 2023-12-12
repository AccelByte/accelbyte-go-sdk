// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inbox

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/inbox"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetInboxMessagesCmd represents the AdminGetInboxMessages command
var AdminGetInboxMessagesCmd = &cobra.Command{
	Use:   "adminGetInboxMessages",
	Short: "Admin get inbox messages",
	Long:  `Admin get inbox messages`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inboxService := &chat.InboxService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		endCreatedAt, _ := cmd.Flags().GetInt64("endCreatedAt")
		limit, _ := cmd.Flags().GetInt64("limit")
		messageIdString := cmd.Flag("messageId").Value.String()
		var messageId []string
		errMessageId := json.Unmarshal([]byte(messageIdString), &messageId)
		if errMessageId != nil {
			return errMessageId
		}
		offset, _ := cmd.Flags().GetInt64("offset")
		order, _ := cmd.Flags().GetString("order")
		scope, _ := cmd.Flags().GetString("scope")
		startCreatedAt, _ := cmd.Flags().GetInt64("startCreatedAt")
		status, _ := cmd.Flags().GetString("status")
		transient, _ := cmd.Flags().GetBool("transient")
		input := &inbox.AdminGetInboxMessagesParams{
			Namespace:      namespace,
			ActiveOnly:     &activeOnly,
			EndCreatedAt:   &endCreatedAt,
			Limit:          &limit,
			MessageID:      messageId,
			Offset:         &offset,
			Order:          &order,
			Scope:          &scope,
			StartCreatedAt: &startCreatedAt,
			Status:         &status,
			Transient:      &transient,
		}
		ok, errOK := inboxService.AdminGetInboxMessagesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetInboxMessagesCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetInboxMessagesCmd.MarkFlagRequired("namespace")
	AdminGetInboxMessagesCmd.Flags().Bool("activeOnly", false, "Active only")
	AdminGetInboxMessagesCmd.Flags().Int64("endCreatedAt", 1, "End created at")
	AdminGetInboxMessagesCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetInboxMessagesCmd.Flags().String("messageId", "", "Message id")
	AdminGetInboxMessagesCmd.Flags().Int64("offset", 0, "Offset")
	AdminGetInboxMessagesCmd.Flags().String("order", "", "Order")
	AdminGetInboxMessagesCmd.Flags().String("scope", "", "Scope")
	AdminGetInboxMessagesCmd.Flags().Int64("startCreatedAt", 0, "Start created at")
	AdminGetInboxMessagesCmd.Flags().String("status", "", "Status")
	AdminGetInboxMessagesCmd.Flags().Bool("transient", false, "Transient")
}

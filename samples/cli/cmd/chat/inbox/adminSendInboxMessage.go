// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inbox

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/inbox"
	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminSendInboxMessageCmd represents the AdminSendInboxMessage command
var AdminSendInboxMessageCmd = &cobra.Command{
	Use:   "adminSendInboxMessage",
	Short: "Admin send inbox message",
	Long:  `Admin send inbox message`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inboxService := &chat.InboxService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.ModelsSendInboxMessageRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		messageId, _ := cmd.Flags().GetString("messageId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &inbox.AdminSendInboxMessageParams{
			Body:      body,
			MessageID: messageId,
			Namespace: namespace,
		}
		ok, errOK := inboxService.AdminSendInboxMessageShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminSendInboxMessageCmd.Flags().String("body", "", "Body")
	_ = AdminSendInboxMessageCmd.MarkFlagRequired("body")
	AdminSendInboxMessageCmd.Flags().String("messageId", "", "Message id")
	_ = AdminSendInboxMessageCmd.MarkFlagRequired("messageId")
	AdminSendInboxMessageCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSendInboxMessageCmd.MarkFlagRequired("namespace")
}

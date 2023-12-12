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

// AdminGetInboxStatsCmd represents the AdminGetInboxStats command
var AdminGetInboxStatsCmd = &cobra.Command{
	Use:   "adminGetInboxStats",
	Short: "Admin get inbox stats",
	Long:  `Admin get inbox stats`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inboxService := &chat.InboxService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		messageIdString := cmd.Flag("messageId").Value.String()
		var messageId []string
		errMessageId := json.Unmarshal([]byte(messageIdString), &messageId)
		if errMessageId != nil {
			return errMessageId
		}
		input := &inbox.AdminGetInboxStatsParams{
			Namespace: namespace,
			MessageID: messageId,
		}
		ok, errOK := inboxService.AdminGetInboxStatsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetInboxStatsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetInboxStatsCmd.MarkFlagRequired("namespace")
	AdminGetInboxStatsCmd.Flags().String("messageId", "", "Message id")
}

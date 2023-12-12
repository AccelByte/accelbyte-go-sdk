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

// AdminSaveInboxMessageCmd represents the AdminSaveInboxMessage command
var AdminSaveInboxMessageCmd = &cobra.Command{
	Use:   "adminSaveInboxMessage",
	Short: "Admin save inbox message",
	Long:  `Admin save inbox message`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inboxService := &chat.InboxService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.ModelsSaveInboxMessageRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &inbox.AdminSaveInboxMessageParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := inboxService.AdminSaveInboxMessageShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminSaveInboxMessageCmd.Flags().String("body", "", "Body")
	_ = AdminSaveInboxMessageCmd.MarkFlagRequired("body")
	AdminSaveInboxMessageCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSaveInboxMessageCmd.MarkFlagRequired("namespace")
}

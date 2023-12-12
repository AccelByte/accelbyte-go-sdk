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

// AdminAddInboxCategoryCmd represents the AdminAddInboxCategory command
var AdminAddInboxCategoryCmd = &cobra.Command{
	Use:   "adminAddInboxCategory",
	Short: "Admin add inbox category",
	Long:  `Admin add inbox category`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inboxService := &chat.InboxService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.ModelsAddInboxCategoryRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &inbox.AdminAddInboxCategoryParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := inboxService.AdminAddInboxCategoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminAddInboxCategoryCmd.Flags().String("body", "", "Body")
	_ = AdminAddInboxCategoryCmd.MarkFlagRequired("body")
	AdminAddInboxCategoryCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAddInboxCategoryCmd.MarkFlagRequired("namespace")
}

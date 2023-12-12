// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inbox

import (
	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/inbox"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteInboxCategoryCmd represents the AdminDeleteInboxCategory command
var AdminDeleteInboxCategoryCmd = &cobra.Command{
	Use:   "adminDeleteInboxCategory",
	Short: "Admin delete inbox category",
	Long:  `Admin delete inbox category`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inboxService := &chat.InboxService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		category, _ := cmd.Flags().GetString("category")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &inbox.AdminDeleteInboxCategoryParams{
			Category:  category,
			Namespace: namespace,
		}
		errOK := inboxService.AdminDeleteInboxCategoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteInboxCategoryCmd.Flags().String("category", "", "Category")
	_ = AdminDeleteInboxCategoryCmd.MarkFlagRequired("category")
	AdminDeleteInboxCategoryCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteInboxCategoryCmd.MarkFlagRequired("namespace")
}

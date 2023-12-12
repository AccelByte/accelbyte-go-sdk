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

// AdminGetCategorySchemaCmd represents the AdminGetCategorySchema command
var AdminGetCategorySchemaCmd = &cobra.Command{
	Use:   "adminGetCategorySchema",
	Short: "Admin get category schema",
	Long:  `Admin get category schema`,
	RunE: func(cmd *cobra.Command, args []string) error {
		inboxService := &chat.InboxService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		category, _ := cmd.Flags().GetString("category")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &inbox.AdminGetCategorySchemaParams{
			Category:  category,
			Namespace: namespace,
		}
		ok, errOK := inboxService.AdminGetCategorySchemaShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetCategorySchemaCmd.Flags().String("category", "", "Category")
	_ = AdminGetCategorySchemaCmd.MarkFlagRequired("category")
	AdminGetCategorySchemaCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetCategorySchemaCmd.MarkFlagRequired("namespace")
}

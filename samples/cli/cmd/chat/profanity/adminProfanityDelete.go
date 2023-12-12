// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

import (
	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/profanity"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminProfanityDeleteCmd represents the AdminProfanityDelete command
var AdminProfanityDeleteCmd = &cobra.Command{
	Use:   "adminProfanityDelete",
	Short: "Admin profanity delete",
	Long:  `Admin profanity delete`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &chat.ProfanityService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminProfanityDeleteParams{
			ID:        id_,
			Namespace: namespace,
		}
		errNoContent := profanityService.AdminProfanityDeleteShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminProfanityDeleteCmd.Flags().String("id", "", "Id")
	_ = AdminProfanityDeleteCmd.MarkFlagRequired("id")
	AdminProfanityDeleteCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminProfanityDeleteCmd.MarkFlagRequired("namespace")
}

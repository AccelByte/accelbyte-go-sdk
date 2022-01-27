// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package notification

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteTemplateSlugCmd represents the deleteTemplateSlug command
var deleteTemplateSlugCmd = &cobra.Command{
	Use:   "deleteTemplateSlug",
	Short: "Delete template slug",
	Long:  `Delete template slug`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		input := &notification.DeleteTemplateSlugParams{
			Namespace:    namespace,
			TemplateSlug: templateSlug,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.DeleteTemplateSlug(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteTemplateSlugCmd)
	deleteTemplateSlugCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = deleteTemplateSlugCmd.MarkFlagRequired("namespace")
	deleteTemplateSlugCmd.Flags().StringP("templateSlug", "tg", " ", "Template slug")
	_ = deleteTemplateSlugCmd.MarkFlagRequired("templateSlug")
}

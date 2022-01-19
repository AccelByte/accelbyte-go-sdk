// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteNotificationTemplateSlugV1AdminCmd represents the deleteNotificationTemplateSlugV1Admin command
var deleteNotificationTemplateSlugV1AdminCmd = &cobra.Command{
	Use:   "deleteNotificationTemplateSlugV1Admin",
	Short: "Delete notification template slug V1 admin",
	Long:  `Delete notification template slug V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		input := &notification.DeleteNotificationTemplateSlugV1AdminParams{
			Namespace:    namespace,
			TemplateSlug: templateSlug,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.DeleteNotificationTemplateSlugV1Admin(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteNotificationTemplateSlugV1AdminCmd)
	deleteNotificationTemplateSlugV1AdminCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteNotificationTemplateSlugV1AdminCmd.MarkFlagRequired("namespace")
	deleteNotificationTemplateSlugV1AdminCmd.Flags().StringP("templateSlug", "t", " ", "Template slug")
	_ = deleteNotificationTemplateSlugV1AdminCmd.MarkFlagRequired("templateSlug")
}

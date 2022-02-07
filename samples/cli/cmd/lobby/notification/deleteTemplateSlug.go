// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package notification

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteTemplateSlugCmd represents the DeleteTemplateSlug command
var DeleteTemplateSlugCmd = &cobra.Command{
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
	DeleteTemplateSlugCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteTemplateSlugCmd.MarkFlagRequired("namespace")
	DeleteTemplateSlugCmd.Flags().StringP("templateSlug", "", "", "Template slug")
	_ = DeleteTemplateSlugCmd.MarkFlagRequired("templateSlug")
}

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

// DeleteTemplateLocalizationCmd represents the DeleteTemplateLocalization command
var DeleteTemplateLocalizationCmd = &cobra.Command{
	Use:   "deleteTemplateLocalization",
	Short: "Delete template localization",
	Long:  `Delete template localization`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateLanguage, _ := cmd.Flags().GetString("templateLanguage")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		input := &notification.DeleteTemplateLocalizationParams{
			Namespace:        namespace,
			TemplateLanguage: templateLanguage,
			TemplateSlug:     templateSlug,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.DeleteTemplateLocalization(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DeleteTemplateLocalizationCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = DeleteTemplateLocalizationCmd.MarkFlagRequired("namespace")
	DeleteTemplateLocalizationCmd.Flags().StringP("templateLanguage", "", " ", "Template language")
	_ = DeleteTemplateLocalizationCmd.MarkFlagRequired("templateLanguage")
	DeleteTemplateLocalizationCmd.Flags().StringP("templateSlug", "", " ", "Template slug")
	_ = DeleteTemplateLocalizationCmd.MarkFlagRequired("templateSlug")
}

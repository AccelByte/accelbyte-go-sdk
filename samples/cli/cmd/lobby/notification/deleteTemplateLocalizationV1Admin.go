// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteTemplateLocalizationV1AdminCmd represents the DeleteTemplateLocalizationV1Admin command
var DeleteTemplateLocalizationV1AdminCmd = &cobra.Command{
	Use:   "deleteTemplateLocalizationV1Admin",
	Short: "Delete template localization V1 admin",
	Long:  `Delete template localization V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateLanguage, _ := cmd.Flags().GetString("templateLanguage")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		input := &notification.DeleteTemplateLocalizationV1AdminParams{
			Namespace:        namespace,
			TemplateLanguage: templateLanguage,
			TemplateSlug:     templateSlug,
		}
		errNoContent := notificationService.DeleteTemplateLocalizationV1AdminShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteTemplateLocalizationV1AdminCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteTemplateLocalizationV1AdminCmd.MarkFlagRequired("namespace")
	DeleteTemplateLocalizationV1AdminCmd.Flags().String("templateLanguage", "", "Template language")
	_ = DeleteTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateLanguage")
	DeleteTemplateLocalizationV1AdminCmd.Flags().String("templateSlug", "", "Template slug")
	_ = DeleteTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateSlug")
}

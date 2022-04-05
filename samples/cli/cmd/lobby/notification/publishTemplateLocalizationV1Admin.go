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

// PublishTemplateLocalizationV1AdminCmd represents the PublishTemplateLocalizationV1Admin command
var PublishTemplateLocalizationV1AdminCmd = &cobra.Command{
	Use:   "publishTemplateLocalizationV1Admin",
	Short: "Publish template localization V1 admin",
	Long:  `Publish template localization V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateLanguage, _ := cmd.Flags().GetString("templateLanguage")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		input := &notification.PublishTemplateLocalizationV1AdminParams{
			Namespace:        namespace,
			TemplateLanguage: templateLanguage,
			TemplateSlug:     templateSlug,
		}
		errInput := notificationService.PublishTemplateLocalizationV1AdminShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublishTemplateLocalizationV1AdminCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublishTemplateLocalizationV1AdminCmd.MarkFlagRequired("namespace")
	PublishTemplateLocalizationV1AdminCmd.Flags().StringP("templateLanguage", "", "", "Template language")
	_ = PublishTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateLanguage")
	PublishTemplateLocalizationV1AdminCmd.Flags().StringP("templateSlug", "", "", "Template slug")
	_ = PublishTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateSlug")
}

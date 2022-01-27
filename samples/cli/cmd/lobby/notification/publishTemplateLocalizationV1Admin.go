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

// publishTemplateLocalizationV1AdminCmd represents the publishTemplateLocalizationV1Admin command
var publishTemplateLocalizationV1AdminCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.PublishTemplateLocalizationV1Admin(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publishTemplateLocalizationV1AdminCmd)
	publishTemplateLocalizationV1AdminCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publishTemplateLocalizationV1AdminCmd.MarkFlagRequired("namespace")
	publishTemplateLocalizationV1AdminCmd.Flags().StringP("templateLanguage", "te", " ", "Template language")
	_ = publishTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateLanguage")
	publishTemplateLocalizationV1AdminCmd.Flags().StringP("templateSlug", "tg", " ", "Template slug")
	_ = publishTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateSlug")
}

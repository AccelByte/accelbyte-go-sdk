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

// PublishTemplateCmd represents the PublishTemplate command
var PublishTemplateCmd = &cobra.Command{
	Use:   "PublishTemplate",
	Short: "Publish template",
	Long:  `Publish template`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateLanguage, _ := cmd.Flags().GetString("templateLanguage")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		input := &notification.PublishTemplateParams{
			Namespace:        namespace,
			TemplateLanguage: templateLanguage,
			TemplateSlug:     templateSlug,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.PublishTemplate(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	PublishTemplateCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PublishTemplateCmd.MarkFlagRequired("namespace")
	PublishTemplateCmd.Flags().StringP("templateLanguage", "te", " ", "Template language")
	_ = PublishTemplateCmd.MarkFlagRequired("templateLanguage")
	PublishTemplateCmd.Flags().StringP("templateSlug", "tg", " ", "Template slug")
	_ = PublishTemplateCmd.MarkFlagRequired("templateSlug")
}

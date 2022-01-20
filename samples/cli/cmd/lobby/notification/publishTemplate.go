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

// publishTemplateCmd represents the publishTemplate command
var publishTemplateCmd = &cobra.Command{
	Use:   "publishTemplate",
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
	cmd.RootCmd.AddCommand(publishTemplateCmd)
	publishTemplateCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publishTemplateCmd.MarkFlagRequired("namespace")
	publishTemplateCmd.Flags().StringP("templateLanguage", "t", " ", "Template language")
	_ = publishTemplateCmd.MarkFlagRequired("templateLanguage")
	publishTemplateCmd.Flags().StringP("templateSlug", "t", " ", "Template slug")
	_ = publishTemplateCmd.MarkFlagRequired("templateSlug")
}
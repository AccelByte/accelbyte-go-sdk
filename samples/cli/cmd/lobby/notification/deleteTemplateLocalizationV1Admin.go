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

// deleteTemplateLocalizationV1AdminCmd represents the deleteTemplateLocalizationV1Admin command
var deleteTemplateLocalizationV1AdminCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.DeleteTemplateLocalizationV1Admin(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteTemplateLocalizationV1AdminCmd)
	deleteTemplateLocalizationV1AdminCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteTemplateLocalizationV1AdminCmd.MarkFlagRequired("namespace")
	deleteTemplateLocalizationV1AdminCmd.Flags().StringP("templateLanguage", "t", " ", "Template language")
	_ = deleteTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateLanguage")
	deleteTemplateLocalizationV1AdminCmd.Flags().StringP("templateSlug", "t", " ", "Template slug")
	_ = deleteTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateSlug")
}

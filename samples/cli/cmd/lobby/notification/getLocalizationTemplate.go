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

// getLocalizationTemplateCmd represents the getLocalizationTemplate command
var getLocalizationTemplateCmd = &cobra.Command{
	Use:   "getLocalizationTemplate",
	Short: "Get localization template",
	Long:  `Get localization template`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateLanguage, _ := cmd.Flags().GetString("templateLanguage")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		input := &notification.GetLocalizationTemplateParams{
			Namespace:        namespace,
			TemplateLanguage: templateLanguage,
			TemplateSlug:     templateSlug,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := notificationService.GetLocalizationTemplate(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getLocalizationTemplateCmd)
	getLocalizationTemplateCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getLocalizationTemplateCmd.MarkFlagRequired("namespace")
	getLocalizationTemplateCmd.Flags().StringP("templateLanguage", "t", " ", "Template language")
	_ = getLocalizationTemplateCmd.MarkFlagRequired("templateLanguage")
	getLocalizationTemplateCmd.Flags().StringP("templateSlug", "t", " ", "Template slug")
	_ = getLocalizationTemplateCmd.MarkFlagRequired("templateSlug")
}

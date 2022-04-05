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

// GetLocalizationTemplateCmd represents the GetLocalizationTemplate command
var GetLocalizationTemplateCmd = &cobra.Command{
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
		ok, err := notificationService.GetLocalizationTemplateShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetLocalizationTemplateCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetLocalizationTemplateCmd.MarkFlagRequired("namespace")
	GetLocalizationTemplateCmd.Flags().StringP("templateLanguage", "", "", "Template language")
	_ = GetLocalizationTemplateCmd.MarkFlagRequired("templateLanguage")
	GetLocalizationTemplateCmd.Flags().StringP("templateSlug", "", "", "Template slug")
	_ = GetLocalizationTemplateCmd.MarkFlagRequired("templateSlug")
}

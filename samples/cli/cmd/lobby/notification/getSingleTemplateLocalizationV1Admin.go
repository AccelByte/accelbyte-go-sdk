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

// GetSingleTemplateLocalizationV1AdminCmd represents the GetSingleTemplateLocalizationV1Admin command
var GetSingleTemplateLocalizationV1AdminCmd = &cobra.Command{
	Use:   "GetSingleTemplateLocalizationV1Admin",
	Short: "Get single template localization V1 admin",
	Long:  `Get single template localization V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateLanguage, _ := cmd.Flags().GetString("templateLanguage")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		input := &notification.GetSingleTemplateLocalizationV1AdminParams{
			Namespace:        namespace,
			TemplateLanguage: templateLanguage,
			TemplateSlug:     templateSlug,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := notificationService.GetSingleTemplateLocalizationV1Admin(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetSingleTemplateLocalizationV1AdminCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetSingleTemplateLocalizationV1AdminCmd.MarkFlagRequired("namespace")
	GetSingleTemplateLocalizationV1AdminCmd.Flags().StringP("templateLanguage", "te", " ", "Template language")
	_ = GetSingleTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateLanguage")
	GetSingleTemplateLocalizationV1AdminCmd.Flags().StringP("templateSlug", "tg", " ", "Template slug")
	_ = GetSingleTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateSlug")
}

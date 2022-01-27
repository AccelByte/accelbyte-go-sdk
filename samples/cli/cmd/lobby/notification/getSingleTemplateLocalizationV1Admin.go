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

// getSingleTemplateLocalizationV1AdminCmd represents the getSingleTemplateLocalizationV1Admin command
var getSingleTemplateLocalizationV1AdminCmd = &cobra.Command{
	Use:   "getSingleTemplateLocalizationV1Admin",
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
	cmd.RootCmd.AddCommand(getSingleTemplateLocalizationV1AdminCmd)
	getSingleTemplateLocalizationV1AdminCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getSingleTemplateLocalizationV1AdminCmd.MarkFlagRequired("namespace")
	getSingleTemplateLocalizationV1AdminCmd.Flags().StringP("templateLanguage", "te", " ", "Template language")
	_ = getSingleTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateLanguage")
	getSingleTemplateLocalizationV1AdminCmd.Flags().StringP("templateSlug", "tg", " ", "Template slug")
	_ = getSingleTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateSlug")
}

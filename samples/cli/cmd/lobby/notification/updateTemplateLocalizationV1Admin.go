// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package notification

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateTemplateLocalizationV1AdminCmd represents the UpdateTemplateLocalizationV1Admin command
var UpdateTemplateLocalizationV1AdminCmd = &cobra.Command{
	Use:   "UpdateTemplateLocalizationV1Admin",
	Short: "Update template localization V1 admin",
	Long:  `Update template localization V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelUpdateTemplateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateLanguage, _ := cmd.Flags().GetString("templateLanguage")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		input := &notification.UpdateTemplateLocalizationV1AdminParams{
			Body:             body,
			Namespace:        namespace,
			TemplateLanguage: templateLanguage,
			TemplateSlug:     templateSlug,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.UpdateTemplateLocalizationV1Admin(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	UpdateTemplateLocalizationV1AdminCmd.Flags().StringP("body", "by", " ", "Body")
	_ = UpdateTemplateLocalizationV1AdminCmd.MarkFlagRequired("body")
	UpdateTemplateLocalizationV1AdminCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = UpdateTemplateLocalizationV1AdminCmd.MarkFlagRequired("namespace")
	UpdateTemplateLocalizationV1AdminCmd.Flags().StringP("templateLanguage", "te", " ", "Template language")
	_ = UpdateTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateLanguage")
	UpdateTemplateLocalizationV1AdminCmd.Flags().StringP("templateSlug", "tg", " ", "Template slug")
	_ = UpdateTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateSlug")
}

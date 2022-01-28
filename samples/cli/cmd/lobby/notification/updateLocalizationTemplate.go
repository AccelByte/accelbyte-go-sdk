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

// UpdateLocalizationTemplateCmd represents the UpdateLocalizationTemplate command
var UpdateLocalizationTemplateCmd = &cobra.Command{
	Use:   "updateLocalizationTemplate",
	Short: "Update localization template",
	Long:  `Update localization template`,
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
		input := &notification.UpdateLocalizationTemplateParams{
			Body:             body,
			Namespace:        namespace,
			TemplateLanguage: templateLanguage,
			TemplateSlug:     templateSlug,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.UpdateLocalizationTemplate(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	UpdateLocalizationTemplateCmd.Flags().StringP("body", "", " ", "Body")
	_ = UpdateLocalizationTemplateCmd.MarkFlagRequired("body")
	UpdateLocalizationTemplateCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = UpdateLocalizationTemplateCmd.MarkFlagRequired("namespace")
	UpdateLocalizationTemplateCmd.Flags().StringP("templateLanguage", "", " ", "Template language")
	_ = UpdateLocalizationTemplateCmd.MarkFlagRequired("templateLanguage")
	UpdateLocalizationTemplateCmd.Flags().StringP("templateSlug", "", " ", "Template slug")
	_ = UpdateLocalizationTemplateCmd.MarkFlagRequired("templateSlug")
}

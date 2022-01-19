// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateTemplateLocalizationV1AdminCmd represents the updateTemplateLocalizationV1Admin command
var updateTemplateLocalizationV1AdminCmd = &cobra.Command{
	Use:   "updateTemplateLocalizationV1Admin",
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
	cmd.RootCmd.AddCommand(updateTemplateLocalizationV1AdminCmd)
	updateTemplateLocalizationV1AdminCmd.Flags().StringP("body", "b", " ", "Body")
	_ = updateTemplateLocalizationV1AdminCmd.MarkFlagRequired("body")
	updateTemplateLocalizationV1AdminCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateTemplateLocalizationV1AdminCmd.MarkFlagRequired("namespace")
	updateTemplateLocalizationV1AdminCmd.Flags().StringP("templateLanguage", "t", " ", "Template language")
	_ = updateTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateLanguage")
	updateTemplateLocalizationV1AdminCmd.Flags().StringP("templateSlug", "t", " ", "Template slug")
	_ = updateTemplateLocalizationV1AdminCmd.MarkFlagRequired("templateSlug")
}

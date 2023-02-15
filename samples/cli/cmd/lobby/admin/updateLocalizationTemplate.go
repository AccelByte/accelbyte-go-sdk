// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/admin"
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
		adminService := &lobby.AdminService{
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
		input := &admin.UpdateLocalizationTemplateParams{
			Body:             body,
			Namespace:        namespace,
			TemplateLanguage: templateLanguage,
			TemplateSlug:     templateSlug,
		}
		errInput := adminService.UpdateLocalizationTemplateShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	UpdateLocalizationTemplateCmd.Flags().String("body", "", "Body")
	_ = UpdateLocalizationTemplateCmd.MarkFlagRequired("body")
	UpdateLocalizationTemplateCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateLocalizationTemplateCmd.MarkFlagRequired("namespace")
	UpdateLocalizationTemplateCmd.Flags().String("templateLanguage", "", "Template language")
	_ = UpdateLocalizationTemplateCmd.MarkFlagRequired("templateLanguage")
	UpdateLocalizationTemplateCmd.Flags().String("templateSlug", "", "Template slug")
	_ = UpdateLocalizationTemplateCmd.MarkFlagRequired("templateSlug")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteTemplateLocalizationCmd represents the DeleteTemplateLocalization command
var DeleteTemplateLocalizationCmd = &cobra.Command{
	Use:   "deleteTemplateLocalization",
	Short: "Delete template localization",
	Long:  `Delete template localization`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &lobby.AdminService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateLanguage, _ := cmd.Flags().GetString("templateLanguage")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		input := &admin.DeleteTemplateLocalizationParams{
			Namespace:        namespace,
			TemplateLanguage: templateLanguage,
			TemplateSlug:     templateSlug,
		}
		errNoContent := adminService.DeleteTemplateLocalizationShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteTemplateLocalizationCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteTemplateLocalizationCmd.MarkFlagRequired("namespace")
	DeleteTemplateLocalizationCmd.Flags().String("templateLanguage", "", "Template language")
	_ = DeleteTemplateLocalizationCmd.MarkFlagRequired("templateLanguage")
	DeleteTemplateLocalizationCmd.Flags().String("templateSlug", "", "Template slug")
	_ = DeleteTemplateLocalizationCmd.MarkFlagRequired("templateSlug")
}

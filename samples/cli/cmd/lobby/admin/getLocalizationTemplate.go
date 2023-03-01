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

// GetLocalizationTemplateCmd represents the GetLocalizationTemplate command
var GetLocalizationTemplateCmd = &cobra.Command{
	Use:   "getLocalizationTemplate",
	Short: "Get localization template",
	Long:  `Get localization template`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &lobby.AdminService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateLanguage, _ := cmd.Flags().GetString("templateLanguage")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		input := &admin.GetLocalizationTemplateParams{
			Namespace:        namespace,
			TemplateLanguage: templateLanguage,
			TemplateSlug:     templateSlug,
		}
		ok, errOK := adminService.GetLocalizationTemplateShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetLocalizationTemplateCmd.Flags().String("namespace", "", "Namespace")
	_ = GetLocalizationTemplateCmd.MarkFlagRequired("namespace")
	GetLocalizationTemplateCmd.Flags().String("templateLanguage", "", "Template language")
	_ = GetLocalizationTemplateCmd.MarkFlagRequired("templateLanguage")
	GetLocalizationTemplateCmd.Flags().String("templateSlug", "", "Template slug")
	_ = GetLocalizationTemplateCmd.MarkFlagRequired("templateSlug")
}

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

// PublishTemplateCmd represents the PublishTemplate command
var PublishTemplateCmd = &cobra.Command{
	Use:   "publishTemplate",
	Short: "Publish template",
	Long:  `Publish template`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &lobby.AdminService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateLanguage, _ := cmd.Flags().GetString("templateLanguage")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		input := &admin.PublishTemplateParams{
			Namespace:        namespace,
			TemplateLanguage: templateLanguage,
			TemplateSlug:     templateSlug,
		}
		errNoContent := adminService.PublishTemplateShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublishTemplateCmd.Flags().String("namespace", "", "Namespace")
	_ = PublishTemplateCmd.MarkFlagRequired("namespace")
	PublishTemplateCmd.Flags().String("templateLanguage", "", "Template language")
	_ = PublishTemplateCmd.MarkFlagRequired("templateLanguage")
	PublishTemplateCmd.Flags().String("templateSlug", "", "Template slug")
	_ = PublishTemplateCmd.MarkFlagRequired("templateSlug")
}

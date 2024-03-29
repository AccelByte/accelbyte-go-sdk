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

// DeleteTemplateSlugCmd represents the DeleteTemplateSlug command
var DeleteTemplateSlugCmd = &cobra.Command{
	Use:   "deleteTemplateSlug",
	Short: "Delete template slug",
	Long:  `Delete template slug`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &lobby.AdminService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		input := &admin.DeleteTemplateSlugParams{
			Namespace:    namespace,
			TemplateSlug: templateSlug,
		}
		errNoContent := adminService.DeleteTemplateSlugShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteTemplateSlugCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteTemplateSlugCmd.MarkFlagRequired("namespace")
	DeleteTemplateSlugCmd.Flags().String("templateSlug", "", "Template slug")
	_ = DeleteTemplateSlugCmd.MarkFlagRequired("templateSlug")
}

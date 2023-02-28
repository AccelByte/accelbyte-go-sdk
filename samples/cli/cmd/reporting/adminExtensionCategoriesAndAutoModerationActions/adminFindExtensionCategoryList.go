// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminExtensionCategoriesAndAutoModerationActions

import (
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_extension_categories_and_auto_moderation_actions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/reporting"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminFindExtensionCategoryListCmd represents the AdminFindExtensionCategoryList command
var AdminFindExtensionCategoryListCmd = &cobra.Command{
	Use:   "adminFindExtensionCategoryList",
	Short: "Admin find extension category list",
	Long:  `Admin find extension category list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminExtensionCategoriesAndAutoModerationActionsService := &reporting.AdminExtensionCategoriesandAutoModerationActionsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		order, _ := cmd.Flags().GetString("order")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &admin_extension_categories_and_auto_moderation_actions.AdminFindExtensionCategoryListParams{
			Order:  &order,
			SortBy: &sortBy,
		}
		ok, errOK := adminExtensionCategoriesAndAutoModerationActionsService.AdminFindExtensionCategoryListShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminFindExtensionCategoryListCmd.Flags().String("order", "", "Order")
	AdminFindExtensionCategoryListCmd.Flags().String("sortBy", "", "Sort by")
}

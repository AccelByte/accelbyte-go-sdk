// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminIntegrationConfigurations

import (
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_integration_configurations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListIntegrationConfigurationsCmd represents the AdminListIntegrationConfigurations command
var AdminListIntegrationConfigurationsCmd = &cobra.Command{
	Use:   "adminListIntegrationConfigurations",
	Short: "Admin list integration configurations",
	Long:  `Admin list integration configurations`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminIntegrationConfigurationsService := &inventory.AdminIntegrationConfigurationsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &admin_integration_configurations.AdminListIntegrationConfigurationsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
		}
		ok, errOK := adminIntegrationConfigurationsService.AdminListIntegrationConfigurationsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListIntegrationConfigurationsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListIntegrationConfigurationsCmd.MarkFlagRequired("namespace")
	AdminListIntegrationConfigurationsCmd.Flags().Int64("limit", 20, "Limit")
	AdminListIntegrationConfigurationsCmd.Flags().Int64("offset", 0, "Offset")
	AdminListIntegrationConfigurationsCmd.Flags().String("sortBy", "", "Sort by")
}

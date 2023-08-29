// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminInventoryConfigurations

import (
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_inventory_configurations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteInventoryConfigurationCmd represents the AdminDeleteInventoryConfiguration command
var AdminDeleteInventoryConfigurationCmd = &cobra.Command{
	Use:   "adminDeleteInventoryConfiguration",
	Short: "Admin delete inventory configuration",
	Long:  `Admin delete inventory configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminInventoryConfigurationsService := &inventory.AdminInventoryConfigurationsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		inventoryConfigurationId, _ := cmd.Flags().GetString("inventoryConfigurationId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_inventory_configurations.AdminDeleteInventoryConfigurationParams{
			InventoryConfigurationID: inventoryConfigurationId,
			Namespace:                namespace,
		}
		errNoContent := adminInventoryConfigurationsService.AdminDeleteInventoryConfigurationShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteInventoryConfigurationCmd.Flags().String("inventoryConfigurationId", "", "Inventory configuration id")
	_ = AdminDeleteInventoryConfigurationCmd.MarkFlagRequired("inventoryConfigurationId")
	AdminDeleteInventoryConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteInventoryConfigurationCmd.MarkFlagRequired("namespace")
}

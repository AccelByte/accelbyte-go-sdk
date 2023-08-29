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

// AdminGetInventoryConfigurationCmd represents the AdminGetInventoryConfiguration command
var AdminGetInventoryConfigurationCmd = &cobra.Command{
	Use:   "adminGetInventoryConfiguration",
	Short: "Admin get inventory configuration",
	Long:  `Admin get inventory configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminInventoryConfigurationsService := &inventory.AdminInventoryConfigurationsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		inventoryConfigurationId, _ := cmd.Flags().GetString("inventoryConfigurationId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_inventory_configurations.AdminGetInventoryConfigurationParams{
			InventoryConfigurationID: inventoryConfigurationId,
			Namespace:                namespace,
		}
		ok, errOK := adminInventoryConfigurationsService.AdminGetInventoryConfigurationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetInventoryConfigurationCmd.Flags().String("inventoryConfigurationId", "", "Inventory configuration id")
	_ = AdminGetInventoryConfigurationCmd.MarkFlagRequired("inventoryConfigurationId")
	AdminGetInventoryConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetInventoryConfigurationCmd.MarkFlagRequired("namespace")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminInventories

import (
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_inventories"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetInventoryCmd represents the AdminGetInventory command
var AdminGetInventoryCmd = &cobra.Command{
	Use:   "adminGetInventory",
	Short: "Admin get inventory",
	Long:  `Admin get inventory`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminInventoriesService := &inventory.AdminInventoriesService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		inventoryId, _ := cmd.Flags().GetString("inventoryId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_inventories.AdminGetInventoryParams{
			InventoryID: inventoryId,
			Namespace:   namespace,
		}
		ok, errOK := adminInventoriesService.AdminGetInventoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetInventoryCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = AdminGetInventoryCmd.MarkFlagRequired("inventoryId")
	AdminGetInventoryCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetInventoryCmd.MarkFlagRequired("namespace")
}

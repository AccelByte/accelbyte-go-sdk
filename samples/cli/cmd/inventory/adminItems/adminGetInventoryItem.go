// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminItems

import (
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_items"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetInventoryItemCmd represents the AdminGetInventoryItem command
var AdminGetInventoryItemCmd = &cobra.Command{
	Use:   "adminGetInventoryItem",
	Short: "Admin get inventory item",
	Long:  `Admin get inventory item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminItemsService := &inventory.AdminItemsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		inventoryId, _ := cmd.Flags().GetString("inventoryId")
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_items.AdminGetInventoryItemParams{
			InventoryID: inventoryId,
			ItemID:      itemId,
			Namespace:   namespace,
		}
		ok, errOK := adminItemsService.AdminGetInventoryItemShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetInventoryItemCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = AdminGetInventoryItemCmd.MarkFlagRequired("inventoryId")
	AdminGetInventoryItemCmd.Flags().String("itemId", "", "Item id")
	_ = AdminGetInventoryItemCmd.MarkFlagRequired("itemId")
	AdminGetInventoryItemCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetInventoryItemCmd.MarkFlagRequired("namespace")
}

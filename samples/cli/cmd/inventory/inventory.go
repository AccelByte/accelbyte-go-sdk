// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inventory

import (
	"github.com/AccelByte/sample-apps/cmd/inventory/adminInventories"
	"github.com/AccelByte/sample-apps/cmd/inventory/adminInventoryConfigurations"
	"github.com/AccelByte/sample-apps/cmd/inventory/adminItemTypes"
	"github.com/AccelByte/sample-apps/cmd/inventory/adminItems"
	"github.com/AccelByte/sample-apps/cmd/inventory/adminTags"
	"github.com/AccelByte/sample-apps/cmd/inventory/publicInventories"
	"github.com/AccelByte/sample-apps/cmd/inventory/publicInventoryConfigurations"
	"github.com/AccelByte/sample-apps/cmd/inventory/publicItemTypes"
	"github.com/AccelByte/sample-apps/cmd/inventory/publicItems"
	"github.com/AccelByte/sample-apps/cmd/inventory/publicTags"
	"github.com/spf13/cobra"
)

// InventoryCmd represents the service's child command
var InventoryCmd = &cobra.Command{
	Use:   "Inventory",
	Short: "Inventory to get all the commands",
}

func init() {
	InventoryCmd.AddCommand(adminInventories.AdminListInventoriesCmd)
	InventoryCmd.AddCommand(adminInventories.AdminCreateInventoryCmd)
	InventoryCmd.AddCommand(adminInventories.AdminGetInventoryCmd)
	InventoryCmd.AddCommand(adminInventories.AdminUpdateInventoryCmd)
	InventoryCmd.AddCommand(adminInventories.DeleteInventoryCmd)
	InventoryCmd.AddCommand(adminItems.AdminListItemsCmd)
	InventoryCmd.AddCommand(adminItems.AdminGetInventoryItemCmd)
	InventoryCmd.AddCommand(adminInventoryConfigurations.AdminListInventoryConfigurationsCmd)
	InventoryCmd.AddCommand(adminInventoryConfigurations.AdminCreateInventoryConfigurationCmd)
	InventoryCmd.AddCommand(adminInventoryConfigurations.AdminGetInventoryConfigurationCmd)
	InventoryCmd.AddCommand(adminInventoryConfigurations.AdminUpdateInventoryConfigurationCmd)
	InventoryCmd.AddCommand(adminInventoryConfigurations.AdminDeleteInventoryConfigurationCmd)
	InventoryCmd.AddCommand(adminItemTypes.AdminListItemTypesCmd)
	InventoryCmd.AddCommand(adminItemTypes.AdminCreateItemTypeCmd)
	InventoryCmd.AddCommand(adminItemTypes.AdminDeleteItemTypeCmd)
	InventoryCmd.AddCommand(adminTags.AdminListTagsCmd)
	InventoryCmd.AddCommand(adminTags.AdminCreateTagCmd)
	InventoryCmd.AddCommand(adminTags.AdminDeleteTagCmd)
	InventoryCmd.AddCommand(adminItems.AdminBulkUpdateMyItemsCmd)
	InventoryCmd.AddCommand(adminItems.AdminSaveItemToInventoryCmd)
	InventoryCmd.AddCommand(adminItems.AdminBulkRemoveItemsCmd)
	InventoryCmd.AddCommand(adminItems.AdminConsumeUserItemCmd)
	InventoryCmd.AddCommand(adminItems.AdminSaveItemCmd)
	InventoryCmd.AddCommand(publicInventoryConfigurations.PublicListInventoryConfigurationsCmd)
	InventoryCmd.AddCommand(publicItemTypes.PublicListItemTypesCmd)
	InventoryCmd.AddCommand(publicTags.PublicListTagsCmd)
	InventoryCmd.AddCommand(publicInventories.PublicListInventoriesCmd)
	InventoryCmd.AddCommand(publicItems.PublicListItemsCmd)
	InventoryCmd.AddCommand(publicItems.PublicBulkUpdateMyItemsCmd)
	InventoryCmd.AddCommand(publicItems.PublicBulkRemoveMyItemsCmd)
	InventoryCmd.AddCommand(publicItems.PublicMoveMyItemsCmd)
	InventoryCmd.AddCommand(publicItems.PublicGetItemCmd)
	InventoryCmd.AddCommand(publicItems.PublicConsumeMyItemCmd)
}

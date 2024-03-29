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
		namespace, _ := cmd.Flags().GetString("namespace")
		slotId, _ := cmd.Flags().GetString("slotId")
		sourceItemId, _ := cmd.Flags().GetString("sourceItemId")
		input := &admin_items.AdminGetInventoryItemParams{
			InventoryID:  inventoryId,
			Namespace:    namespace,
			SlotID:       slotId,
			SourceItemID: sourceItemId,
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
	AdminGetInventoryItemCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetInventoryItemCmd.MarkFlagRequired("namespace")
	AdminGetInventoryItemCmd.Flags().String("slotId", "", "Slot id")
	_ = AdminGetInventoryItemCmd.MarkFlagRequired("slotId")
	AdminGetInventoryItemCmd.Flags().String("sourceItemId", "", "Source item id")
	_ = AdminGetInventoryItemCmd.MarkFlagRequired("sourceItemId")
}

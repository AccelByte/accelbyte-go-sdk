// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicItems

import (
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/public_items"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetItemCmd represents the PublicGetItem command
var PublicGetItemCmd = &cobra.Command{
	Use:   "publicGetItem",
	Short: "Public get item",
	Long:  `Public get item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicItemsService := &inventory.PublicItemsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		inventoryId, _ := cmd.Flags().GetString("inventoryId")
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_items.PublicGetItemParams{
			InventoryID: inventoryId,
			ItemID:      itemId,
			Namespace:   namespace,
		}
		ok, errOK := publicItemsService.PublicGetItemShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetItemCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = PublicGetItemCmd.MarkFlagRequired("inventoryId")
	PublicGetItemCmd.Flags().String("itemId", "", "Item id")
	_ = PublicGetItemCmd.MarkFlagRequired("itemId")
	PublicGetItemCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetItemCmd.MarkFlagRequired("namespace")
}

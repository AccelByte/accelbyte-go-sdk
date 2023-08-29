// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminInventories

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_inventories"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteInventoryCmd represents the DeleteInventory command
var DeleteInventoryCmd = &cobra.Command{
	Use:   "deleteInventory",
	Short: "Delete inventory",
	Long:  `Delete inventory`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminInventoriesService := &inventory.AdminInventoriesService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsDeleteInventoryReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		inventoryId, _ := cmd.Flags().GetString("inventoryId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_inventories.DeleteInventoryParams{
			Body:        body,
			InventoryID: inventoryId,
			Namespace:   namespace,
		}
		errNoContent := adminInventoriesService.DeleteInventoryShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteInventoryCmd.Flags().String("body", "", "Body")
	_ = DeleteInventoryCmd.MarkFlagRequired("body")
	DeleteInventoryCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = DeleteInventoryCmd.MarkFlagRequired("inventoryId")
	DeleteInventoryCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteInventoryCmd.MarkFlagRequired("namespace")
}

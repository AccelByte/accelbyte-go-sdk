// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminItems

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_items"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminBulkSaveItemToInventoryCmd represents the AdminBulkSaveItemToInventory command
var AdminBulkSaveItemToInventoryCmd = &cobra.Command{
	Use:   "adminBulkSaveItemToInventory",
	Short: "Admin bulk save item to inventory",
	Long:  `Admin bulk save item to inventory`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminItemsService := &inventory.AdminItemsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*inventoryclientmodels.ApimodelsSaveItemToInventoryReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		inventoryId, _ := cmd.Flags().GetString("inventoryId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_items.AdminBulkSaveItemToInventoryParams{
			Body:        body,
			InventoryID: inventoryId,
			Namespace:   namespace,
			UserID:      userId,
		}
		ok, errOK := adminItemsService.AdminBulkSaveItemToInventoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminBulkSaveItemToInventoryCmd.Flags().String("body", "", "Body")
	_ = AdminBulkSaveItemToInventoryCmd.MarkFlagRequired("body")
	AdminBulkSaveItemToInventoryCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = AdminBulkSaveItemToInventoryCmd.MarkFlagRequired("inventoryId")
	AdminBulkSaveItemToInventoryCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkSaveItemToInventoryCmd.MarkFlagRequired("namespace")
	AdminBulkSaveItemToInventoryCmd.Flags().String("userId", "", "User id")
	_ = AdminBulkSaveItemToInventoryCmd.MarkFlagRequired("userId")
}

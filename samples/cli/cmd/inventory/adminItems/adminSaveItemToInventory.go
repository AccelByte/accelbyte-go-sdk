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

// AdminSaveItemToInventoryCmd represents the AdminSaveItemToInventory command
var AdminSaveItemToInventoryCmd = &cobra.Command{
	Use:   "adminSaveItemToInventory",
	Short: "Admin save item to inventory",
	Long:  `Admin save item to inventory`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminItemsService := &inventory.AdminItemsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsSaveItemToInventoryReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		inventoryId, _ := cmd.Flags().GetString("inventoryId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_items.AdminSaveItemToInventoryParams{
			Body:        body,
			InventoryID: inventoryId,
			Namespace:   namespace,
			UserID:      userId,
		}
		ok, errOK := adminItemsService.AdminSaveItemToInventoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminSaveItemToInventoryCmd.Flags().String("body", "", "Body")
	_ = AdminSaveItemToInventoryCmd.MarkFlagRequired("body")
	AdminSaveItemToInventoryCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = AdminSaveItemToInventoryCmd.MarkFlagRequired("inventoryId")
	AdminSaveItemToInventoryCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSaveItemToInventoryCmd.MarkFlagRequired("namespace")
	AdminSaveItemToInventoryCmd.Flags().String("userId", "", "User id")
	_ = AdminSaveItemToInventoryCmd.MarkFlagRequired("userId")
}

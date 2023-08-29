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

// AdminBulkRemoveItemsCmd represents the AdminBulkRemoveItems command
var AdminBulkRemoveItemsCmd = &cobra.Command{
	Use:   "adminBulkRemoveItems",
	Short: "Admin bulk remove items",
	Long:  `Admin bulk remove items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminItemsService := &inventory.AdminItemsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsBulkRemoveItemsReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		inventoryId, _ := cmd.Flags().GetString("inventoryId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_items.AdminBulkRemoveItemsParams{
			Body:        body,
			InventoryID: inventoryId,
			Namespace:   namespace,
			UserID:      userId,
		}
		ok, errOK := adminItemsService.AdminBulkRemoveItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminBulkRemoveItemsCmd.Flags().String("body", "", "Body")
	_ = AdminBulkRemoveItemsCmd.MarkFlagRequired("body")
	AdminBulkRemoveItemsCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = AdminBulkRemoveItemsCmd.MarkFlagRequired("inventoryId")
	AdminBulkRemoveItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkRemoveItemsCmd.MarkFlagRequired("namespace")
	AdminBulkRemoveItemsCmd.Flags().String("userId", "", "User id")
	_ = AdminBulkRemoveItemsCmd.MarkFlagRequired("userId")
}

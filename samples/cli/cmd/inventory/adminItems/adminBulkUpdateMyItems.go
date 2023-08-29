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

// AdminBulkUpdateMyItemsCmd represents the AdminBulkUpdateMyItems command
var AdminBulkUpdateMyItemsCmd = &cobra.Command{
	Use:   "adminBulkUpdateMyItems",
	Short: "Admin bulk update my items",
	Long:  `Admin bulk update my items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminItemsService := &inventory.AdminItemsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*inventoryclientmodels.ApimodelsAdminUpdateItemReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		inventoryId, _ := cmd.Flags().GetString("inventoryId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_items.AdminBulkUpdateMyItemsParams{
			Body:        body,
			InventoryID: inventoryId,
			Namespace:   namespace,
			UserID:      userId,
		}
		ok, errOK := adminItemsService.AdminBulkUpdateMyItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminBulkUpdateMyItemsCmd.Flags().String("body", "", "Body")
	_ = AdminBulkUpdateMyItemsCmd.MarkFlagRequired("body")
	AdminBulkUpdateMyItemsCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = AdminBulkUpdateMyItemsCmd.MarkFlagRequired("inventoryId")
	AdminBulkUpdateMyItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkUpdateMyItemsCmd.MarkFlagRequired("namespace")
	AdminBulkUpdateMyItemsCmd.Flags().String("userId", "", "User id")
	_ = AdminBulkUpdateMyItemsCmd.MarkFlagRequired("userId")
}

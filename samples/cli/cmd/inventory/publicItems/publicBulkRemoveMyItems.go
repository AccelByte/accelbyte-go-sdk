// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicItems

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/public_items"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicBulkRemoveMyItemsCmd represents the PublicBulkRemoveMyItems command
var PublicBulkRemoveMyItemsCmd = &cobra.Command{
	Use:   "publicBulkRemoveMyItems",
	Short: "Public bulk remove my items",
	Long:  `Public bulk remove my items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicItemsService := &inventory.PublicItemsService{
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
		input := &public_items.PublicBulkRemoveMyItemsParams{
			Body:        body,
			InventoryID: inventoryId,
			Namespace:   namespace,
		}
		ok, errOK := publicItemsService.PublicBulkRemoveMyItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicBulkRemoveMyItemsCmd.Flags().String("body", "", "Body")
	_ = PublicBulkRemoveMyItemsCmd.MarkFlagRequired("body")
	PublicBulkRemoveMyItemsCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = PublicBulkRemoveMyItemsCmd.MarkFlagRequired("inventoryId")
	PublicBulkRemoveMyItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicBulkRemoveMyItemsCmd.MarkFlagRequired("namespace")
}

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

// PublicBulkUpdateMyItemsCmd represents the PublicBulkUpdateMyItems command
var PublicBulkUpdateMyItemsCmd = &cobra.Command{
	Use:   "publicBulkUpdateMyItems",
	Short: "Public bulk update my items",
	Long:  `Public bulk update my items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicItemsService := &inventory.PublicItemsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*inventoryclientmodels.ApimodelsUpdateItemReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		inventoryId, _ := cmd.Flags().GetString("inventoryId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_items.PublicBulkUpdateMyItemsParams{
			Body:        body,
			InventoryID: inventoryId,
			Namespace:   namespace,
		}
		ok, errOK := publicItemsService.PublicBulkUpdateMyItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicBulkUpdateMyItemsCmd.Flags().String("body", "", "Body")
	_ = PublicBulkUpdateMyItemsCmd.MarkFlagRequired("body")
	PublicBulkUpdateMyItemsCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = PublicBulkUpdateMyItemsCmd.MarkFlagRequired("inventoryId")
	PublicBulkUpdateMyItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicBulkUpdateMyItemsCmd.MarkFlagRequired("namespace")
}

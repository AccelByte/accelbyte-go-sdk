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

// PublicMoveMyItemsCmd represents the PublicMoveMyItems command
var PublicMoveMyItemsCmd = &cobra.Command{
	Use:   "publicMoveMyItems",
	Short: "Public move my items",
	Long:  `Public move my items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicItemsService := &inventory.PublicItemsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsMoveItemsReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		inventoryId, _ := cmd.Flags().GetString("inventoryId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_items.PublicMoveMyItemsParams{
			Body:        body,
			InventoryID: inventoryId,
			Namespace:   namespace,
		}
		ok, errOK := publicItemsService.PublicMoveMyItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicMoveMyItemsCmd.Flags().String("body", "", "Body")
	_ = PublicMoveMyItemsCmd.MarkFlagRequired("body")
	PublicMoveMyItemsCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = PublicMoveMyItemsCmd.MarkFlagRequired("inventoryId")
	PublicMoveMyItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicMoveMyItemsCmd.MarkFlagRequired("namespace")
}

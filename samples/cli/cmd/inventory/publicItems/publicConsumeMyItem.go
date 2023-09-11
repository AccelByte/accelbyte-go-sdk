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

// PublicConsumeMyItemCmd represents the PublicConsumeMyItem command
var PublicConsumeMyItemCmd = &cobra.Command{
	Use:   "publicConsumeMyItem",
	Short: "Public consume my item",
	Long:  `Public consume my item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicItemsService := &inventory.PublicItemsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsConsumeItemReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		inventoryId, _ := cmd.Flags().GetString("inventoryId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_items.PublicConsumeMyItemParams{
			Body:        body,
			InventoryID: inventoryId,
			Namespace:   namespace,
		}
		ok, errOK := publicItemsService.PublicConsumeMyItemShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicConsumeMyItemCmd.Flags().String("body", "", "Body")
	_ = PublicConsumeMyItemCmd.MarkFlagRequired("body")
	PublicConsumeMyItemCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = PublicConsumeMyItemCmd.MarkFlagRequired("inventoryId")
	PublicConsumeMyItemCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicConsumeMyItemCmd.MarkFlagRequired("namespace")
}

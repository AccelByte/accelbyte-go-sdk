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

// AdminConsumeUserItemCmd represents the AdminConsumeUserItem command
var AdminConsumeUserItemCmd = &cobra.Command{
	Use:   "adminConsumeUserItem",
	Short: "Admin consume user item",
	Long:  `Admin consume user item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminItemsService := &inventory.AdminItemsService{
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
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_items.AdminConsumeUserItemParams{
			Body:        body,
			InventoryID: inventoryId,
			ItemID:      itemId,
			Namespace:   namespace,
			UserID:      userId,
		}
		ok, errOK := adminItemsService.AdminConsumeUserItemShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminConsumeUserItemCmd.Flags().String("body", "", "Body")
	_ = AdminConsumeUserItemCmd.MarkFlagRequired("body")
	AdminConsumeUserItemCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = AdminConsumeUserItemCmd.MarkFlagRequired("inventoryId")
	AdminConsumeUserItemCmd.Flags().String("itemId", "", "Item id")
	_ = AdminConsumeUserItemCmd.MarkFlagRequired("itemId")
	AdminConsumeUserItemCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminConsumeUserItemCmd.MarkFlagRequired("namespace")
	AdminConsumeUserItemCmd.Flags().String("userId", "", "User id")
	_ = AdminConsumeUserItemCmd.MarkFlagRequired("userId")
}

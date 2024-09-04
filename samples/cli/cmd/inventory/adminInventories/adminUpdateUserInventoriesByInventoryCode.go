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

// AdminUpdateUserInventoriesByInventoryCodeCmd represents the AdminUpdateUserInventoriesByInventoryCode command
var AdminUpdateUserInventoriesByInventoryCodeCmd = &cobra.Command{
	Use:   "adminUpdateUserInventoriesByInventoryCode",
	Short: "Admin update user inventories by inventory code",
	Long:  `Admin update user inventories by inventory code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminInventoriesService := &inventory.AdminInventoriesService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsUpdateInventoryReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		inventoryConfigurationCode, _ := cmd.Flags().GetString("inventoryConfigurationCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_inventories.AdminUpdateUserInventoriesByInventoryCodeParams{
			Body:                       body,
			InventoryConfigurationCode: inventoryConfigurationCode,
			Namespace:                  namespace,
			UserID:                     userId,
		}
		ok, errOK := adminInventoriesService.AdminUpdateUserInventoriesByInventoryCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateUserInventoriesByInventoryCodeCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateUserInventoriesByInventoryCodeCmd.MarkFlagRequired("body")
	AdminUpdateUserInventoriesByInventoryCodeCmd.Flags().String("inventoryConfigurationCode", "", "Inventory configuration code")
	_ = AdminUpdateUserInventoriesByInventoryCodeCmd.MarkFlagRequired("inventoryConfigurationCode")
	AdminUpdateUserInventoriesByInventoryCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateUserInventoriesByInventoryCodeCmd.MarkFlagRequired("namespace")
	AdminUpdateUserInventoriesByInventoryCodeCmd.Flags().String("userId", "", "User id")
	_ = AdminUpdateUserInventoriesByInventoryCodeCmd.MarkFlagRequired("userId")
}

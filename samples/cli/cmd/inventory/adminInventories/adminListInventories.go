// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminInventories

import (
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_inventories"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListInventoriesCmd represents the AdminListInventories command
var AdminListInventoriesCmd = &cobra.Command{
	Use:   "adminListInventories",
	Short: "Admin list inventories",
	Long:  `Admin list inventories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminInventoriesService := &inventory.AdminInventoriesService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		inventoryConfigurationCode, _ := cmd.Flags().GetString("inventoryConfigurationCode")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_inventories.AdminListInventoriesParams{
			Namespace:                  namespace,
			InventoryConfigurationCode: &inventoryConfigurationCode,
			Limit:                      &limit,
			Offset:                     &offset,
			SortBy:                     &sortBy,
			UserID:                     &userId,
		}
		ok, errOK := adminInventoriesService.AdminListInventoriesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListInventoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListInventoriesCmd.MarkFlagRequired("namespace")
	AdminListInventoriesCmd.Flags().String("inventoryConfigurationCode", "", "Inventory configuration code")
	AdminListInventoriesCmd.Flags().Int64("limit", 20, "Limit")
	AdminListInventoriesCmd.Flags().Int64("offset", 0, "Offset")
	AdminListInventoriesCmd.Flags().String("sortBy", "", "Sort by")
	AdminListInventoriesCmd.Flags().String("userId", "", "User id")
}

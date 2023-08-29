// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicInventories

import (
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/public_inventories"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicListInventoriesCmd represents the PublicListInventories command
var PublicListInventoriesCmd = &cobra.Command{
	Use:   "publicListInventories",
	Short: "Public list inventories",
	Long:  `Public list inventories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicInventoriesService := &inventory.PublicInventoriesService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		inventoryConfigurationCode, _ := cmd.Flags().GetString("inventoryConfigurationCode")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &public_inventories.PublicListInventoriesParams{
			Namespace:                  namespace,
			InventoryConfigurationCode: &inventoryConfigurationCode,
			Limit:                      &limit,
			Offset:                     &offset,
			SortBy:                     &sortBy,
		}
		ok, errOK := publicInventoriesService.PublicListInventoriesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListInventoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListInventoriesCmd.MarkFlagRequired("namespace")
	PublicListInventoriesCmd.Flags().String("inventoryConfigurationCode", "", "Inventory configuration code")
	PublicListInventoriesCmd.Flags().Int64("limit", 20, "Limit")
	PublicListInventoriesCmd.Flags().Int64("offset", 0, "Offset")
	PublicListInventoriesCmd.Flags().String("sortBy", "", "Sort by")
}

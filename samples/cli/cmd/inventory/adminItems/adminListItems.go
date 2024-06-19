// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminItems

import (
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_items"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListItemsCmd represents the AdminListItems command
var AdminListItemsCmd = &cobra.Command{
	Use:   "adminListItems",
	Short: "Admin list items",
	Long:  `Admin list items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminItemsService := &inventory.AdminItemsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		inventoryId, _ := cmd.Flags().GetString("inventoryId")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		sourceItemId, _ := cmd.Flags().GetString("sourceItemId")
		tags, _ := cmd.Flags().GetString("tags")
		input := &admin_items.AdminListItemsParams{
			InventoryID:  inventoryId,
			Namespace:    namespace,
			Limit:        &limit,
			Offset:       &offset,
			SortBy:       &sortBy,
			SourceItemID: &sourceItemId,
			Tags:         &tags,
		}
		ok, errOK := adminItemsService.AdminListItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListItemsCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = AdminListItemsCmd.MarkFlagRequired("inventoryId")
	AdminListItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListItemsCmd.MarkFlagRequired("namespace")
	AdminListItemsCmd.Flags().Int64("limit", 20, "Limit")
	AdminListItemsCmd.Flags().Int64("offset", 0, "Offset")
	AdminListItemsCmd.Flags().String("sortBy", "", "Sort by")
	AdminListItemsCmd.Flags().String("sourceItemId", "", "Source item id")
	AdminListItemsCmd.Flags().String("tags", "", "Tags")
}

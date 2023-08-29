// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicItems

import (
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/public_items"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicListItemsCmd represents the PublicListItems command
var PublicListItemsCmd = &cobra.Command{
	Use:   "publicListItems",
	Short: "Public list items",
	Long:  `Public list items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicItemsService := &inventory.PublicItemsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		inventoryId, _ := cmd.Flags().GetString("inventoryId")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		qtyGte, _ := cmd.Flags().GetInt64("qtyGte")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		sourceItemId, _ := cmd.Flags().GetString("sourceItemId")
		tags, _ := cmd.Flags().GetString("tags")
		input := &public_items.PublicListItemsParams{
			InventoryID:  inventoryId,
			Namespace:    namespace,
			Limit:        &limit,
			Offset:       &offset,
			QtyGte:       &qtyGte,
			SortBy:       &sortBy,
			SourceItemID: &sourceItemId,
			Tags:         &tags,
		}
		ok, errOK := publicItemsService.PublicListItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListItemsCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = PublicListItemsCmd.MarkFlagRequired("inventoryId")
	PublicListItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListItemsCmd.MarkFlagRequired("namespace")
	PublicListItemsCmd.Flags().Int64("limit", 20, "Limit")
	PublicListItemsCmd.Flags().Int64("offset", 0, "Offset")
	PublicListItemsCmd.Flags().Int64("qtyGte", 1, "Qty gte")
	PublicListItemsCmd.Flags().String("sortBy", "", "Sort by")
	PublicListItemsCmd.Flags().String("sourceItemId", "", "Source item id")
	PublicListItemsCmd.Flags().String("tags", "", "Tags")
}

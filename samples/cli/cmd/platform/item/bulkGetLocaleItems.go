// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// bulkGetLocaleItemsCmd represents the bulkGetLocaleItems command
var bulkGetLocaleItemsCmd = &cobra.Command{
	Use:   "bulkGetLocaleItems",
	Short: "Bulk get locale items",
	Long:  `Bulk get locale items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		itemIds, _ := cmd.Flags().GetString("itemIds")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		language, _ := cmd.Flags().GetString("language")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.BulkGetLocaleItemsParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			Language:   &language,
			Region:     &region,
			StoreID:    &storeId,
			ItemIds:    itemIds,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.BulkGetLocaleItems(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(bulkGetLocaleItemsCmd)
	bulkGetLocaleItemsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = bulkGetLocaleItemsCmd.MarkFlagRequired("namespace")
	bulkGetLocaleItemsCmd.Flags().BoolP("activeOnly", "a", false, "Active only")
	bulkGetLocaleItemsCmd.Flags().StringP("language", "l", " ", "Language")
	bulkGetLocaleItemsCmd.Flags().StringP("region", "r", " ", "Region")
	bulkGetLocaleItemsCmd.Flags().StringP("storeId", "s", " ", "Store id")
	bulkGetLocaleItemsCmd.Flags().StringP("itemIds", "i", " ", "Item ids")
	_ = bulkGetLocaleItemsCmd.MarkFlagRequired("itemIds")
}
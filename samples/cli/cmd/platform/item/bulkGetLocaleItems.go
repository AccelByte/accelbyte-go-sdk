// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package item

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// BulkGetLocaleItemsCmd represents the BulkGetLocaleItems command
var BulkGetLocaleItemsCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	BulkGetLocaleItemsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = BulkGetLocaleItemsCmd.MarkFlagRequired("namespace")
	BulkGetLocaleItemsCmd.Flags().BoolP("activeOnly", "", false, "Active only")
	BulkGetLocaleItemsCmd.Flags().StringP("language", "", "", "Language")
	BulkGetLocaleItemsCmd.Flags().StringP("region", "", "", "Region")
	BulkGetLocaleItemsCmd.Flags().StringP("storeId", "", "", "Store id")
	BulkGetLocaleItemsCmd.Flags().StringP("itemIds", "", "", "Item ids")
	_ = BulkGetLocaleItemsCmd.MarkFlagRequired("itemIds")
}

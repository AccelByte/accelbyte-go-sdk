// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicBulkGetItemsCmd represents the PublicBulkGetItems command
var PublicBulkGetItemsCmd = &cobra.Command{
	Use:   "publicBulkGetItems",
	Short: "Public bulk get items",
	Long:  `Public bulk get items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		itemIds, _ := cmd.Flags().GetString("itemIds")
		autoCalcEstimatedPrice, _ := cmd.Flags().GetBool("autoCalcEstimatedPrice")
		language, _ := cmd.Flags().GetString("language")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.PublicBulkGetItemsParams{
			Namespace:              namespace,
			AutoCalcEstimatedPrice: &autoCalcEstimatedPrice,
			Language:               &language,
			Region:                 &region,
			StoreID:                &storeId,
			ItemIds:                itemIds,
		}
		ok, errOK := itemService.PublicBulkGetItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicBulkGetItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicBulkGetItemsCmd.MarkFlagRequired("namespace")
	PublicBulkGetItemsCmd.Flags().Bool("autoCalcEstimatedPrice", false, "Auto calc estimated price")
	PublicBulkGetItemsCmd.Flags().String("language", "", "Language")
	PublicBulkGetItemsCmd.Flags().String("region", "", "Region")
	PublicBulkGetItemsCmd.Flags().String("storeId", "", "Store id")
	PublicBulkGetItemsCmd.Flags().String("itemIds", "", "Item ids")
	_ = PublicBulkGetItemsCmd.MarkFlagRequired("itemIds")
}

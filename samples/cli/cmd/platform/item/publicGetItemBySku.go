// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package item

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetItemBySkuCmd represents the PublicGetItemBySku command
var PublicGetItemBySkuCmd = &cobra.Command{
	Use:   "publicGetItemBySku",
	Short: "Public get item by sku",
	Long:  `Public get item by sku`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sku, _ := cmd.Flags().GetString("sku")
		language, _ := cmd.Flags().GetString("language")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.PublicGetItemBySkuParams{
			Namespace: namespace,
			Language:  &language,
			Region:    &region,
			StoreID:   &storeId,
			Sku:       sku,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.PublicGetItemBySku(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	PublicGetItemBySkuCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetItemBySkuCmd.MarkFlagRequired("namespace")
	PublicGetItemBySkuCmd.Flags().StringP("language", "", "", "Language")
	PublicGetItemBySkuCmd.Flags().StringP("region", "", "", "Region")
	PublicGetItemBySkuCmd.Flags().StringP("storeId", "", "", "Store id")
	PublicGetItemBySkuCmd.Flags().StringP("sku", "", "", "Sku")
	_ = PublicGetItemBySkuCmd.MarkFlagRequired("sku")
}

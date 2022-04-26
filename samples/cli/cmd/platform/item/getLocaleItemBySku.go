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

// GetLocaleItemBySkuCmd represents the GetLocaleItemBySku command
var GetLocaleItemBySkuCmd = &cobra.Command{
	Use:   "getLocaleItemBySku",
	Short: "Get locale item by sku",
	Long:  `Get locale item by sku`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sku, _ := cmd.Flags().GetString("sku")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		language, _ := cmd.Flags().GetString("language")
		populateBundle, _ := cmd.Flags().GetBool("populateBundle")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.GetLocaleItemBySkuParams{
			Namespace:      namespace,
			ActiveOnly:     &activeOnly,
			Language:       &language,
			PopulateBundle: &populateBundle,
			Region:         &region,
			StoreID:        &storeId,
			Sku:            sku,
		}
		ok, err := itemService.GetLocaleItemBySkuShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetLocaleItemBySkuCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetLocaleItemBySkuCmd.MarkFlagRequired("namespace")
	GetLocaleItemBySkuCmd.Flags().BoolP("activeOnly", "", false, "Active only")
	GetLocaleItemBySkuCmd.Flags().StringP("language", "", "", "Language")
	GetLocaleItemBySkuCmd.Flags().BoolP("populateBundle", "", false, "Populate bundle")
	GetLocaleItemBySkuCmd.Flags().StringP("region", "", "", "Region")
	GetLocaleItemBySkuCmd.Flags().StringP("storeId", "", "", "Store id")
	GetLocaleItemBySkuCmd.Flags().StringP("sku", "", "", "Sku")
	_ = GetLocaleItemBySkuCmd.MarkFlagRequired("sku")
}

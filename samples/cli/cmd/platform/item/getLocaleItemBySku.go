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

// getLocaleItemBySkuCmd represents the getLocaleItemBySku command
var getLocaleItemBySkuCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.GetLocaleItemBySku(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getLocaleItemBySkuCmd)
	getLocaleItemBySkuCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getLocaleItemBySkuCmd.MarkFlagRequired("namespace")
	getLocaleItemBySkuCmd.Flags().BoolP("activeOnly", "a", false, "Active only")
	getLocaleItemBySkuCmd.Flags().StringP("language", "l", " ", "Language")
	getLocaleItemBySkuCmd.Flags().BoolP("populateBundle", "p", false, "Populate bundle")
	getLocaleItemBySkuCmd.Flags().StringP("region", "r", " ", "Region")
	getLocaleItemBySkuCmd.Flags().StringP("storeId", "s", " ", "Store id")
	getLocaleItemBySkuCmd.Flags().StringP("sku", "s", " ", "Sku")
	_ = getLocaleItemBySkuCmd.MarkFlagRequired("sku")
}

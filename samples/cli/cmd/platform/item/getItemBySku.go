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

// getItemBySkuCmd represents the getItemBySku command
var getItemBySkuCmd = &cobra.Command{
	Use:   "getItemBySku",
	Short: "Get item by sku",
	Long:  `Get item by sku`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sku, _ := cmd.Flags().GetString("sku")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.GetItemBySkuParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			StoreID:    &storeId,
			Sku:        sku,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.GetItemBySku(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getItemBySkuCmd)
	getItemBySkuCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getItemBySkuCmd.MarkFlagRequired("namespace")
	getItemBySkuCmd.Flags().BoolP("activeOnly", "a", false, "Active only")
	getItemBySkuCmd.Flags().StringP("storeId", "s", " ", "Store id")
	getItemBySkuCmd.Flags().StringP("sku", "s", " ", "Sku")
	_ = getItemBySkuCmd.MarkFlagRequired("sku")
}

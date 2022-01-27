// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package item

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getItemIdBySkuCmd represents the getItemIdBySku command
var getItemIdBySkuCmd = &cobra.Command{
	Use:   "getItemIdBySku",
	Short: "Get item id by sku",
	Long:  `Get item id by sku`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sku, _ := cmd.Flags().GetString("sku")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.GetItemIDBySkuParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			StoreID:    &storeId,
			Sku:        sku,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.GetItemIDBySku(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getItemIdBySkuCmd)
	getItemIdBySkuCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getItemIdBySkuCmd.MarkFlagRequired("namespace")
	getItemIdBySkuCmd.Flags().BoolP("activeOnly", "ay", false, "Active only")
	getItemIdBySkuCmd.Flags().StringP("storeId", "sd", " ", "Store id")
	getItemIdBySkuCmd.Flags().StringP("sku", "su", " ", "Sku")
	_ = getItemIdBySkuCmd.MarkFlagRequired("sku")
}

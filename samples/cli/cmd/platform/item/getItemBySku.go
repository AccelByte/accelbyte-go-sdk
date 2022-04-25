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

// GetItemBySkuCmd represents the GetItemBySku command
var GetItemBySkuCmd = &cobra.Command{
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
		ok, err := itemService.GetItemBySkuShort(input, nil)
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
	GetItemBySkuCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetItemBySkuCmd.MarkFlagRequired("namespace")
	GetItemBySkuCmd.Flags().BoolP("activeOnly", "", false, "Active only")
	GetItemBySkuCmd.Flags().StringP("storeId", "", "", "Store id")
	GetItemBySkuCmd.Flags().StringP("sku", "", "", "Sku")
	_ = GetItemBySkuCmd.MarkFlagRequired("sku")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// GetBulkItemIdBySkusCmd represents the GetBulkItemIdBySkus command
var GetBulkItemIdBySkusCmd = &cobra.Command{
	Use:   "getBulkItemIdBySkus",
	Short: "Get bulk item id by skus",
	Long:  `Get bulk item id by skus`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		skuString := cmd.Flag("sku").Value.String()
		var sku []string
		errSku := json.Unmarshal([]byte(skuString), &sku)
		if errSku != nil {
			return errSku
		}
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.GetBulkItemIDBySkusParams{
			Namespace: namespace,
			Sku:       sku,
			StoreID:   &storeId,
		}
		ok, err := itemService.GetBulkItemIDBySkusShort(input)
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
	GetBulkItemIdBySkusCmd.Flags().String("namespace", "", "Namespace")
	_ = GetBulkItemIdBySkusCmd.MarkFlagRequired("namespace")
	GetBulkItemIdBySkusCmd.Flags().String("sku", "", "Sku")
	GetBulkItemIdBySkusCmd.Flags().String("storeId", "", "Store id")
}

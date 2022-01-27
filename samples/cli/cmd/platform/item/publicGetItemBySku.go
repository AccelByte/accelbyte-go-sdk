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

// publicGetItemBySkuCmd represents the publicGetItemBySku command
var publicGetItemBySkuCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetItemBySkuCmd)
	publicGetItemBySkuCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetItemBySkuCmd.MarkFlagRequired("namespace")
	publicGetItemBySkuCmd.Flags().StringP("language", "le", " ", "Language")
	publicGetItemBySkuCmd.Flags().StringP("region", "rn", " ", "Region")
	publicGetItemBySkuCmd.Flags().StringP("storeId", "sd", " ", "Store id")
	publicGetItemBySkuCmd.Flags().StringP("sku", "su", " ", "Sku")
	_ = publicGetItemBySkuCmd.MarkFlagRequired("sku")
}

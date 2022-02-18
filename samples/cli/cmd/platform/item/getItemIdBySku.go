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

// GetItemIdBySkuCmd represents the GetItemIdBySku command
var GetItemIdBySkuCmd = &cobra.Command{
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
	GetItemIdBySkuCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetItemIdBySkuCmd.MarkFlagRequired("namespace")
	GetItemIdBySkuCmd.Flags().BoolP("activeOnly", "", false, "Active only")
	GetItemIdBySkuCmd.Flags().StringP("storeId", "", "", "Store id")
	GetItemIdBySkuCmd.Flags().StringP("sku", "", "", "Sku")
	_ = GetItemIdBySkuCmd.MarkFlagRequired("sku")
}

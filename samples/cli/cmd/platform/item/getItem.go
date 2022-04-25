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

// GetItemCmd represents the GetItem command
var GetItemCmd = &cobra.Command{
	Use:   "getItem",
	Short: "Get item",
	Long:  `Get item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.GetItemParams{
			ItemID:     itemId,
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			StoreID:    &storeId,
		}
		ok, err := itemService.GetItemShort(input, nil)
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
	GetItemCmd.Flags().StringP("itemId", "", "", "Item id")
	_ = GetItemCmd.MarkFlagRequired("itemId")
	GetItemCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetItemCmd.MarkFlagRequired("namespace")
	GetItemCmd.Flags().BoolP("activeOnly", "", false, "Active only")
	GetItemCmd.Flags().StringP("storeId", "", "", "Store id")
}

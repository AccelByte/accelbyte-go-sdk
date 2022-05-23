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

// DisableItemCmd represents the DisableItem command
var DisableItemCmd = &cobra.Command{
	Use:   "disableItem",
	Short: "Disable item",
	Long:  `Disable item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.DisableItemParams{
			ItemID:    itemId,
			Namespace: namespace,
			StoreID:   storeId,
		}
		ok, err := itemService.DisableItemShort(input)
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
	DisableItemCmd.Flags().String("itemId", "", "Item id")
	_ = DisableItemCmd.MarkFlagRequired("itemId")
	DisableItemCmd.Flags().String("namespace", "", "Namespace")
	_ = DisableItemCmd.MarkFlagRequired("namespace")
	DisableItemCmd.Flags().String("storeId", "", "Store id")
	_ = DisableItemCmd.MarkFlagRequired("storeId")
}

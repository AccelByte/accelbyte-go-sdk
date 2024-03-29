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

// EnableItemCmd represents the EnableItem command
var EnableItemCmd = &cobra.Command{
	Use:   "enableItem",
	Short: "Enable item",
	Long:  `Enable item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.EnableItemParams{
			ItemID:    itemId,
			Namespace: namespace,
			StoreID:   storeId,
		}
		ok, errOK := itemService.EnableItemShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	EnableItemCmd.Flags().String("itemId", "", "Item id")
	_ = EnableItemCmd.MarkFlagRequired("itemId")
	EnableItemCmd.Flags().String("namespace", "", "Namespace")
	_ = EnableItemCmd.MarkFlagRequired("namespace")
	EnableItemCmd.Flags().String("storeId", "", "Store id")
	_ = EnableItemCmd.MarkFlagRequired("storeId")
}

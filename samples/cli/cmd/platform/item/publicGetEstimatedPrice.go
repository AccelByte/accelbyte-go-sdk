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

// PublicGetEstimatedPriceCmd represents the PublicGetEstimatedPrice command
var PublicGetEstimatedPriceCmd = &cobra.Command{
	Use:   "publicGetEstimatedPrice",
	Short: "Public get estimated price",
	Long:  `Public get estimated price`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		itemIds, _ := cmd.Flags().GetString("itemIds")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.PublicGetEstimatedPriceParams{
			Namespace: namespace,
			Region:    &region,
			StoreID:   &storeId,
			ItemIds:   itemIds,
		}
		ok, errOK := itemService.PublicGetEstimatedPriceShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetEstimatedPriceCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetEstimatedPriceCmd.MarkFlagRequired("namespace")
	PublicGetEstimatedPriceCmd.Flags().String("region", "", "Region")
	PublicGetEstimatedPriceCmd.Flags().String("storeId", "", "Store id")
	PublicGetEstimatedPriceCmd.Flags().String("itemIds", "", "Item ids")
	_ = PublicGetEstimatedPriceCmd.MarkFlagRequired("itemIds")
}

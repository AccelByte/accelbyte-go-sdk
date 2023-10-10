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

// GetEstimatedPriceCmd represents the GetEstimatedPrice command
var GetEstimatedPriceCmd = &cobra.Command{
	Use:   "getEstimatedPrice",
	Short: "Get estimated price",
	Long:  `Get estimated price`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		itemIds, _ := cmd.Flags().GetString("itemIds")
		userId, _ := cmd.Flags().GetString("userId")
		region, _ := cmd.Flags().GetString("region")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.GetEstimatedPriceParams{
			Namespace: namespace,
			Region:    &region,
			StoreID:   &storeId,
			ItemIds:   itemIds,
			UserID:    userId,
		}
		ok, errOK := itemService.GetEstimatedPriceShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetEstimatedPriceCmd.Flags().String("namespace", "", "Namespace")
	_ = GetEstimatedPriceCmd.MarkFlagRequired("namespace")
	GetEstimatedPriceCmd.Flags().String("region", "", "Region")
	GetEstimatedPriceCmd.Flags().String("storeId", "", "Store id")
	GetEstimatedPriceCmd.Flags().String("itemIds", "", "Item ids")
	_ = GetEstimatedPriceCmd.MarkFlagRequired("itemIds")
	GetEstimatedPriceCmd.Flags().String("userId", "", "User id")
	_ = GetEstimatedPriceCmd.MarkFlagRequired("userId")
}

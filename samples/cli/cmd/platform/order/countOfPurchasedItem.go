// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package order

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CountOfPurchasedItemCmd represents the CountOfPurchasedItem command
var CountOfPurchasedItemCmd = &cobra.Command{
	Use:   "countOfPurchasedItem",
	Short: "Count of purchased item",
	Long:  `Count of purchased item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		itemId, _ := cmd.Flags().GetString("itemId")
		input := &order.CountOfPurchasedItemParams{
			Namespace: namespace,
			UserID:    userId,
			ItemID:    itemId,
		}
		ok, errOK := orderService.CountOfPurchasedItemShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CountOfPurchasedItemCmd.Flags().String("namespace", "", "Namespace")
	_ = CountOfPurchasedItemCmd.MarkFlagRequired("namespace")
	CountOfPurchasedItemCmd.Flags().String("userId", "", "User id")
	_ = CountOfPurchasedItemCmd.MarkFlagRequired("userId")
	CountOfPurchasedItemCmd.Flags().String("itemId", "", "Item id")
	_ = CountOfPurchasedItemCmd.MarkFlagRequired("itemId")
}

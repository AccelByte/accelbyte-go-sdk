// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package order

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// countOfPurchasedItemCmd represents the countOfPurchasedItem command
var countOfPurchasedItemCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := orderService.CountOfPurchasedItem(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(countOfPurchasedItemCmd)
	countOfPurchasedItemCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = countOfPurchasedItemCmd.MarkFlagRequired("namespace")
	countOfPurchasedItemCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = countOfPurchasedItemCmd.MarkFlagRequired("userId")
	countOfPurchasedItemCmd.Flags().StringP("itemId", "id", " ", "Item id")
	_ = countOfPurchasedItemCmd.MarkFlagRequired("itemId")
}

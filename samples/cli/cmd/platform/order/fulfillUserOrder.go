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

// fulfillUserOrderCmd represents the fulfillUserOrder command
var fulfillUserOrderCmd = &cobra.Command{
	Use:   "fulfillUserOrder",
	Short: "Fulfill user order",
	Long:  `Fulfill user order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		userId, _ := cmd.Flags().GetString("userId")
		input := &order.FulfillUserOrderParams{
			Namespace: namespace,
			OrderNo:   orderNo,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := orderService.FulfillUserOrder(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(fulfillUserOrderCmd)
	fulfillUserOrderCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = fulfillUserOrderCmd.MarkFlagRequired("namespace")
	fulfillUserOrderCmd.Flags().StringP("orderNo", "oo", " ", "Order no")
	_ = fulfillUserOrderCmd.MarkFlagRequired("orderNo")
	fulfillUserOrderCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = fulfillUserOrderCmd.MarkFlagRequired("userId")
}

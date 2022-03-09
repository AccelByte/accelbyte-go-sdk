// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package order

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetOrderCmd represents the GetOrder command
var GetOrderCmd = &cobra.Command{
	Use:   "getOrder",
	Short: "Get order",
	Long:  `Get order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		input := &order.GetOrderParams{
			Namespace: namespace,
			OrderNo:   orderNo,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := orderService.GetOrder(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	GetOrderCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetOrderCmd.MarkFlagRequired("namespace")
	GetOrderCmd.Flags().StringP("orderNo", "", "", "Order no")
	_ = GetOrderCmd.MarkFlagRequired("orderNo")
}

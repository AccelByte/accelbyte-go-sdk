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

// FulfillUserOrderCmd represents the FulfillUserOrder command
var FulfillUserOrderCmd = &cobra.Command{
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
		ok, err := orderService.FulfillUserOrderShort(input, nil)
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
	FulfillUserOrderCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = FulfillUserOrderCmd.MarkFlagRequired("namespace")
	FulfillUserOrderCmd.Flags().StringP("orderNo", "", "", "Order no")
	_ = FulfillUserOrderCmd.MarkFlagRequired("orderNo")
	FulfillUserOrderCmd.Flags().StringP("userId", "", "", "User id")
	_ = FulfillUserOrderCmd.MarkFlagRequired("userId")
}

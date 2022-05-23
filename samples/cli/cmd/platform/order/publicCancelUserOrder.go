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

// PublicCancelUserOrderCmd represents the PublicCancelUserOrder command
var PublicCancelUserOrderCmd = &cobra.Command{
	Use:   "publicCancelUserOrder",
	Short: "Public cancel user order",
	Long:  `Public cancel user order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		userId, _ := cmd.Flags().GetString("userId")
		input := &order.PublicCancelUserOrderParams{
			Namespace: namespace,
			OrderNo:   orderNo,
			UserID:    userId,
		}
		ok, err := orderService.PublicCancelUserOrderShort(input)
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
	PublicCancelUserOrderCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCancelUserOrderCmd.MarkFlagRequired("namespace")
	PublicCancelUserOrderCmd.Flags().String("orderNo", "", "Order no")
	_ = PublicCancelUserOrderCmd.MarkFlagRequired("orderNo")
	PublicCancelUserOrderCmd.Flags().String("userId", "", "User id")
	_ = PublicCancelUserOrderCmd.MarkFlagRequired("userId")
}

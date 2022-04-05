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

// PublicGetUserOrderCmd represents the PublicGetUserOrder command
var PublicGetUserOrderCmd = &cobra.Command{
	Use:   "publicGetUserOrder",
	Short: "Public get user order",
	Long:  `Public get user order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		userId, _ := cmd.Flags().GetString("userId")
		input := &order.PublicGetUserOrderParams{
			Namespace: namespace,
			OrderNo:   orderNo,
			UserID:    userId,
		}
		ok, err := orderService.PublicGetUserOrderShort(input)
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
	PublicGetUserOrderCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetUserOrderCmd.MarkFlagRequired("namespace")
	PublicGetUserOrderCmd.Flags().StringP("orderNo", "", "", "Order no")
	_ = PublicGetUserOrderCmd.MarkFlagRequired("orderNo")
	PublicGetUserOrderCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGetUserOrderCmd.MarkFlagRequired("userId")
}

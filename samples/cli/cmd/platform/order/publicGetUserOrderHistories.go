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

// PublicGetUserOrderHistoriesCmd represents the PublicGetUserOrderHistories command
var PublicGetUserOrderHistoriesCmd = &cobra.Command{
	Use:   "publicGetUserOrderHistories",
	Short: "Public get user order histories",
	Long:  `Public get user order histories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		userId, _ := cmd.Flags().GetString("userId")
		input := &order.PublicGetUserOrderHistoriesParams{
			Namespace: namespace,
			OrderNo:   orderNo,
			UserID:    userId,
		}
		ok, err := orderService.PublicGetUserOrderHistoriesShort(input)
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
	PublicGetUserOrderHistoriesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetUserOrderHistoriesCmd.MarkFlagRequired("namespace")
	PublicGetUserOrderHistoriesCmd.Flags().StringP("orderNo", "", "", "Order no")
	_ = PublicGetUserOrderHistoriesCmd.MarkFlagRequired("orderNo")
	PublicGetUserOrderHistoriesCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGetUserOrderHistoriesCmd.MarkFlagRequired("userId")
}

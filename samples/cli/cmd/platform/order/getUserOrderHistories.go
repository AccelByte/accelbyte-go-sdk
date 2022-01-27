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

// GetUserOrderHistoriesCmd represents the GetUserOrderHistories command
var GetUserOrderHistoriesCmd = &cobra.Command{
	Use:   "GetUserOrderHistories",
	Short: "Get user order histories",
	Long:  `Get user order histories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		userId, _ := cmd.Flags().GetString("userId")
		input := &order.GetUserOrderHistoriesParams{
			Namespace: namespace,
			OrderNo:   orderNo,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := orderService.GetUserOrderHistories(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetUserOrderHistoriesCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetUserOrderHistoriesCmd.MarkFlagRequired("namespace")
	GetUserOrderHistoriesCmd.Flags().StringP("orderNo", "oo", " ", "Order no")
	_ = GetUserOrderHistoriesCmd.MarkFlagRequired("orderNo")
	GetUserOrderHistoriesCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = GetUserOrderHistoriesCmd.MarkFlagRequired("userId")
}

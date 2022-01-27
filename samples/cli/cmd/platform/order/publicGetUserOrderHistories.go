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

// publicGetUserOrderHistoriesCmd represents the publicGetUserOrderHistories command
var publicGetUserOrderHistoriesCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := orderService.PublicGetUserOrderHistories(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserOrderHistoriesCmd)
	publicGetUserOrderHistoriesCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetUserOrderHistoriesCmd.MarkFlagRequired("namespace")
	publicGetUserOrderHistoriesCmd.Flags().StringP("orderNo", "oo", " ", "Order no")
	_ = publicGetUserOrderHistoriesCmd.MarkFlagRequired("orderNo")
	publicGetUserOrderHistoriesCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicGetUserOrderHistoriesCmd.MarkFlagRequired("userId")
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetUserOrderCmd represents the publicGetUserOrder command
var publicGetUserOrderCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := orderService.PublicGetUserOrder(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserOrderCmd)
	publicGetUserOrderCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetUserOrderCmd.MarkFlagRequired("namespace")
	publicGetUserOrderCmd.Flags().StringP("orderNo", "o", " ", "Order no")
	_ = publicGetUserOrderCmd.MarkFlagRequired("orderNo")
	publicGetUserOrderCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicGetUserOrderCmd.MarkFlagRequired("userId")
}

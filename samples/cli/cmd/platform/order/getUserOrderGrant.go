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

// GetUserOrderGrantCmd represents the GetUserOrderGrant command
var GetUserOrderGrantCmd = &cobra.Command{
	Use:   "getUserOrderGrant",
	Short: "Get user order grant",
	Long:  `Get user order grant`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		userId, _ := cmd.Flags().GetString("userId")
		input := &order.GetUserOrderGrantParams{
			Namespace: namespace,
			OrderNo:   orderNo,
			UserID:    userId,
		}
		ok, errOK := orderService.GetUserOrderGrantShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserOrderGrantCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserOrderGrantCmd.MarkFlagRequired("namespace")
	GetUserOrderGrantCmd.Flags().String("orderNo", "", "Order no")
	_ = GetUserOrderGrantCmd.MarkFlagRequired("orderNo")
	GetUserOrderGrantCmd.Flags().String("userId", "", "User id")
	_ = GetUserOrderGrantCmd.MarkFlagRequired("userId")
}

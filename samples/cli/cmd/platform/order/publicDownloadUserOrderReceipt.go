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

// PublicDownloadUserOrderReceiptCmd represents the PublicDownloadUserOrderReceipt command
var PublicDownloadUserOrderReceiptCmd = &cobra.Command{
	Use:   "publicDownloadUserOrderReceipt",
	Short: "Public download user order receipt",
	Long:  `Public download user order receipt`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		userId, _ := cmd.Flags().GetString("userId")
		input := &order.PublicDownloadUserOrderReceiptParams{
			Namespace: namespace,
			OrderNo:   orderNo,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := orderService.PublicDownloadUserOrderReceipt(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	PublicDownloadUserOrderReceiptCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicDownloadUserOrderReceiptCmd.MarkFlagRequired("namespace")
	PublicDownloadUserOrderReceiptCmd.Flags().StringP("orderNo", "", "", "Order no")
	_ = PublicDownloadUserOrderReceiptCmd.MarkFlagRequired("orderNo")
	PublicDownloadUserOrderReceiptCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicDownloadUserOrderReceiptCmd.MarkFlagRequired("userId")
}

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

// DownloadUserOrderReceiptCmd represents the DownloadUserOrderReceipt command
var DownloadUserOrderReceiptCmd = &cobra.Command{
	Use:   "downloadUserOrderReceipt",
	Short: "Download user order receipt",
	Long:  `Download user order receipt`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		userId, _ := cmd.Flags().GetString("userId")
		input := &order.DownloadUserOrderReceiptParams{
			Namespace: namespace,
			OrderNo:   orderNo,
			UserID:    userId,
		}
		errInput := orderService.DownloadUserOrderReceiptShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DownloadUserOrderReceiptCmd.Flags().String("namespace", "", "Namespace")
	_ = DownloadUserOrderReceiptCmd.MarkFlagRequired("namespace")
	DownloadUserOrderReceiptCmd.Flags().String("orderNo", "", "Order no")
	_ = DownloadUserOrderReceiptCmd.MarkFlagRequired("orderNo")
	DownloadUserOrderReceiptCmd.Flags().String("userId", "", "User id")
	_ = DownloadUserOrderReceiptCmd.MarkFlagRequired("userId")
}

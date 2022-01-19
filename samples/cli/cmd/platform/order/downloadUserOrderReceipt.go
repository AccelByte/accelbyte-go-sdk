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

// downloadUserOrderReceiptCmd represents the downloadUserOrderReceipt command
var downloadUserOrderReceiptCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := orderService.DownloadUserOrderReceipt(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(downloadUserOrderReceiptCmd)
	downloadUserOrderReceiptCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = downloadUserOrderReceiptCmd.MarkFlagRequired("namespace")
	downloadUserOrderReceiptCmd.Flags().StringP("orderNo", "o", " ", "Order no")
	_ = downloadUserOrderReceiptCmd.MarkFlagRequired("orderNo")
	downloadUserOrderReceiptCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = downloadUserOrderReceiptCmd.MarkFlagRequired("userId")
}

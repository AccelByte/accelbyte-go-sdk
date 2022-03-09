// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package payment

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPaymentOrderCmd represents the GetPaymentOrder command
var GetPaymentOrderCmd = &cobra.Command{
	Use:   "getPaymentOrder",
	Short: "Get payment order",
	Long:  `Get payment order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentService := &platform.PaymentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		input := &payment.GetPaymentOrderParams{
			Namespace:      namespace,
			PaymentOrderNo: paymentOrderNo,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentService.GetPaymentOrder(input)
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
	GetPaymentOrderCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetPaymentOrderCmd.MarkFlagRequired("namespace")
	GetPaymentOrderCmd.Flags().StringP("paymentOrderNo", "", "", "Payment order no")
	_ = GetPaymentOrderCmd.MarkFlagRequired("paymentOrderNo")
}
